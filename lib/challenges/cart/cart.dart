import 'package:flutter/material.dart';

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
      appBar: AppBar(
        elevation: 0,
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
        ),
      ),
    );
  }
}
