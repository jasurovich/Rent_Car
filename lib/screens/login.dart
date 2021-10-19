import 'package:flutter/material.dart';
import 'package:meditation/screens/main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow[600],
              fontSize: 24.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: _formListElementlar(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _formListElementlar() {
    return [
      CircleAvatar(
        backgroundColor: Colors.yellow,
        radius: 100.0,
        backgroundImage: AssetImage(
          "assets/images/photo1.jpg",
        ),
      ),
      SizedBox(
        height: 80.0,
      ),
      TextFormField(
        controller: _usernameController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          hintText: "Username kiriting...",
          labelText: "Username",
        ),
        validator: (String? v) {
          if (v != "samandar") {
            return "Username Kam Kirtildi !!!";
          }
          
        },
      ),
      SizedBox(height: 30.0),
      TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          hintText: "Parolni kiriting...",
          labelText: "Parol",
        ),
        validator: (String? v) {
          if (v != "1978") {
            return "Parol Kam Kirtildi !!!";
          }
        },
      ),
      SizedBox(height: 30.0),
      ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow[600],
            borderRadius: BorderRadius.circular(
              30.0,
            ),
          ),
          alignment: Alignment.center,
          width: 120.0,
          height: 40.0,
          child: Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Page1(),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Parol yoki usernmae xato kiritildi !",
                ),
              ),
            );
          }
        },
      ),
    ];
  }
}
