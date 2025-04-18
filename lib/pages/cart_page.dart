import 'package:ban_ao/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat = NumberFormat("#,###", "vi_VN");


    return Scaffold(
      appBar: AppBar(
        title: const Text("Giỏ hàng"),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          final cartItems = cartProvider.cartItems;
          // Kiểm tra xem tất cả sản phẩm đã được chọn chưa
          final allSelected = cartItems.isNotEmpty && cartItems.every((item) => item.isSelected);
          if (cartItems.isEmpty) {
            return const Center(
              child: Text("Giỏ hàng của bạn đang trống"),
            );
          }

          return Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nút "Chọn tất cả"
                    FilledButton(
                        onPressed: () {
                          if (allSelected) {
                            cartProvider.deselectAllItems(); // viết thêm hàm này trong CartProvider
                          } else {
                            cartProvider.selectAllItems();
                          }
                        },
                        child: Text(allSelected ? "Deselect All" : "Select All", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                        ),
                      ),
                    // Nút "Xóa tất cả"
                    IconButton(
                      onPressed: () {
                        cartProvider.removeSelectedItems();
                      },
                      icon: const Icon(Icons.delete),
                      color: Colors.teal,
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartItems[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: ListTile(
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              activeColor: Colors.teal,
                              value: item.isSelected,
                              onChanged: (bool? value) {
                                // Cập nhật trạng thái của mục giỏ hàng
                                cartProvider.toggleItemSelection(item);
                              },
                            ),
                            const SizedBox(width: 4),
                            Image.network(
                              item.imageUrl,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        title: Text(
                          item.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${currencyFormat.format(item.price)}đ",
                              style: const TextStyle(fontSize: 14),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () => cartProvider.decreaseQuantity(item),
                                  icon: const Icon(Icons.remove_circle_outline),
                                  color: Colors.teal,
                                ),
                                const SizedBox(width: 5),
                                SizedBox(
                                  width: 28, // Chiều rộng cố định cho phần số lượng
                                  child: Center(
                                    child: Text(
                                      '${item.quantity}',
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                IconButton(
                                  onPressed: () => cartProvider.increaseQuantity(item),
                                  icon: const Icon(Icons.add_circle_outline),
                                  color: Colors.teal,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total: ${currencyFormat.format(cartProvider.totalPrice)}đ",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // Xử lý đặt hàng
                      },
                      child: const Text(
                        "Pay",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
