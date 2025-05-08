import 'package:ban_ao/models/t_shirt_model.dart';
import 'package:ban_ao/pages/view_detail_page.dart';
import 'package:ban_ao/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CustomProductCard extends StatefulWidget {
  CustomProductCard({super.key, required this.data});

  final t_shirt data;

  @override
  State<CustomProductCard> createState() => _CustomProductCardState();
}

class _CustomProductCardState extends State<CustomProductCard> {
  final NumberFormat numberFormat = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: '', // Không hiện ký hiệu tiền tệ (₫)
    decimalDigits: 0, // Không có phần thập phân
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16), // Bo góc cho toàn bộ card
      child: Card(
        elevation: 4, // shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Color(0xFFF8F4FC), // Màu nền nhẹ
        child: Column(
          mainAxisSize: MainAxisSize.min, // Đây là thay đổi quan trọng, giúp Card ôm theo nội dung
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ảnh sản phẩm với bo góc trên
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                widget.data.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.name,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    '${numberFormat.format(widget.data.price)}đ',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 3,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ViewDetailPage(data: widget.data),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            side: BorderSide(color: Colors.teal),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                          ),
                          child: Text(
                            "View Detail",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 43,
                        height: 41,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add_shopping_cart,
                              color: Colors.white, size: 17),
                          onPressed: () {
                            TshirtInCart newTshirt = TshirtInCart(
                              id: widget.data.id,
                              name: widget.data.name,
                              price: widget.data.price,
                              imageUrl: widget.data.imageUrl,
                              description: widget.data.description,
                            );
                            print("add to cart: ${newTshirt.name}");
                            Provider.of<CartProvider>(context, listen: false)
                                .addItem(newTshirt);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Đã thêm "${newTshirt.name}" vào giỏ hàng',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400),
                                ),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
