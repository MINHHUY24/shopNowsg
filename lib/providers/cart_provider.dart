import 'dart:convert';

import 'package:ban_ao/models/t_shirt_model.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
  final List<TshirtInCart> _cartItems = [];

  List<TshirtInCart> get cartItems => _cartItems;

  CartProvider() {
   _loadCart();
  }


  void addItem(TshirtInCart item) {
    final existingItem = _cartItems.firstWhere(
          (element) => element.id == item.id,
      orElse: () => TshirtInCart.defaultConstructor(),
    );
    if (existingItem.id == item.id) {
      existingItem.quantity++;
    } else {
      _cartItems.add(item);
    }
    _saveCart();
    notifyListeners();
  }

  void _saveCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = jsonEncode(_cartItems.map((item) => item.toJson()).toList());
    await prefs.setString('cart', cartData);
  }


  void removeItem(TshirtInCart item) {
    _cartItems.removeWhere((element) => element.id == item.id);
    _saveCart();
    notifyListeners();
  }

  void updateItemQuantity(TshirtInCart item, int quantity) {
    int index = _cartItems.indexWhere((element) => element.id == item.id);
    if (index != -1 && quantity > 0) {
      _cartItems[index].quantity = quantity;
    } else if (quantity == 0) {
      _cartItems.removeAt(index);
    }
    _saveCart();
    notifyListeners();
  }

  void increaseQuantity(TshirtInCart item) {
    final index = _cartItems.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      _cartItems[index].quantity++;
      notifyListeners();
    }
    _saveCart();
  }

  void decreaseQuantity(TshirtInCart item) {
    final index = _cartItems.indexWhere((element) => element.id == item.id);
    if (index != -1 && _cartItems[index].quantity > 1) {
      _cartItems[index].quantity--;
      notifyListeners();
    } else if (index != -1 && _cartItems[index].quantity == 1) {
      _cartItems.removeAt(index);
      notifyListeners();
    }
    _saveCart();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  double get totalPrice {
    return _cartItems
    .where((item) => item.isSelected)
        .fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  void _loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartString = prefs.getString('cart');
    if (cartString != null) {
      final List<TshirtInCart> cartData = (jsonDecode(cartString) as List)
          .map((item) => TshirtInCart.fromJson(item))
          .toList();
      _cartItems.addAll(cartData);
      notifyListeners();
    }
  }

  // Đánh dấu chọn/bỏ chọn một sản phẩm
  void toggleItemSelection(TshirtInCart item) {
    final index = _cartItems.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      _cartItems[index].isSelected = !_cartItems[index].isSelected;
      notifyListeners();
      _saveCart();
    }
  }

// Xóa tất cả các sản phẩm đã chọn
  void removeSelectedItems() {
    _cartItems.removeWhere((item) => item.isSelected);
    notifyListeners();
    _saveCart();
  }

  // Chọn tất cả các sản phẩm trong giỏ
  void selectAllItems() {
    for (var item in _cartItems) {
      item.isSelected = true;
    }
    notifyListeners();
    _saveCart();
  }

  // Bỏ chọn tất cả các sản phẩm trong giỏ
  void deselectAllItems() {
    for (var item in _cartItems) {
      item.isSelected = false;
    }
    notifyListeners();
  }


}
