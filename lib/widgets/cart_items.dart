import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
// ignore_for_file: prefer_const_constructors

class CartItem extends StatefulWidget {
  final Map<String, dynamic> productData;

  const CartItem({Key? key, required this.productData}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  final formatCurrency =
      NumberFormat.simpleCurrency(locale: 'id_ID', decimalDigits: 0);
  bool _visible = false;
  int qty = 0;

  void initState() {
    qty = int.parse(widget.productData["qty"].toString());
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
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
                      color: Color(0xfffcf8f8),
                      padding: EdgeInsets.only(top: 50, left: 12),
                      child: Material(
                        color: Color(0xfffcf8f8),
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: Color(0xff64A1F4),
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.delete_outline_outlined),
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
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 12, top: 10),
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
                        spreadRadius: 4,
                        blurRadius: 8,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/' +
                              widget.productData["picture"].toString())),
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
                                widget.productData["name"].toString(),
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.9),
                                    fontWeight: FontWeight.w600),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                '${formatCurrency.format(widget.productData["price"])}',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Color(0xff64A1F4),
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
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xff3C7DD9),
                        ),
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  qty = qty - 1;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                            Text(
                              qty.toString(),
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  qty = qty + 1;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: _visible
                                ? Color(0xff3C7DD9)
                                : Color(0xff64A1F4),
                          ),
                          child: _visible
                              ? Row(
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
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 4),
                                  ],
                                )
                              : Row(
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
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 4),
                                  ],
                                ),
                        ),
                        onTap: () {
                          setState(() {
                            _visible = !_visible;
                          });
                        },
                      ),
                    ]))
              ],
            ),
          ),
          AnimatedSize(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            child: Container(
              width: double.infinity,
              child: Visibility(
                visible: _visible,
                maintainAnimation: true,
                maintainSize: false,
                maintainState: true,
                child: Container(
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
                        controller: TextEditingController(
                            text: widget.productData["notes"]),
                        minLines: 2,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          hintText: 'Ketik disini...',
                          contentPadding: EdgeInsets.only(
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
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
