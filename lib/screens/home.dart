import 'package:flutter/material.dart';
import 'package:ordo_apps/data/data.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ordo_apps/screens/product_page.dart';
import 'package:ordo_apps/widgets/card.dart';
import 'package:ordo_apps/widgets/custom_indicator.dart';
// ignore_for_file: prefer_const_constructors

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final listOfItems = Data().getListOfItems();
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
                    color: Color(0xffF0F0F0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Color(0xff526430),
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                          child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Cari dengan mengetik barang',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: 12),
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
                  color: Color(0xff64A1F4),
                ),
                child: Row(
                  children: const <Widget>[
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
                  color: Color(0xffDFAE1D),
                ),
                child: Row(
                  children: const <Widget>[
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
                  color: Color(0xffFF485A),
                ),
                child: Row(
                  children: const <Widget>[
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
          backgroundColor: Color(0xfffcf8f8),
        ),
        body: Container(
          color: Color(0xffFEF9F9),
          child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Column(children: <Widget>[
                  CustomIndicator(),
                  Container(
                      padding: const EdgeInsets.all(10),
                      color: Color(0xfffcf8f8),
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: listOfItems.length,
                        itemBuilder: (BuildContext context, int index) =>
                            InkWell(
                          child: CustomCard(
                              productData: listOfItems[index], index: index),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetails(
                                        picture: listOfItems[index]['picture']
                                            .toString(),
                                        index: index)));
                          },
                        ),
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.fit(2),
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                      ))
                ])
              ]),
        ));
  }
}
