import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static final TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Assignment',
      style: optionStyle,
    ),
    Text(
      'Swap',
      style: optionStyle,
    ),
    Home(),
    Text(
      'Assesment',
      style: optionStyle,
    ),
    // CustomIndicator()
    Text(
      'Person',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Assignment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: 'Swap',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: 'Assesment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: HexColor('#47623F'),
          unselectedItemColor: HexColor('#C6C4C4'),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class Cart extends StatelessWidget {
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
                color: HexColor('#64a1f4'),
                shape: CircleBorder(),
              ),
              child: IconButton(
                padding: EdgeInsets.all(2),
                icon: const Icon(Icons.arrow_back),
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
                'Checkout',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: HexColor('#64a1f4'),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: HexColor('#fcf8f8'),
      ),
      body: Container(
        color: HexColor('#fcf8f8'),
        child: ListView(children: <Widget>[
          Slidable(
            key: const ValueKey(0),
            endActionPane: ActionPane(
              extentRatio: 1 / 4,
              motion: ScrollMotion(),
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: HexColor('#fcf8f8'),
                            padding: EdgeInsets.only(top: 50, left: 12),
                            child: Material(
                              color: HexColor('#fcf8f8'),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  color: HexColor('#64A1F4'),
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon:
                                      const Icon(Icons.delete_outline_outlined),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ]))
              ],
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(-1, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset:
                                  Offset(2, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image:
                                    AssetImage('assets/images/image 11.png')),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Text(
                                      "Tas Gucci",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black.withOpacity(0.7),
                                          fontWeight: FontWeight.w600),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Text(
                                      "Rp 75.000",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: HexColor('#64A1F4'),
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          )),
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: HexColor('#3C7DD9'),
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(width: 7),
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(width: 4),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: HexColor('#64A1F4'),
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.create,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Catatan',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(width: 4),
                                ],
                              ),
                            ),
                          ]))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 15, left: 15, right: 15, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Catatan Item",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.top,
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          hintText: 'Ketik disini...',
                          contentPadding: new EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey.shade100, width: 1.0),
                          ),
                          hintStyle: TextStyle(color: Colors.blueGrey.shade100),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Slidable(
            key: const ValueKey(0),
            endActionPane: ActionPane(
              extentRatio: 1 / 4,
              motion: ScrollMotion(),
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: HexColor('#fcf8f8'),
                            padding: EdgeInsets.only(top: 50, left: 12),
                            child: Material(
                              color: HexColor('#fcf8f8'),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  color: HexColor('#64A1F4'),
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon:
                                      const Icon(Icons.delete_outline_outlined),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ]))
              ],
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(-1, 10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset:
                                  Offset(2, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image:
                                    AssetImage('assets/images/image 13.png')),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Text(
                                      "Tas Eiger",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black.withOpacity(0.7),
                                          fontWeight: FontWeight.w600),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Text(
                                      "Rp 75.000",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: HexColor('#64A1F4'),
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          )),
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: HexColor('#64A1F4'),
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(width: 7),
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(width: 4),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: HexColor('#3C7DD9'),
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.delete_sweep,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Hapus Catatan',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(width: 4),
                                ],
                              ),
                            ),
                          ]))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 15, left: 15, right: 15, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Catatan Item",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: 2,
                        controller: new TextEditingController(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'),
                        textAlignVertical: TextAlignVertical.top,
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          hintText: 'Ketik disini...',
                          contentPadding: new EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey.shade100, width: 1.0),
                          ),
                          hintStyle: TextStyle(color: Colors.blueGrey.shade100),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.only(
                      bottom: 15, left: 15, right: 15, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 0),
                        child: Text(
                          "Catatan Pesanan",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.multiline,
                        minLines: 3,
                        maxLines: 3,
                        textAlignVertical: TextAlignVertical.top,
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: 'Ketik disini...',
                          contentPadding: new EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey.shade100, width: 1.0),
                          ),
                          hintStyle: TextStyle(color: Colors.blueGrey.shade100),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Pembayaran",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tas Gucci",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "(Qty. 1)",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Rp 75.000",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tas Eiger",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "(Qty. 1)",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Rp 75.000",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ongkos Kirim",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Rp 10.000",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub Total",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Rp 450.000",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: HexColor('#3C7DD9'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              minimumSize: Size.zero,
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Waktu Pengantaran',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: HexColor('#3C7DD9'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              minimumSize: Size.zero,
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Alamat Pengiriman',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 10, right: 10),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: HexColor('#3C7DD9'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              minimumSize: Size.zero,
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Bayar Sekarang',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ))
              ]))
        ]),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final list_of_items = [
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 4.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 5.png',
      'color': '#64A1F4'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 6.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 7.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 14.png',
      'color': '#dfae1d'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 13.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 12.png',
      'color': '#e1f3d9'
    },
    {
      'name': 'Lorem ipsum',
      'price': 6000,
      'dicounted_price': 4500,
      'discount': 10,
      'rating': 5,
      'rate_count': 200,
      'picture': 'image 11.png',
      'color': '#e1f3d9'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: HexColor('#F0F0F0'),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: HexColor('#526430'),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      new Flexible(
                          child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Cari dengan mengetik barang',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: 12),
                          // filled: true,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 3, bottom: 5),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: HexColor('#64A1F4'),
                ),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/options.png'),
                      width: 18,
                      height: 18,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: HexColor('#DFAE1D'),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                      size: 22,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: HexColor('#FF485A'),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 22,
                    ),
                  ],
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: HexColor('#fcf8f8'),
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Column(children: <Widget>[
                CustomIndicator(),
                Container(
                    padding: const EdgeInsets.all(10),
                    color: HexColor('#fcf8f8'),
                    child: new StaggeredGridView.countBuilder(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: list_of_items.length,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        child: Container(
                            constraints: BoxConstraints(
                              maxHeight: double.infinity,
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(-1, 1),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.0)),
                                          color: HexColor(list_of_items[index]
                                                  ['color']
                                              .toString()),
                                        ),
                                        child: AspectRatio(
                                          aspectRatio: 334.34 / 295.68,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/images/' +
                                                      list_of_items[index]
                                                              ['picture']
                                                          .toString())),
                                        ),
                                      ),
                                      Container(
                                          width: 75,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blueGrey
                                                    .withOpacity(0.1),
                                                spreadRadius: 2,
                                                blurRadius: 2,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                                topLeft: Radius.circular(20.0)),
                                            color: HexColor('#DFAE1D'),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 9,
                                              ),
                                              Text(
                                                '5.0 | 200+ rating',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 7,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Text(
                                              "Rp 6000",
                                              style: GoogleFonts.inter(
                                                fontSize: 10,
                                                color: HexColor('#8ab8f6'),
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                            Text(
                                              "Rp 4500",
                                              style: GoogleFonts.inter(
                                                fontSize: 11,
                                                color: HexColor('#3c7dd9'),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 6),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0)),
                                            color: HexColor('#3C7DD9'),
                                          ),
                                          child: Text(
                                            'Diskon 10%',
                                            style: GoogleFonts.poppins(
                                                fontSize: 8,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4),
                                    child: Text(
                                      "Lorem ipsum",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ])),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                      picture: list_of_items[index]['picture']
                                          .toString())));
                        },
                      ),
                      staggeredTileBuilder: (int index) =>
                          new StaggeredTile.fit(2),
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                    ))
              ])
            ]));
  }
}

