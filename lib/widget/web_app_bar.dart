import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            "images/logo.png",
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          SizedBox(width: 20),
          TextButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, primary: Colors.white),
          ),
          SizedBox(width: 20),
          TextButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: TextButton.styleFrom(
                backgroundColor: Colors.orange, primary: Colors.white),
          ),
        ],
      ),
    );
  }
}
