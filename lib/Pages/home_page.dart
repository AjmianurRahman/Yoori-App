import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Product> products = [
    Product(
        name: 'Body Lotion', price: 80, image: 'assets/lotion.png', rating: 4.8),
    Product(
        name: 'Moisturizer', price: 50, image: 'assets/moistur.png', rating: 4.8),
    Product(
        name: 'Clutch Bag', price: 280, image: 'assets/clutch.png', rating: 4.8),
    Product(
        name: 'Makeup Brush Set',
        price: 200,
        image: 'assets/makeup.png',
        rating: 4.8),
    Product(
        name: 'Sneakers', price: 150, image: 'assets/shoe.png', rating: 4.8),
    Product(name: 'Backpack', price: 50, image: 'assets/baggy.png', rating: 4.8),
  ];

  @override
  Widget build(BuildContext context) {
    Color basecolr = Color(0xFFF62F2F);
    Color yollow = Color(0xFFFEBD0D);
    Color redx = Color(0xFFFE0D0D);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'assets/logo.png',
            height: 30,
          ),
          // Add your logo here
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // New Arrivals Section
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/banner.jpg'),
                    fit: BoxFit.cover, // Adjust the image fit as needed
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.28,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'NEW ARRIVALS',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'STYLISH & ',
                                  style: TextStyle(
                                      fontFamily: 'FontMain',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'SMART',
                                  style: TextStyle(
                                      fontFamily: 'FontMain',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: yollow),
                                ),
                              ],
                            ),
                            Text(
                              'SUNGLASSES',
                              style: TextStyle(
                                fontFamily: 'FontBold',
                                  fontSize: 18,

                                  color: Colors.black),
                            ),
                            SizedBox(height: 16),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
                                child: Row(
                                  children: [
                                    Text(
                                      'Shop Now',
                                      style: TextStyle( fontFamily: 'FontMain',color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: yollow,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 26,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 26,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 26,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 26,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Popular Categories Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Popular Categories',
                  style: TextStyle(
                    fontFamily: 'FontBold',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
              height: 104,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryItem(image: 'assets/women.png', label: 'Women'),
                    CategoryItem(image: 'assets/curve.png', label: 'Curve'),
                    CategoryItem(image: 'assets/kids.png', label: 'Kids'),
                    CategoryItem(
                        image: 'assets/beauty.png', label: 'Beauty & Health'),
                    CategoryItem(image: 'assets/winter.png', label: 'Winter'),
                    CategoryItem(image: 'assets/sports.png', label: 'Men'),
                    CategoryItem(image: 'assets/women.png', label: 'Women'),
                    CategoryItem(image: 'assets/curve.png', label: 'Curve'),
                    CategoryItem(image: 'assets/kids.png', label: 'Kids'),
                    CategoryItem(
                        image: 'assets/beauty.png', label: 'Beauty & Health'),
                  ],
                ),
              ),
              Container(

                height: 104,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryItem(image: 'assets/man.png', label: 'Man'),
                    CategoryItem(image: 'assets/dresses.png', label: 'Dresses'),
                    CategoryItem(image: 'assets/tops.png', label: 'Tops'),
                    CategoryItem(
                        image: 'assets/juelry.png', label: 'Accessories Jewelry'),
                    CategoryItem(image: 'assets/sports.png', label: 'Sports Wear'),
                    CategoryItem(image: 'assets/tops.png', label: 'Men'),
                    CategoryItem(image: 'assets/dresses.png', label: 'Dresses'),
                    CategoryItem(image: 'assets/curve.png', label: 'Tops'),
                    CategoryItem(
                        image: 'assets/tops.png', label: 'Accessories'),
                    CategoryItem(
                        image: 'assets/curve.png', label: 'Sports Wear'),
                  ],
                ),
              ),
              // Campaign Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Campaign',
                      style: TextStyle(
                        fontFamily: 'FontBold',
                        fontSize: 20,

                      ),
                    ),
                    Row(
                      children: [
                        Text('View more', style: TextStyle(fontFamily: 'FontMain',),),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    )
                  ],
                ),
              ),

              Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CampaignItem(
                      image: 'assets/camp1.png',
                      discount: '30% OFF',
                      label: 'Sound and Music',
                      time: '07d 05h 08m 11s',
                    ),
                    CampaignItem(
                      image: 'assets/camp2.png',
                      discount: '10% OFF',
                      label: 'Digital Gadgets',
                      time: '05d 04h 11m 11s',
                    ),
                    CampaignItem(
                      image: 'assets/camp3.png',
                      discount: '29% OFF',
                      label: 'Laptop & Computer',
                      time: '02d 10h 30m 03s',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),

              //! preorder
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pre Order',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'FontBold',
                      ),
                    ),
                    Row(
                      children: [
                        Text('View more', style: TextStyle(fontFamily: 'FontMain')),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PreOrder(
                        image: 'assets/pre1.png',
                        price: 'dokfjo',
                        label: 'jkk',
                        time: 'dnfjksn'),
                    PreOrder(
                        image: 'assets/pre2.png',
                        price: 'dokfjo',
                        label: 'jkk',
                        time: 'dnfjksn'),
                    PreOrder(
                        image: 'assets/pre3.png',
                        price: 'dokfjo',
                        label: 'jkk',
                        time: 'dnfjksn'),
                  ],
                ),
              ),

              //!Flash
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontFamily: 'FontBold',
                        fontSize: 20,

                      ),
                    ),
                    Row(
                      children: [
                        Text('View more', style: TextStyle(fontFamily: 'FontMain'),),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PreOrder(
                        image: 'assets/flash1.png',
                        price: 'dokfjo',
                        label: 'jkk',
                        time: 'dnfjksn'),
                    PreOrder(
                        image: 'assets/flash2.png',
                        price: 'dokfjo',
                        label: 'jkk',
                        time: 'dnfjksn'),
                    PreOrder(
                        image: 'assets/flash3.png',
                        price: 'dokfjo',
                        label: 'jkk',
                        time: 'dnfjksn'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Just for you',
                      style: TextStyle(
                        fontFamily: 'FontBold',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('View more', style: TextStyle(fontFamily: 'FontMain'),),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        mainAxisExtent: 260),
                    itemCount: products.length,
                    itemBuilder: (_, index) {
                      return ProductCard(product: products[index]);
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: ImageIcon(
                  AssetImage(
                    'assets/home.png',
                  ),
                  size: 18,
                  color: basecolr,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: ImageIcon(
                  AssetImage(
                    'assets/category.png',
                  ),
                  size: 18,
                  color: basecolr,
                ),
              ),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: ImageIcon(
                  AssetImage(
                    'assets/message.png',
                  ),
                  size: 18,
                  color: basecolr,
                ),
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: ImageIcon(
                  AssetImage(
                    'assets/cart.png',
                  ),
                  size: 18,
                  color: basecolr,
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: ImageIcon(
                  AssetImage(
                    'assets/person.png',
                  ),
                  size: 18,
                  color: basecolr,
                ),
              ),
              label: 'Account',
            ),
          ],
          unselectedLabelStyle: TextStyle(fontFamily:'FontMain',color: Colors.black, fontSize: 12),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontFamily:'FontMain',color: Colors.black, fontSize: 12),
          selectedFontSize: 12,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String label;

  CategoryItem({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: 4),
          SizedBox(width:64 ,
              child: Text(label, style: TextStyle(fontFamily: 'FontMain',fontSize: 12,),textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
}

class CampaignItem extends StatelessWidget {
  final String image;
  final String discount;
  final String label;
  final String time;

  CampaignItem({
    required this.image,
    required this.discount,
    required this.label,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), topRight: Radius.circular(4)),
              child: Stack(children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill,
                  height: 140,
                  width: 150,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TimerBox(label: '07d'),
                      TimerBox(label: '05h'),
                      TimerBox(label: '08m'),
                      TimerBox(label: '11s'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TimerBox extends StatelessWidget {
  final String label;

  TimerBox({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(fontFamily: 'FontMain',color: Colors.white, fontSize: 12),
      ),
    );
  }
}

class PreOrder extends StatelessWidget {
  final String image;
  final String price;
  final String label;
  final String time;

  PreOrder({
    required this.image,
    required this.price,
    required this.label,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    image, // Replace with your image URL
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.black, size: 18,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.1,
                  left: 0.1,
                  right: 0.1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        // Semi-transparent background color
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TimerBox(label: "07d"),
                            TimerBox(label: "05h"),
                            TimerBox(label: "08m"),
                            TimerBox(label: "11s"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Iphone 14 Pro max',
              style: TextStyle(
                fontFamily: 'FontMain',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '\$1,599',
              style: TextStyle(
                fontFamily: 'FontBold',
                fontSize: 14,
                color: Colors.red.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final int price;
  final String image;
  final double rating;

  Product(
      {required this.name,
      required this.price,
      required this.image,
      required this.rating});
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    Color red = Color(0xFFFE0D0D);
    return Container(
      height: 300,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        elevation: 3,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(2)),
                    child: Image.asset(
                      product.image,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.black, size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4,bottom: 8, left: 8 ,right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style:
                          TextStyle( fontFamily: 'FontMain',fontSize: 14, fontWeight: FontWeight.w400),
                    ),

                    Text(
                      '\$${product.price}',
                      style: TextStyle(
                        fontFamily: 'FontBold',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: red),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.black, size: 14),
                        Icon(Icons.star, color: Colors.black, size: 14),
                        Icon(Icons.star, color: Colors.black, size: 14),
                        Icon(Icons.star, color: Colors.black, size: 14),
                        Icon(Icons.star_half, color: Colors.black, size: 14),
                        SizedBox(width: 4),
                        Text('${product.rating}',
                            style: TextStyle(fontFamily:'FontMain',fontSize: 12, color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
