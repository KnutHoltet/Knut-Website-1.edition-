import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context)  {
    // return const Text.rich(
    //   TextSpan(
    //     text: "Body",
    //     style: TextStyle(color: Color(0xffe2e8f0)),
    //   )
    // );
    Flavor flavor = catppuccin.latte;
    Color cat = flavor.mauve;


    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: cat,
          child: const Center(
              child: Text(
                  'Entry A',
                  style: TextStyle(color: Color(0xffe2e8f0),),
              )
          ),
        ),
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
