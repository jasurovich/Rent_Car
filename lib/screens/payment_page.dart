import 'dart:ffi';

import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  var _isVertical = Axis.horizontal;
  bool _isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Payment Information",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Pay Pal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 170, left: 35.0),
                child: Container(
                  width: 320.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 270.0,
                        child: TextField(
                          decoration: const InputDecoration(
                            label: Text("Name"),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 270.0,
                        child: TextField(
                          decoration: const InputDecoration(
                            label: Text("Card"),
                            prefixIcon: Icon(
                              Icons.card_travel,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 125,
                            child: TextField(
                              decoration: const InputDecoration(
                                label: Text(
                                  "Expiry Date",
                                  style: TextStyle(fontSize: 15.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 125,
                            child: TextField(
                              decoration: const InputDecoration(
                                label: Text("CVC"),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 200.0,
                        child: CheckboxListTile(
                            value: _isTrue,
                            title: Text("Save this card"),
                            onChanged: (v) {
                              setState(() {
                                _isTrue = v!;
                                if (v) {
                                  _isVertical = Axis.horizontal;
                                } else {
                                  _isVertical = Axis.vertical;
                                }
                              });
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 320.0,
            alignment: Alignment.center,
            child: Text(
              "Thanks for using our app, you're recived\n20 bonus points for your next purchase",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 320.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total payment Amount",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "280\$",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              width: 300.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(
                  30.0,
                ),
              ),
              child: Text(
                "Pay",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
