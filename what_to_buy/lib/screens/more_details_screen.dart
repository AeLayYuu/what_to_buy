import 'package:flutter/material.dart';
import 'package:what_to_buy/widgets/more_details_widget.dart';

class MoreDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text("Item List"),
        ),
      ),
      body: MoreDetailsWidget(),
    );
  }
}
