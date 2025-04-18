import 'package:ban_ao/models/t_shirt_model.dart';
import 'package:ban_ao/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


  final List<t_shirt> datas = [

    t_shirt(
      id: '1',
      name: 'NABNAG TEE - YELLOW',
      price: 395000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/not-bad-norr-gd-yellow-mt-1x1-compressed.jpg?v=1742023155630',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '2',
      name: 'NABNAG TEE - BLACK',
      price: 395000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/not-bad-norr-gd-black-mt-1x1-compressed.jpg?v=1742023147370',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '3',
      name: 'SM GOODIE TEE - WHITE',
      price: 395000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/goodietee-white-details-mt-1x1-compressed.jpg?v=1742291146770',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),

    t_shirt(
      id: '4',
      name: 'SM GOODIE TEE - BLACK',
      price: 400000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/goodietee-details-mt-1x1-compressed.jpg?v=1742291124390',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),

    t_shirt(
      id: '5',
      name: 'BINH TAY MARKET TEE - WHITE',
      price: 299000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/btt240125-front-white-compressed.jpg?v=1737787671613',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),

    t_shirt(
      id: '6',
      name: 'NEOPRENE CROSSBODY BAG',
      price: 450000,
      imageUrl: 'https://bizweb.dktcdn.net/thumb/large/100/318/614/products/sbag-mt-compressed.jpg',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),

    t_shirt(
      id: '7',
      name: 'I&O TEE - BLACK',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/i-o-black-4x5-4-compressed.jpg?v=1737689225030',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '8',
      name: 'ZIP POLO SHIRT - RED',
      price: 399000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-red-compressed.jpg?v=1735632595337',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '9',
      name: 'BUTTON NYLON PANTS',
      price: 569000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-1-compressed-2.jpg?v=1735288459303',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '10',
      name: 'KHAKI PANTS - CREAM',
      price: 484000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt3-compressed-1.jpg?v=1727680656370',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '11',
      name: 'DRAGON PRINTED SHIRTS - BLACK',
      price: 269000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-6-compressed-3.jpg?v=1709004305517',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '12',
      name: 'DRAGON PRINTED SHIRTS - BLUE',
      price:  269000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-7-compressed.jpg?v=1707300734840',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '13',
      name: 'MIXED BOXY RAGLAN TEE - CREAM/RED',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-4.jpg?v=1706071482793',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '14',
      name: 'LINE BOXY RAGLAN TEE - CREAM/RED',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-3.jpg?v=1705991697967',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '15',
      name: 'MIXED BOXY RAGLAN TEE - NAVY/CREAM',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/mt-navy-compressed.jpg?v=1696046787240',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '16',
      name: 'BLOCK TEE - TASMAN',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/block-tee-tasman-2-compressed.jpg?v=1673333989697',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '17',
      name: 'EMBROIDERED NOWSG SWEATSHORTS - BLACK',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/nowsg-sweatshorts-den-compressed.jpg?v=1670638317953',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '18',
      name: 'NOWSAIGON BRUSH TEE - GREEN',
      price: 284000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/brush-tee-green-1-compressed.jpg?v=1673334013057',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '19',
      name: 'EMBROIDERED UNI NOWSG HOODIE - BLACK',
      price: 349000,
      imageUrl: 'https://bizweb.dktcdn.net/100/318/614/products/7-8fdc7296-eb97-4028-971a-66a16a3dd59a.jpg?v=1659344373017',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),
    t_shirt(
      id: '20',
      name: 'CANVAS BACKPACK',
      price: 279000,
      imageUrl: 'https://bizweb.dktcdn.net/thumb/large/100/318/614/products/1-5fae5bee-a042-426b-b976-f8bbc0e201ac.jpg',
      description: 'My favorite outfit is a white button-up shirt paired with black trousers. The shirt is made of soft cotton, lightweight and breathable, with a classic collar and long sleeves that can be rolled up for a more casual look. The black trousers are slim-fit, made from stretchy fabric that provides comfort and ease of movement. Together, they create a clean, elegant style suitable for both formal and semi-formal occasions. I usually wear this outfit with black leather shoes and a silver watch to complete the look. Simple yet stylish, this outfit makes me feel confident and well-dressed every time.',
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nowsaigon",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Số lượng cột trong lưới
            crossAxisSpacing: 10.0, // Khoảng cách ngang giữa các phần tử
            mainAxisSpacing: 10.0, // Khoảng cách dọc giữa các phần tử
            childAspectRatio: 0.6, // Tỉ lệ chiều rộng và chiều cao của mỗi sản phẩm
          ),
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return CustomProductCard(
              data: datas[index],
            );
          },
        ),
      ),
      );
  }
}
