import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';
import 'Screen3.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int currentIndex = 0;
int selected = 0;
List pages = [Screen1(), Screen2(), Screen3()];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selected],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Screen1"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Screen2"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Screen3")
        ],
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
      ),
    );
  }
}
