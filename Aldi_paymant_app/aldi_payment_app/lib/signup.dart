import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => Signup_page();
}

class Signup_page extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 6, 20, 41),
        ),
        backgroundColor: const Color.fromARGB(255, 6, 20, 41),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("Mind sharing your name with Ours ?"),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("please provide your First and Last Name "),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 34, 34, 34),
                      labelText: "First Name",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 170, 168, 168)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.white), // Change border color
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 34, 34, 34),
                      labelText: "Last Name",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 170, 168, 168)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                        // Change border color
                      ),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DOB()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(135, 0, 135, 0),
                      child: Text(
                        ("Next"),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150.0, 50.0),
                      backgroundColor: Color.fromARGB(255, 4, 65, 170),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class DOB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("What is your Mobile Number?"),
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("Enter your mobile number where you can be contected"),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 34, 34, 34),
                  labelText: "Mobile Number",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 170, 168, 168)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.white), // Change border color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Mobile_verification()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 65, 170),
                  minimumSize: Size(150.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(135, 0, 135, 0),
                  child: Text(
                    (" Get OTP"),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mobile_verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("please Verify your mobile Number"),
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("please enter the OTP "),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 34, 34, 34),
                  labelText: " OTP ",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 170, 168, 168)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.white), // Change border color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Password()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 65, 170),
                  minimumSize: Size(150.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 150, 0),
                  child: Text(
                    ("Next"),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("Create your own pawwsord for Login to DigiCash"),
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ("please enter the Password "),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 34, 34, 34),
                  labelText: " Password ",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 170, 168, 168)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.white), // Change border color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 34, 34, 34),
                  labelText: "  Re-Password ",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 170, 168, 168)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.white), // Change border color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 65, 170),
                  minimumSize: Size(150.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 150, 0),
                  child: Text(
                    ("confirm"),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
