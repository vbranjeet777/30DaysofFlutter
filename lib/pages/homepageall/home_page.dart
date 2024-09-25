import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/homepageall/catalog_header.dart';
import 'package:flutter_catalog/pages/homepageall/item_widget.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Ranjeet";
    final dummyList = List.generate(200, (index) => CatalogModels.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoutes),
        child: Icon(
          size: 22,
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: dummyList.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      item: dummyList[index],
                      key: ValueKey("a"),
                    );
                    // HomeDetailsPage( item: dummyList[index],
                    //   key: ValueKey("a"),);;
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      // appBar: AppBar(
      //   title: Text(
      //     "Catalog App",
      //   ),
      // ),

      // drawer: Mydrawer(),
    );
  }
}