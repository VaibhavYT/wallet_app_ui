// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/utils/my_button.dart';
import 'package:wallet_app_ui/utils/my_list.dart';
import 'package:wallet_app_ui/widgets/cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controlle = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.yellow,
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[400],
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.pink[400],
                )),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    children: [
                      Text(
                        "My ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(color: Colors.black, fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //cards
            Container(
              height: 200,
              child: PageView(
                controller: _controlle,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCards(
                      balance: 2560.20,
                      cardNumber: 379220424,
                      expiryMonth: 05,
                      expiryYear: 25,
                      color: Color.fromARGB(255, 126, 84, 199)),
                  MyCards(
                      balance: 6785.80,
                      cardNumber: 328467423,
                      expiryMonth: 07,
                      expiryYear: 26,
                      color: Color.fromARGB(255, 132, 198, 57)),
                  MyCards(
                      balance: 7889.70,
                      cardNumber: 67342695,
                      expiryMonth: 08,
                      expiryYear: 27,
                      color: Color.fromARGB(255, 38, 167, 226)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controlle,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 145, 145, 145),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // 3 button ->send+pay+bills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // send button
                MyButton(
                    iconImagepath: 'assets/icons/villa.png',
                    buttonText: 'Villa'),
                MyButton(
                    iconImagepath: 'assets/icons/sport-car.png',
                    buttonText: 'Car'),

                MyButton(
                    iconImagepath: 'assets/icons/bean-bag.png',
                    buttonText: 'Bag'),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //column -> stats + transaction
            MyList(
                iconImagePath: 'assets/icons/villa.png',
                tileName: 'Villa',
                tileSubName: 'Sweet Villa'),
            MyList(
                iconImagePath: 'assets/icons/sport-car.png',
                tileName: 'Car',
                tileSubName: 'Sport Car'),
          ],
        ),
      ),
    );
  }
}
