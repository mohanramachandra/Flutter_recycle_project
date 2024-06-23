import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page12345',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controllers for username and password text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Flag to track if the user is authenticated
  bool _isAuthenticated = false;

  // Function to simulate login/authentication
  void _login() {
    // Simulate authentication logic
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    if (username == 'example' && password == 'password') {
      setState(() {
        _isAuthenticated = true;
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Authentication Failed'),
            content: Text('Invalid username or password.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // App logo image
              Image.asset(
                'assets/logo.png', // Replace with your app's logo image
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(height: 16.0), // Vertical spacing

              // Username text field
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(), // Add a border
                ),
              ),
              SizedBox(height: 16.0), // Vertical spacing

              // Password text field
              TextField(
                controller: _passwordController,
                obscureText: true, // Hide password
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(), // Add a border
                ),
              ),
              SizedBox(height: 16.0), // Vertical spacing

              // Login button
              ElevatedButton(
                onPressed: _isAuthenticated ? null : _login,
                child: Text('Login'),
              ),
              SizedBox(height: 8.0), // Vertical spacing

              // Forgot Password link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Implement Forgot Password logic here
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Forgot Password'),
                            content: Text('Enter your email to reset your password.'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Implement password reset logic here
                                  Navigator.of(context).pop();
                                },
                                child: Text('Submit'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
              if (_isAuthenticated)
                Text(
                  'Authentication Successful!',
                  style: TextStyle(color: Colors.green),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
