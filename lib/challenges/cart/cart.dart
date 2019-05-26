import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 247, 243, 1),
      body: SafeArea(
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: Color.fromRGBO(249, 247, 243, 1),
              textTheme: TextTheme(
                  title: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () => {}),
              title: Align(
                  alignment: FractionalOffset.centerLeft,
                  child: Text('Pasta & Noodles')),
              actions: <Widget>[
                RotatedBox(
                    quarterTurns: 45,
                    child: IconButton(
                        icon: Icon(
                          Icons.tune,
                          color: Colors.black,
                        ),
                        onPressed: () => {}))
              ],
            ),
            SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
//											child: Shimmer.fromColors(
//												baseColor: Colors.black12,
//												highlightColor: Colors.black45,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('He\'d have you all unravel at the'),
                        ),
//											),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                      );
                    },
                    childCount: 1,
                  ),
                )),
            SliverFillViewport(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('He\'d have you all unravel at the'),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
              );
            }, childCount: 1))
          ],
        ),
      ),
    );
  }
}
