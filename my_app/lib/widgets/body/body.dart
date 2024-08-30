import 'package:flutter/material.dart';
import 'package:my_app/widgets/header/header.dart';
import 'package:my_app/widgets/body/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            child: Header(),
          ),

          Expanded(
            child: Content(),
          ),
        ],
      ),
    );
  }
}
