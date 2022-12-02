import 'package:flutter/material.dart';

class Mileage extends StatefulWidget {
  const Mileage({super.key});

  @override
  State<Mileage> createState() => _MileageState();
}

class _MileageState extends State<Mileage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("마일리지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text("마일리지")
          ],
        ),
      ),
    );
  }
}
