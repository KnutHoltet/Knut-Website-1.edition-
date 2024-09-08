import 'package:flutter/material.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/body/experience/cards/cards.dart';

Flavor flavor = catppuccin.mocha;

class Experience extends StatelessWidget {
  const Experience({super.key});


  @override
  Widget build(BuildContext context) {

    /* Dato - Tittel - Beskrivelse - Ferdigheter */
    return const Column(
      children: [
        MouseRegionState("2022 — NÅ", "Bachelor - Informatikk: Design bruk, interaksjon, UiO", "I tillegg til design kurs, har jeg tatt ekstra emner i programmering.", ["Kotlin", "Python", "Java", "Jetpack Compose", "Relasjonsdatabaser (SQL)", "Algoritmer"]),
        MouseRegionState("2021 — 2022", "Årsstudium - Anvendt Datateknologi, OsloMet", "Her fikk jeg hands on praktisk prøve meg på, som navnet sier, å anvende datateknologi.", ["HTML/CSS", "Javascript", "DataWiz", "Webhosting", "Prototyping"]) ],
    );
  }
}






