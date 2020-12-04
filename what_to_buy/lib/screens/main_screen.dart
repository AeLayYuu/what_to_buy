import 'package:flutter/material.dart';
import 'package:what_to_buy/widgets/main_widget.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "What To Buy?",
          style: TextStyle(
            fontFamily: "RobotoMono",
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {},
        backgroundColor: Colors.lightBlue,
        elevation: 12,
      ),
      body: MainWidget(),
    );
  }
}
