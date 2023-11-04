// ignore_for_file: prefer_const_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  int currentitem = 0;
  List<Widget> items = [
    const Image(
      image: AssetImage('images/Frame 24.jpg'),
    ),
    const Image(
      image: AssetImage('images/Frame 24.jpg'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        margin: EdgeInsets.all(40),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Image(
                image: AssetImage("images/logo.jpg"),
              ),
            ),
            Expanded(
              child: Text(
                "Moody",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            Icon(
              Icons.notifications,
              size: 30,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Hello, ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Sarah Rose",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "How are you feeling today?",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(image: AssetImage("images/happy.jpg")),
                  Image(image: AssetImage("images/love.jpg")),
                  Image(image: AssetImage("images/sad.jpg")),
                  Image(image: AssetImage("images/cool.jpg")),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 40, top: 15, right: 40),
        child: Column(
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feature",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See more >",
                  style: TextStyle(
                      color: Color.fromARGB(255, 113, 173, 43),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(236, 253, 243, 50),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          margin: EdgeInsets.only(left: 40, top: 20, right: 40),
          height: 150,
          child: CarouselSlider(
              items: items,
              disableGesture: false,
              options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                height: 200,
                autoPlay: true,
                enableInfiniteScroll: true,
                animateToClosest: true,
                initialPage: 0,
              ))),
      Container(
        margin: EdgeInsets.only(left: 40, top: 15, right: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Exercise",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See more >",
                  style: TextStyle(
                      color: Color.fromARGB(255, 113, 173, 43),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(140, 60)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255))),
                        icon: Image(image: AssetImage('images/brain.jpg')),
                        label: Text(
                          "Relaxtion",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(140, 60)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255))),
                        icon: Image(image: AssetImage('images/medi.jpg')),
                        label: Text(
                          "Meditation",
                          style: TextStyle(color: Colors.black),
                        )),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(140, 60)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255))),
                        icon: Image(image: AssetImage('images/breathing.jpg')),
                        label: Text(
                          "Breathing",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(140, 60)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255))),
                        icon: Image(image: AssetImage('images/yoga.jpg')),
                        label: Text(
                          "Yoga",
                          style: TextStyle(color: Colors.black),
                        )),
                  ]),
            ),
          ],
        ),
      ),
    ]);
  }
}
