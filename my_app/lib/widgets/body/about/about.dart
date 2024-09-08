import 'package:flutter/material.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {

  /* TODO:
  - Add short about section
  */

    Flavor flavor = catppuccin.mocha;

    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan> [
          TextSpan(
            style: GoogleFonts.jetBrainsMono(
              textStyle: TextStyle(
                color: flavor.text,
              )
            ),
          ),
          TextSpan(
            text: "Heisannnnnn! I 2021 begynte jeg med Java som en del av årstudiet mitt i Anvendt Data på OsloMet. Helt siden har jeg gravd meg ned i det uendelige hullet av, la oss kalle det IT (for enkelhetsskyld), og aldri sett tilbake.",
            style: GoogleFonts.jetBrainsMono(
              textStyle: TextStyle(color: flavor.text)
            ),
          ),
          TextSpan(
            text: "\n\nFor tiden går jeg siste året bachelor på Informatikk: Design, på IFI, der hovedfokuset foreløpig er å lære alt jeg finner selv litt interessant eller er nysgjerrig på!",
            style: GoogleFonts.jetBrainsMono(
                textStyle: TextStyle(color: flavor.text)
            ),
          ),
          TextSpan(
            text: "\n\nNår jeg ikke sitter foran skjermen, kan du enten finne meg på hjemmekamper til 08 (Sarpsborg 08, verdens beste fotballag), ute på tur (ta kontakt om du vil linkes på Strava), eller i sosiale omgivelser.",
            style: GoogleFonts.jetBrainsMono(
                textStyle: TextStyle(color: flavor.text)
            ),
          ),

          TextSpan(
            text: "\n\nNote* - nettsiden er skrevet i Flutter, (ish en ukes erfaring, as of 4. september). Men ville lære meg noe nytt, og egne nettsider er obligatorisk nå om dagen (jobbsøkningstid for karrieredager osv!)! For mer info om dette sjekk footer! Altså kan du se på nettsiden som en glorifisert CV / visittkort.",
            style: GoogleFonts.jetBrainsMono(
                textStyle: TextStyle(color: flavor.text)
            ),
          ),
        ],
      ),
    );
  }

}

