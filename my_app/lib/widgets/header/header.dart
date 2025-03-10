import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';



/* TODO:
  - Needs to be of type Widget to fit in the body of the scaffold
 */

Flavor flavor = catppuccin.mocha;

const String githubString = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/></svg>
''';

const String linkedInString = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"/></svg>
''';

final Uri _url = Uri.parse('https://github.com/KnutHoltet');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

final Uri _url2 = Uri.parse('https://www.linkedin.com/in/knut-holtet-a22b0b1b8/');

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url');
  }
}


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
              color: flavor.subtext1
            )
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 44.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      colors: [
                        flavor.pink,
                        flavor.mauve,
                        flavor.sapphire
                      ]
                    )
                  ),
                  child: ElevatedButton(
                    onPressed: _launchUrl,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.string(
                            githubString,
                            color: flavor.crust,

                          ),
                        ),
                        Text(
                          "Github",
                          style: GoogleFonts.jetBrainsMono(
                            textStyle: TextStyle(
                              color: flavor.crust,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: 44.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                        colors: [
                          flavor.green,
                          flavor.yellow
                        ]
                    )
                ),
                child: ElevatedButton(
                  onPressed: _launchUrl2,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.string(
                          linkedInString,
                          color: flavor.crust,

                        ),
                      ),
                      Text(
                        "LinkedIn",
                        style: GoogleFonts.jetBrainsMono(
                            textStyle: TextStyle(
                                color: flavor.crust,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),



      ],
    );
  }
}
