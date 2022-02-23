import 'package:flutter/material.dart';
import 'package:ordo_apps/widgets/product_carousel.dart';
import 'package:ordo_apps/screens/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: prefer_const_constructors

class ProductDetails extends StatelessWidget {
  final String picture;
  final int index;
  const ProductDetails({Key? key, required this.picture, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Ink(
                width: 27,
                padding: EdgeInsets.zero,
                height: 27,
                decoration: ShapeDecoration(
                  color: Color(0xff64a1f4),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  padding: EdgeInsets.all(2),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 18,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  'PRODUK DETAIL',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff64a1f4),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Ink(
                width: 45,
                height: 45,
                padding: EdgeInsets.zero,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.shopping_bag),
                  color: Color(0xff64A1F4),
                  padding: EdgeInsets.all(2),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                ),
              ),
              Ink(
                width: 45,
                height: 45,
                padding: EdgeInsets.zero,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  color: Color(0xffFF485A),
                  padding: EdgeInsets.all(2),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Color(0xfffcf8f8),
        ),
        body: Container(
          color: Color(0xfffcf8f8),
          child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 0),
                    child: Hero(
                      tag: 'hero-' + index.toString(),
                      child: ProductCarousel(picture),
                    )),
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(55.0)),
                        color: Color(0xffFF485A),
                      ),
                      height: 100.0,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50.0)),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(top: 38),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tas Gucci",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color(0xff47623F),
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 9),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      color: Color(0xffDFAE1D),
                                    ),
                                    child: Text(
                                      'Barang Bekas',
                                      style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 9),
                                    margin: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      color: Color(0xff64A1F4),
                                    ),
                                    child: Text(
                                      'Stok 100',
                                      style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rp 126.000",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff64a1f4),
                                        decoration: TextDecoration.lineThrough,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    "Rp 100.500",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Color(0xff3c7dd9),
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 6),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: Color(0xff3c7dd9),
                                ),
                                child: Text(
                                  'Diskon 100%',
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 0,
                              endIndent: 0,
                              color: Colors.blueGrey.withOpacity(0.2),
                            ),
                          ),
                          Text(
                            "Vendor",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xff47623F),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/My profile pic 1.png'),
                                        ),
                                      ),
                                      Text(
                                        "Eiger Store",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 30),
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff64a1f4),
                                          size: 16,
                                        ),
                                        Text(' 5.0 ',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff64a1f4))),
                                        Text('| 200 Terjual',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff64a1f4))),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Deskripsi",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xff47623F),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xff47623F),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, bottom: 10),
                            child: Text(
                              "Ulasan dan Penilaian",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xff47623F),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blueGrey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 15),
                                                child: CircleAvatar(
                                                  radius: 16.0,
                                                  backgroundImage: AssetImage(
                                                    'assets/images/Ellipse 2.png',
                                                  ),
                                                )),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Maude Hall",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "14 min",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 10,
                                                    color: Color(0xffB4BBC6),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Wrap(
                                            crossAxisAlignment:
                                                WrapCrossAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFA4A0C),
                                                size: 15,
                                              ),
                                              Text(' 5.0',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 7),
                                      child: Text(
                                        "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                                        style: GoogleFonts.inter(
                                          fontSize: 11,
                                          color: Colors.black.withOpacity(0.8),
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blueGrey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 15),
                                                child: CircleAvatar(
                                                  radius: 16.0,
                                                  backgroundImage: AssetImage(
                                                    'assets/images/Ellipse 3.png',
                                                  ),
                                                )),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Ester Howard",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  "14 min",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 10,
                                                    color: Color(0xffB4BBC6),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Wrap(
                                            crossAxisAlignment:
                                                WrapCrossAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFA4A0C),
                                                size: 15,
                                              ),
                                              Text(' 5.0',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 7),
                                      child: Text(
                                        "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                                        style: GoogleFonts.inter(
                                          fontSize: 11,
                                          color: Colors.black.withOpacity(0.8),
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
