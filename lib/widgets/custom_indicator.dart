import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// ignore_for_file: prefer_const_constructors

class CustomIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomIndicatorState();
  }
}

class CustomIndicatorState extends State<CustomIndicator> {
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider.builder(
          itemCount: 3,
          options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 1,
              aspectRatio: 2 / 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPos = index;
                });
              }),
          itemBuilder: (context, index, _) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/image 15.png')),
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
              child: AspectRatio(
                aspectRatio: 2 / 1,
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2].map((index) {
            return AnimatedContainer(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              width: currentPos == index ? 25 : 34.8,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color:
                    currentPos == index ? Color(0xff64A1F4) : Color(0xff3C7DD9),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
            );
          }).toList(),
        ),
      ])),
    );
  }
}

class ProductCarousel extends StatefulWidget {
  final String picture;
  const ProductCarousel(this.picture);
  @override
  State<StatefulWidget> createState() {
    return ProductCarouselState();
  }
}

class ProductCarouselState extends State<ProductCarousel> {
  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
            return Container(
              child: Image.asset(
                'assets/images/' + widget.picture,
                fit: BoxFit.fitHeight,
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2].map((index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              width: currentPos == index
                  ? 25
                  : (currentPos - index).abs() == 2
                      ? 45
                      : 25,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color:
                    currentPos == index ? Color(0xff64A1F4) : Color(0xff3C7DD9),
              ),
            );
          }).toList(),
        ),
      ])),
    );
  }
}
