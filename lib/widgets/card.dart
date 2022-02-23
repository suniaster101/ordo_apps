import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: prefer_const_constructors

@immutable
class CustomCard extends StatefulWidget {
  final Map<String, dynamic> productData;
  final int index;
  // ignore: use_key_in_widget_constructors
  const CustomCard({required this.productData, required this.index});
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(-1, 1),
            ),
          ],
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      color: HexColor(widget.productData['color'].toString()),
                    ),
                    child: AspectRatio(
                      aspectRatio: 334.34 / 295.68,
                      child: Hero(
                        tag: 'hero-' + widget.index.toString(),
                        child: Image(
                            image: AssetImage('assets/images/' +
                                widget.productData['picture'].toString())),
                      ),
                    ),
                  ),
                  Container(
                      width: 72,
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(-1, 0),
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(20.0)),
                        color: HexColor('#DFAE1D'),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 9,
                          ),
                          Text(
                            '5.0 | 200+ rating',
                            style: GoogleFonts.poppins(
                              fontSize: 6,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          "Rp 6000",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: HexColor('#8ab8f6'),
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          "Rp 4500",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: HexColor('#3c7dd9'),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        color: HexColor('#3C7DD9'),
                      ),
                      child: Text(
                        'Diskon 10%',
                        style: GoogleFonts.poppins(
                            fontSize: 6,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  "Lorem ipsum",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ]));
  }
}