class ProductDetails extends StatelessWidget {
  // In the constructor, require a Todo.
  const ProductDetails({Key? key, required this.picture}) : super(key: key);

  // Declare a field that holds the Todo.
  final String picture;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
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
                  color: HexColor('#64a1f4'),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  padding: EdgeInsets.all(2),
                  icon: const Icon(Icons.arrow_back),
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
                      color: HexColor('#64a1f4'),
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
                  color: HexColor('#64A1F4'),
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
                  color: HexColor('#FF485A'),
                  padding: EdgeInsets.all(2),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: HexColor('#fcf8f8'),
        ),
        body: Container(
          color: HexColor('#fcf8f8'),
          child: ListView(scrollDirection: Axis.vertical, shrinkWrap: true,
              // padding: const EdgeInsets.all(20),
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ProductCarousel(picture),
                  )
                ]),
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(55.0)),
                        color: HexColor('#FF485A'),
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
                                    color: HexColor('#47623F'),
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      color: HexColor('#DFAE1D'),
                                    ),
                                    child: Text(
                                      'Barang Bekas',
                                      style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    margin: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      color: HexColor('#64A1F4'),
                                    ),
                                    child: Text(
                                      'Stok 100',
                                      style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
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
                                        color: HexColor('#64a1f4'),
                                        decoration: TextDecoration.lineThrough,
                                        letterSpacing: 1),
                                  ),
                                  Text(
                                    "Rp 100.500",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: HexColor('#3c7dd9'),
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: HexColor('#3c7dd9'),
                                ),
                                child: Text(
                                  'Diskon 100%',
                                  style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
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
                              color: HexColor('#47623F'),
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
                                          color: HexColor('#64a1f4'),
                                          size: 16,
                                        ),
                                        Text(' 5.0 | ',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: HexColor('#64a1f4'))),
                                        Text('200 Terjual',
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: HexColor('#64a1f4'))),
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
                                color: HexColor('#47623F'),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: HexColor('#47623F'),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Ulasan dan Penilaian",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: HexColor('#47623F'),
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
                                                    color: HexColor('#B4BBC6'),
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
                                                color: HexColor('#FA4A0C'),
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
                                                    color: HexColor('#B4BBC6'),
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
                                                color: HexColor('#FA4A0C'),
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
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider.builder(
          itemCount: 3,
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: 142,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPos = index;
                });
              }),
          itemBuilder: (context, index, _) {
            return Container(
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/image 15.png')),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: AspectRatio(
                aspectRatio: 823 / 406,
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2].map((index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              width: currentPos == index ? 30 : 40,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: currentPos == index
                    ? HexColor('#64A1F4')
                    : HexColor('#3C7DD9'),
              ),
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
                color: currentPos == index
                    ? HexColor('#64A1F4')
                    : HexColor('#3C7DD9'),
              ),
            );
          }).toList(),
        ),
      ])),
    );
  }
}
