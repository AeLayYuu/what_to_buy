import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_buy/models/top_trending.dart';
import 'package:what_to_buy/provider/specification_provider.dart';
import 'package:what_to_buy/screens/more_details_screen.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
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
    return Container(
      // decoration: BoxDecoration(
      //     image:
      //         DecorationImage(image: AssetImage("assets/images/backblue.jpg"))),
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xFFDD5757),
            child: Text(
              "Top Trending",
              style: TextStyle(
                fontFamily: "RobotoMono",
                fontSize: 18,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            width: MediaQuery.of(context).size.width / 1.97,
            height: MediaQuery.of(context).size.height / 25.3,
          ),
          Container(
            child: FutureBuilder(
                future: Provider.of<SpecificationProvider>(context)
                    .fetchSpecification(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  print("snapshot data ${snapshot.data}");
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: CarouselSlider(
                          items: snapshot.data
                              .map((item) => Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        item.image,
                                        height: 200,
                                        alignment: Alignment.center,
                                        // width: 200,
                                        fit: BoxFit.fill,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            item.category.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(item.price,
                                              style: TextStyle(color: Colors.red))
                                        ],
                                      )
                                    ],
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 2),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                color: Color(0xFF896969),
                child: Text(
                  "Most Popular",
                  style: TextStyle(
                    fontFamily: "RobotoMono",
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                width: MediaQuery.of(context).size.width / 1.97,
                height: MediaQuery.of(context).size.height / 25.3,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: RaisedButton(
                  child: Text(
                    "more details",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff3E4083),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MoreDetailsScreen()));
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              child: CarouselSlider(
                items: dataList
                    .map((item) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              item.imageUrl,
                              height: 200,
                              alignment: Alignment.center,
                              // width: 200,
                              fit: BoxFit.fill,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  item.brandName,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("\$" + item.price.toString(),
                                    style: TextStyle(color: Colors.red))
                              ],
                            )
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
