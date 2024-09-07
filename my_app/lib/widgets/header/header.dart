import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';



/* TODO:
  - Needs to be of type Widget to fit in the body of the scaffold
 */

Flavor flavor = catppuccin.mocha;


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GradientText(
          "Knut Holtet",
          style: GoogleFonts.jetBrainsMono(
            textStyle: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          colors: [
            flavor.peach,
            flavor.maroon,
            flavor.mauve,
          ],
        ),

        GradientText(
          "Utvikler og Designer",
          style: GoogleFonts.jetBrainsMono(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          colors: [
            flavor.mauve,
            flavor.pink
          ],
        ),

        Text(
          "Tredjeårs student på Institutt for Informatikk i Oslo.\nVim-nyter, UI/UX forkjemper, liker å programmere\nog er sport-entusiast samt engasjert tilskuer.",
          style: GoogleFonts.jetBrainsMono(
            textStyle: TextStyle(
              color: flavor.text
            )
          ),
        )

      ],
    );
  }
}
