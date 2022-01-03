import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget products() {
      return Container(
        margin: EdgeInsets.all(5),
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          color: Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.hindimeaning.com/wp-content/uploads/2012/12/green-cabbage.jpg"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cabbage",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '60\$ /50 Gram',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              // color: Colors.blue,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      "50 Gram",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Expanded(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.remove),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.add)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF6FCE0),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        backgroundColor: Color(0xffD1FF85),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Color(0xffA6CD00),
              child: Icon(
                Icons.search,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          CircleAvatar(
            radius: 14,
            backgroundColor: Color(0xffA6CD00),
            child: Icon(
              Icons.calendar_today_outlined,
              size: 18,
              color: Colors.black,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            // SizedBox(
            //   height: 15,
            // ),
            Container(
              height: 150,
              width: double.infinity,
              // color: Colors.amberAccent,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://img5.goodfon.com/wallpaper/nbig/1/c4/natiurmort-kompozitsiia-predmety-chernyi-fon-eda-iabloki-fru.jpg"),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 160, bottom: 20),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffBDCB84),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Center(
                                child: Text(
                                  "Vegi",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.green,
                                        offset: Offset(3, 3),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "30% OFF",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            shadows: [
                              BoxShadow(
                                color: Colors.green,
                                blurRadius: 5,
                                offset: Offset(2, 3),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "On all Vegetable Products",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Herbs Seasonings"),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [products(), products(), products()],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Food"),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [products(), products(), products()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
