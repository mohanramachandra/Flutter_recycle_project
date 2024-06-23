import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideAnimationDemo(),
    );
  }
}

class SlideAnimationDemo extends StatefulWidget {
  @override
  _SlideAnimationDemoState createState() => _SlideAnimationDemoState();
}

class _SlideAnimationDemoState extends State<SlideAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
        _animationController.forward();
        setState(() {
          _currentIndex = (_currentIndex + 1) % 3;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 3,
            child: SlideTransition(
              position: _slideAnimation,
              child: PageView(
                physics:
                    AlwaysScrollableScrollPhysics(), // Allow immediate scrolling
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: [
                  Image.network(
                    'https://via.placeholder.com/300?text=Image+1',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://via.placeholder.com/300?text=Image+2',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://via.placeholder.com/300?text=Image+3',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action for login button
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action for signup button
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
