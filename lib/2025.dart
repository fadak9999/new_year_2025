// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NewYear extends StatefulWidget {
  const NewYear({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewYearState createState() => _NewYearState();
}

class _NewYearState extends State<NewYear> {
  List<String> numbers = ['2', '20', '202', '2025'];
  int index = 0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 1), () {
      if (index < numbers.length - 1) {
        setState(() {
          index++;
        });
        _startAnimation(); // Recursive call to continue the animation
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Text(
                numbers[index],
                key: ValueKey<int>(index),
                style: const TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 192, 2, 255),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            '🎉 Happy New Year 🎉',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 199, 198, 198),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
