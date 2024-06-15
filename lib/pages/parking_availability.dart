import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ParkingAvailability());
}

class ParkingAvailability extends StatelessWidget {
  const ParkingAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParkingAvailabilityPage(),
    );
  }
}

class ParkingAvailabilityPage extends StatefulWidget {
  const ParkingAvailabilityPage({super.key});

  @override
  _ParkingAvailabilityPageState createState() =>
      _ParkingAvailabilityPageState();
}

class _ParkingAvailabilityPageState extends State<ParkingAvailabilityPage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Icon(
                    Icons.plus_one,
                    size: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    '$counter',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _decrementCounter,
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Icon(
                    Icons.exposure_minus_1,
                    size: 30,
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
