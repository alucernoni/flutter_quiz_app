import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.deepPurple),
      child: const Center(
        child: Text('flutter app'),
      ),
    );
  }
}
