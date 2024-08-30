import 'package:flutter/material.dart';
import 'package:my_app/widgets/header/header.dart';
import 'package:my_app/widgets/body/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Header(),
        ),

        Expanded(
          child: Content(),
        ),
      ],
    );
  }
}
