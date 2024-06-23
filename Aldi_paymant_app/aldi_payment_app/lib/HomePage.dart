import 'package:aldi_payment_app/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:flutter/services.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Edit Profile'),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Logut'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(44, 243, 245, 247),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  height: 120.0,
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ('Account'),
                          style: TextStyle(
                              color: Colors.lightBlue[400],
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(('Balance : '),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 15,
                            ),
                            Text(('100 '),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Text(('€'),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(44, 243, 245, 247),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                icon: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 70,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 8, 8, 8),
                              child: Text(
                                "Amazon",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                icon: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 70,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 8, 8, 8),
                              child: Text(
                                " KFC ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                icon: FaIcon(
                                  Icons.circle,
                                  // FontAwesomeIcons.circle,
                                  color: Colors.white,
                                  size: 70,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 8, 8, 8),
                              child: Text(
                                "Air India",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                icon: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 70,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 8, 8, 8),
                              child: Text(
                                "Timu",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        // ... Repeat the same structure for other icons
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(44, 243, 245, 247),
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 020.0),
                    child: Text(
                      (" Coupens "),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            offset: Offset(1, 1),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_box,
                        size: 100,
                      ),
                      Icon(Icons.add_box, size: 100),
                      Icon(Icons.add_box, size: 100),
                      Icon(Icons.add_box, size: 100),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/QRCodeScannerApp");
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                child: Text(("Recive Money")),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 4, 65, 170),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Main_Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
