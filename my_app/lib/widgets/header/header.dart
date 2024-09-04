import 'package:flutter/material.dart';



/* TODO:
  - Needs to be of type Widget to fit in the body of the scaffold
 */


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
            text: "Knut Holtet",
            style: TextStyle(color: Color(0xFFE2E8F0), fontSize: 36),
          ),
        ),

        Text.rich(
          TextSpan(
            text: "desc",
            style: TextStyle(color: Color(0xFFE2E8F0), fontSize: 24)

          )
        ),

        Text.rich(
            TextSpan(
                text: "noe tekst fr",
                style: TextStyle(color: Color(0xFFE2E8F0), fontSize: 12)

            )
        ),
      ],
    );
  }
}
