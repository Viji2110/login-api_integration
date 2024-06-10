import 'dart:ui';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key, required AppBar appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient:
            LinearGradient(colors: [Color(0xFFe0f5f0), Color(0xFFfbe1df)]),
        elevation: 0,
        leading: Container(
          height: 48,
          width: 48,
          margin: EdgeInsets.only(top: 20, left: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ),
        title: Text(
          'My Orders',
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2C2C2C),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe0f5f0), Color(0xFFfbe1df)],
            stops: [0.1, 0.5],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 89,
                    height: 86,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/cake_a.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Strawberry  dripping",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C))),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text("Pending",
                            style: TextStyle(
                                backgroundColor: Colors.blue[200],
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFFA5A5A5))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Delivery on  Feb 12, 2023",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF2C2C2C))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 89,
                    height: 86,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/cake_b.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Strawberry  dripping",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C))),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text("Completed",
                            style: TextStyle(
                                backgroundColor: Colors.greenAccent[100],
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFFA5A5A5))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Delivery on  Feb 12, 2023",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF2C2C2C))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 89,
                    height: 86,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/cake_c.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Strawberry  dripping",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C))),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text("Cancelled",
                            style: TextStyle(
                                backgroundColor: const Color(0xffffe2d4),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFFA5A5A5))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Delivery on  Feb 12, 2023",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF2C2C2C))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 89,
                    height: 86,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/cake_d.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Strawberry  dripping",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C))),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text("Pending",
                            style: TextStyle(
                                backgroundColor: Colors.blue[200],
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFFA5A5A5))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Delivery on  Feb 12, 2023",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF2C2C2C))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
