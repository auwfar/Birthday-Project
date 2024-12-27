import 'package:arifahday/moments_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isSurprised = false;

  @override
  Widget build(BuildContext context) {
    return (isSurprised)
        ? const SurpriseScreen()
        : Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Today is",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFB4B4B4),
                          fontFamily: "PlayfairDisplay",
                        ),
                      ),
                      Text(
                        "Arifah's Day",
                        style: TextStyle(
                          fontSize: 34,
                          color: Color(0xFFDB7093),
                          fontWeight: FontWeight.bold,
                          fontFamily: "PlayfairDisplay",
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 340,
                    height: 340,
                    child: Lottie.asset(
                      'images/person.json',
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 8,
                      // Shadow elevation
                      shadowColor: Colors.pinkAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        isSurprised = true;
                      });
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.card_giftcard, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Surprise Me!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    "30.12.24",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFFDB7093),
                      fontWeight: FontWeight.bold,
                      fontFamily: "PlayfairDisplay",
                    ),
                  ),
                  const Text(
                    "Created by Auwfar",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6D6D6D),
                      fontFamily: "Raleway",
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

class SurpriseScreen extends StatefulWidget {
  const SurpriseScreen({super.key});

  @override
  State<SurpriseScreen> createState() => _SurpriseScreenState();
}

class _SurpriseScreenState extends State<SurpriseScreen> {
  double _photoOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Trigger the fade-in animation
    Future.delayed(Duration.zero, () {
      setState(() {
        _photoOpacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'images/confetti_background.json',
              repeat: false,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Lottie.asset(
              'images/balloon.json',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: _photoOpacity,
              duration: Duration(seconds: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "images/logo.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Happy Birthday",
                    style: TextStyle(
                      fontSize: 34,
                      color: Color(0xFFDB7093),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Chewy",
                    ),
                  ),
                  Text(
                    "Arifah Fariza",
                    style: TextStyle(
                      fontSize: 46,
                      color: Color(0xFFB21850),
                      fontWeight: FontWeight.bold,
                      fontFamily: "AlexBrush",
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 8,
                      // Shadow elevation
                      shadowColor: Colors.pinkAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MomentsScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.photo_library, color: Colors.white),
                        SizedBox(width: 10),
                        const Text(
                          'See Our Moments',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
