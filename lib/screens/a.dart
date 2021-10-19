import 'package:flutter/material.dart';
import 'package:meditation/car_list.dart';

class StackWid extends StatelessWidget {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60.0),
            // width: 400.0,
            // height: 200.0,
            // color: Colors.yellow,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 60.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              width: 360.0,
              height: 150.0,
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20.0,
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
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 610.0, left: 30.0),
            width: 150.0,
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
        ],
      ),
    );
  }
}
