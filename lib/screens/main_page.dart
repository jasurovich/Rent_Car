import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meditation/car_list.dart';
import 'package:meditation/screens/merc_brand.dart';
import 'package:meditation/screens/detail_page.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _currentIndexOfBottomBar = 0;
  int randomNumber = Random().nextInt(3) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Input-Section__________________//__________________//
                  Container(
                    width: 250.0,
                    height: 50.0,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.yellowAccent,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: "Search",
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Circular Avatar section_____________//_______//
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(
                      "assets/images/photo1.jpg",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Yellow And Grey lines And Car Images__Section_____//______________//__________//
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        transform: Matrix4.skewY(0.2),
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.white, Colors.yellow],
                          ),
                        ),
                      ),
                      Container(
                        transform: Matrix4.skewY(0.2),
                        margin: EdgeInsets.only(
                          top: 20.0,
                        ),
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.grey, Colors.white],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    // "assets/images/${Cars.CAR_NAMES[randomNumber].toLowerCase()}_${randomNumber + 1}.png",
                    "assets/images/bmw_4.png",
                  ),
                  width: 360.0,
                  height: 200.0,
                ),
              ],
            ),

            //Best Brands text section______________//_____________//_________//__________//
            Container(
              margin: EdgeInsets.only(
                top: 40.0,
                left: 20.0,
              ),
              width: 400.0,
              height: 50.0,
              child: Text(
                "Best Brands",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            //Logos_Section___//_____________//__________//
            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return Logos(ctx, i);
                },
                itemCount: Cars.CAR_NAMES.length,
              ),
            ),
            //Best Cars Text Section______//_________//__________//
            Container(
              margin: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              width: 400.0,
              height: 25.0,
              child: Text(
                "Best Cars",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Top Cars Section _________//________//_______//________//
            Container(
              height: 80.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return TopCars(ctx, i);
                },
                itemCount: Cars.CAR_NAMES.length,
              ),
            ),
            SizedBox(height: 10.0),
            //Footer icons Section_______//________//_______//_______//
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter),
            label: "Brands",
            tooltip: "Brends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
            tooltip: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            tooltip: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndexOfBottomBar,
        onTap: (i) {
          setState(() {
            _currentIndexOfBottomBar = i;
          });
        },
      ),
    );
  }

  Widget Logos(BuildContext ctx, int i) {
    return Container(
      margin: EdgeInsets.only(left: 30.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            width: 70.0,
            height: 70.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    ctx,
                    MaterialPageRoute(
                      builder: (ctx) => MercBrand(i),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/${Cars.CAR_NAMES[i].toLowerCase()}_logo${i + 1}.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              Cars.CAR_NAMES[i],
            ),
          ),
        ],
      ),
    );
  }

  Widget TopCars(BuildContext ctx, int i) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          ctx,
          MaterialPageRoute(
            builder: (ctx) => MorePage(i),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              15.0,
            ),
          ),
          width: 300.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/${Cars.CAR_NAMES[i].toLowerCase()}_${i + 1}_rotate.png",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Cars.CAR_NAMES[i],
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      Cars.CAR_PRICES[i] + "/Day",
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
