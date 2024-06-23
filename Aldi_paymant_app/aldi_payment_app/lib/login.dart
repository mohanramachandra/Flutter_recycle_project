import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 20, 41),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Text(
                  (" EcoCash"),
                  style: TextStyle(
                      color: Colors.blue[600],
                      fontWeight: FontWeight.bold,
                      fontFamily: "fantasy",
                      fontSize: 38),
                ),
                //child: Image.network("C:\Users\mohan\Downloads\penny_logo.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ("                                 Powerdby PENNY"),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Open Sans",
                    fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
                child: Container(
                  //decoration: BoxDecoration(
                  //  border: Border.all(width: 1.0, color: Colors.lightBlue),
                  //borderRadius: const BorderRadius.vertical()),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 34, 34, 34),
                            labelText: "Mobile Number / Email id",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color.fromARGB(255, 242, 244, 245),
                              ), // Change border color
                            ),
                            labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 168, 167, 167))

                            // error: Text("invaild username ")
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Color.fromARGB(255, 34, 34, 34),
                          labelText: "Password",
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 170, 168, 168),
                              decorationColor: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.white), // Change border color
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Homepage');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 4, 65, 170),
                            minimumSize: Size(150.0, 50.0),
                          ),
                          child: Text(
                            ("Login "),
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgetpasswod');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            ("Forget Password? "),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.lightBlue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                //widthFactor: 10.0,
                heightFactor: 8,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 1, 31, 83),
                        minimumSize: const Size(300.0, 50.0)),
                    child: Text(("Create Account"),
                        style: TextStyle(wordSpacing: 2)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
