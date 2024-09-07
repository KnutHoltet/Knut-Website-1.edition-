import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/body/about/about.dart';
import 'package:my_app/widgets/body/experience/experience.dart';
import 'package:my_app/widgets/body/projects/projects.dart';


final List<Widget> entries = <Widget> [const About(), const Experience(), const Projects()];

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context)  {
    // ListView.seperated and then About - Expericence - Projects

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return entries[index];
      },

      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.only(bottom: 128),
      ),
    );
  }
}
