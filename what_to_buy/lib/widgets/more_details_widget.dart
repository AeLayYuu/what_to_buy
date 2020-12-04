import 'package:flutter/material.dart';
import 'package:what_to_buy/models/top_trending.dart';

// ignore: must_be_immutable
class MoreDetailsWidget extends StatelessWidget {
  List<TopTrending> dataList = [
    TopTrending(
        brandName: "Samsung Galaxy",
        imageUrl: "assets/images/samsung_galaxy.jpg",
        price: 699.99),
    TopTrending(
        brandName: "Redmi", imageUrl: "assets/images/redmi.png", price: 699.99),
    TopTrending(
        brandName: "Vivo", imageUrl: "assets/images/vivo.jpg", price: 699.99)
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.maxFinite,
              height: 30,
              color: Color(0xFF896969),
              alignment: Alignment.centerLeft,
              child: Text(
                "SAMSUNG",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int indext) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: 200,
                            height: 100,
                            child: Image.asset(dataList[indext].imageUrl)),
                        Text(dataList[indext].brandName),
                        Text(
                          "\$ " + dataList[indext].price.toString(),
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.maxFinite,
              height: 30,
              color: Color(0xFF896969),
              alignment: Alignment.centerLeft,
              child: Text(
                "MI",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int indext) {
                    return Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 100,
                        child: Image.asset(dataList[indext].imageUrl));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.maxFinite,
              color: Color(0xFF896969),
              height: 30,
              alignment: Alignment.centerLeft,
              child: Text(
                "Redmi",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int indext) {
                    return Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 100,
                        child: Image.asset(dataList[indext].imageUrl));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.maxFinite,
              color: Color(0xFF896969),
              height: 30,
              alignment: Alignment.centerLeft,
              child: Text(
                "Huawei",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int indext) {
                    return Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 100,
                        child: Image.asset(dataList[indext].imageUrl));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
