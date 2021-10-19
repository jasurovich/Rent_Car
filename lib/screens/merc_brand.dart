import 'package:flutter/material.dart';
import 'package:meditation/car_list.dart';
import 'package:meditation/screens/detail_page.dart';

class MercBrand extends StatefulWidget {
  int indx;
  MercBrand(this.indx);

  @override
  State<MercBrand> createState() => _MercBrandState();
}

class _MercBrandState extends State<MercBrand> {
  int _currentIndexOfBottomBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return Logos(ctx, i);
              },
              itemCount: Cars.CAR_NAMES.length,
            ),
          ),
          //Car Cards Section______//_______//________//_____//
          Container(
            height: 507.0,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx, i) {
                return TopCars(ctx, i);
              },
              itemCount: Cars.CAR_NAMES.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            tooltip: "Search",
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

  Widget TopCars(BuildContext ctx, int i) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 1),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            width: 350.0,
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 140.0),
                  child: Text(
                    Cars.CAR_MERCEDES_NAME[i],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      Cars.CAR_SEATS[i],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      width: 0.5,
                      height: 15.0,
                    ),
                    Text(
                      Cars.CAR_BOX[i],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      width: 0.5,
                      height: 15.0,
                    ),
                    Text(
                      Cars.CAR_SPEED[i],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      width: 0.5,
                      height: 15.0,
                    ),
                    Text(
                      Cars.CAR_TYPE[i],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 130.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(
                          12.0,
                        ),
                      ),
                      child: Text(
                        Cars.CAR_PRICES[i] + "/Day",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          ctx,
                          MaterialPageRoute(
                            builder: (ctx) => MorePage(i),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 130.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(
                            12.0,
                          ),
                        ),
                        child: Text(
                          "More Info",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          width: 150.0,
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/${Cars.CAR_MERCEDES[i].toLowerCase()}_${i + 1}.png",
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Logos(BuildContext ctx, int i) {
    return Container(
      margin: EdgeInsets.only(left: 30.0),
      child: Container(
        color: Colors.red,
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
      ),
    );
  }
}
