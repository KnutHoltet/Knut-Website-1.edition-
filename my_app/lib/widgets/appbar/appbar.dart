import 'package:flutter/material.dart';


// Kan bruke PreferedSizeWidget her men da maa henholdsvis metodene for de
// implementeres
class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: const Text("hei")
    );
  }
}


// THIS IS THE OPTIMAL WAY TO DO IT
PreferredSizeWidget customAppBar() {
  return AppBar(
    backgroundColor: Colors.green,
    title: const Text("nokn")
  );
}