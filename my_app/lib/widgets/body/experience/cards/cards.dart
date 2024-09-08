import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MouseRegionState extends StatefulWidget {
  const MouseRegionState(this.toDate, this.titel, this.description, this.skills, {super.key});

  final String toDate;
  final String titel;
  final String description;
  final List<String> skills;

  @override
  State<MouseRegionState> createState() => _MouseRegionState();
}


class _MouseRegionState extends State<MouseRegionState> {
  bool hover = false;
  Flavor flavor = catppuccin.mocha;


  void _flipHoverState(PointerEvent details) {
    setState(() {
      hover = !hover;
    });
  }

  String getDate() {
    return widget.toDate;
  }

  String getTitle() {
    return widget.titel;
  }

  String getDescription() {
    return widget.description;
  }

  List<String> getSkills() {
    return widget.skills;
  }

  @override
  Widget build(BuildContext context) {

    String toDate = getDate();
    String titel = getTitle();
    String description = getDescription();
    List<String> skills = getSkills();

    return Card(
      shadowColor: Colors.transparent,
      child: MouseRegion(
        onEnter: _flipHoverState,
        onExit: _flipHoverState,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: hover ? flavor.green : flavor.teal,
            borderRadius: BorderRadius.circular(3),
          ),
          duration: const Duration(milliseconds: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  /* TODO: Date time stuff */
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(64),
                        child: Text(
                          toDate,
                          style: GoogleFonts.jetBrainsMono(
                            textStyle: TextStyle(
                              color: flavor.mantle,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                        ),
                      )
                    ],
                  ),

                  /* TODO: Title - desc - skills */
                  Column(
                    children: [
                      Text(titel, style: GoogleFonts.jetBrainsMono(
                        textStyle: TextStyle(color: flavor.crust, fontWeight: FontWeight.bold)
                      ),),
                      Text(description),
                      Row(
                        children: [
                          /* TODO
                          *
                          *  ULTIMATE REFACTOR DETTE BEKLAGER TIL ALLE SOM
                          *  SER DENNE KODEN
                          *
                          *  MEN SIDEN SKAL OPP OM 3 DAGER OG JEG BARE CANT BE ASKED
                          *
                          * */

                          Center(
                            child: Card.outlined(
                              color: flavor.sapphire,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    skills[0],
                                  style: GoogleFonts.jetBrainsMono(
                                    textStyle: TextStyle(
                                      color: flavor.crust,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Card.outlined(
                              color: flavor.sapphire,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  skills.length > 1 ? skills[1] : "",
                                  style: GoogleFonts.jetBrainsMono(
                                      textStyle: TextStyle(
                                        color: flavor.crust,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Card.outlined(
                              color: flavor.sapphire,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  skills.length > 2 ? skills[2] : "",
                                  style: GoogleFonts.jetBrainsMono(
                                      textStyle: TextStyle(
                                        color: flavor.crust,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Card.outlined(
                              color: flavor.sapphire,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  skills.length > 3 ? skills[3] : "",
                                  style: GoogleFonts.jetBrainsMono(
                                      textStyle: TextStyle(
                                        color: flavor.crust,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Card.outlined(
                              color: flavor.sapphire,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  skills.length > 4 ? skills[4] : "",
                                  style: GoogleFonts.jetBrainsMono(
                                      textStyle: TextStyle(
                                        color: flavor.crust,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),


                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

