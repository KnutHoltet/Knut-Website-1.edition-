import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context)  {
    return const Text.rich(
      TextSpan(
        text: "Body",
        style: TextStyle(color: Color(0xFFE2E8F0)),
      )
    );
  }
}
