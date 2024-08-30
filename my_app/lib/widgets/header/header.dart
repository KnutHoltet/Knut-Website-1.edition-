import 'package:flutter/material.dart';



/* TODO:
  - Needs to be of type Widget to fit in the body of the scaffold
 */


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "Header",
        style: TextStyle(color: Color(0xFFE2E8F0)),
      ),
    );
  }
}
