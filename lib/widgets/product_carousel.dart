import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// ignore_for_file: prefer_const_constructors

class ProductCarousel extends StatefulWidget {
  final String picture;
  const ProductCarousel(this.picture, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ProductCarouselState();
  }
}

class ProductCarouselState extends State<ProductCarousel> {
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
            enlargeCenterPage: true,
            height: 200,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentPos = index;
              });
            }),
        itemBuilder: (context, index, _) {
          return Image.asset(
            'assets/images/' + widget.picture,
            fit: BoxFit.fitHeight,
          );
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [0, 1, 2].map((index) {
          return AnimatedContainer(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            width: currentPos == index
                ? 25
                : (currentPos - index).abs() == 2
                    ? 42.5
                    : 25,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              color:
                  currentPos == index ? Color(0xff64A1F4) : Color(0xff3C7DD9),
            ),
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          );
        }).toList(),
      ),
    ]));
  }
}
