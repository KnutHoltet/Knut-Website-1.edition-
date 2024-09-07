import 'package:flutter/material.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Flavor flavor = catppuccin.mocha;

class Experience extends StatelessWidget {
  const Experience({super.key});


  @override
  Widget build(BuildContext context) {

    Flavor flavor = catppuccin.mocha;

    return Container(
      child: Text(
        "test",
        style: GoogleFonts.jetBrainsMono(
          textStyle: TextStyle(
              color: flavor.text
          ),
        ),
      ),
    );

  }
}




