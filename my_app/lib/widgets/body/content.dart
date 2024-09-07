import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widgets/body/about/about.dart';
import 'package:my_app/widgets/body/experience/experience.dart';
import 'package:my_app/widgets/body/projects/projects.dart';


final List<Widget> wid = <Widget> [const About(), const Experience()];

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context)  {
    // ListView.seperated and then About - Expericence - Projects

    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        const About(),

        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
