import 'package:ban_ao/models/t_shirt_model.dart';
import 'package:ban_ao/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class ViewDetailPage extends StatefulWidget {
  const ViewDetailPage({super.key, required this.data});

  final t_shirt data;

  @override
  State<ViewDetailPage> createState() => _ViewDetailPageState();
}

class _ViewDetailPageState extends State<ViewDetailPage> {

  final NumberFormat numberFormat = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: '', // Không hiện ký hiệu tiền tệ (₫)
    decimalDigits: 0, // Không có phần thập phân
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nowsaigon",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.data.imageUrl),
            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.data.name,
                              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${numberFormat.format(widget.data.price)}đ',
                              style: const TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 48,
                        height: 46,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add_shopping_cart, color: Colors.white, size: 17),
                          onPressed: () {
                            TshirtInCart newTshirt = TshirtInCart(
                              id: widget.data.id,
                              name: widget.data.name,
                              price: widget.data.price,
                              imageUrl: widget.data.imageUrl,
                              description: widget.data.description,
                            );
                            print("add to cart: ${newTshirt.name}");
                            Provider.of<CartProvider>(context, listen: false).addItem(newTshirt);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Đã thêm "${newTshirt.name}" vào giỏ hàng',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                                duration: Duration(seconds: 1),
                                backgroundColor: Colors.teal[400],
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: EdgeInsets.all(16),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),


                  const SizedBox(height: 8),

                  Text(
                      widget.data.description,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
