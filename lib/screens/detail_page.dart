import 'package:flutter/material.dart';
import 'package:meditation/car_list.dart';

class MorePage extends StatefulWidget {
  int idx;
  MorePage(this.idx);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  Icon like_icon = Icon(Icons.favorite_border_outlined);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey[100],
        width: double.infinity,
        height: 720.0,
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  alignment: Alignment.centerLeft,
                  width: 40,
                  height: 40,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  alignment: Alignment.centerLeft,
                  width: 40,
                  height: 40,
                  child: IconButton(
                    onPressed: () {
                      if (like_icon == Icon(Icons.favorite)) {
                        like_icon = Icon(Icons.favorite_border_outlined);
                      } else {
                        like_icon = Icon(Icons.favorite);
                      }
                      setState(() {});
                    },
                    icon: like_icon,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Stack(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.grey, Colors.white],
                          ),
                        ),
                        width: double.infinity,
                        height: 40.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.grey, Colors.white],
                          ),
                        ),
                        width: 150.0,
                        height: 40.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.grey, Colors.white],
                          ),
                        ),
                        width: 200.0,
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                  ),
                  child: Container(
                    width: 300,
                    child: Image.asset(
                      "assets/images/${Cars.CAR_NAMES[widget.idx].toLowerCase()}_${widget.idx + 1}_crop.png",
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25.0,
                top: 10.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                Cars.CAR_NAMES[widget.idx],
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return sideView(ctx, i);
                },
                itemCount: Cars.CAR_NAMES.length,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25.0,
                top: 10.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                "Details",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 320.0,
              height: 140.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.speed,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Cars.CAR_SPEED[widget.idx],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.directions_car_filled_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Cars.CAR_TYPE[widget.idx],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                      color: Colors.grey,
                      width: 0.5,
                      height: 75.0,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.speed,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Cars.CAR_ENGINE[widget.idx],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.car_rental,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Cars.CAR_PETROL[widget.idx],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                      color: Colors.grey,
                      width: 0.5,
                      height: 75.0,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.speed,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Cars.CAR_SEATS[widget.idx],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.directions_car_filled_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Cars.CAR_BOX[widget.idx],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Reserve",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.double_arrow_rounded,
                    ),
                    iconSize: 30.0,
                  )
                ],
              ),
              width: 320.0,
              height: 55.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget sideView(BuildContext ctx, int i) {
    return Container(
      margin: EdgeInsets.only(left: 30.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ],
      ),
    );
  }
}
