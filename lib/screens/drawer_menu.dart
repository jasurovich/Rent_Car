import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            child: Image.asset(
              "assets/images/tesla_door.jpg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Samandar Abduhamitov\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  TextSpan(
                    text: "Samandar@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.production_quantity_limits_sharp,
            ),
            title: Text(
              "Products",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.info,
            ),
            title: Text(
              "Info",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 100.0,
          ),
          InkWell(
            focusColor: Colors.red,
            splashColor: Colors.red,
            child: Text(
              "     Log out",
              style: TextStyle(
                color: Colors.red,
                fontSize: 26.0,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
