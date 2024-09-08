import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MouseRegionState extends StatefulWidget {
  const MouseRegionState(this.toDate, {super.key});

  final String toDate;

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

  @override
  Widget build(BuildContext context) {
    String toDate = getDate();
    return Card(
      child: MouseRegion(
        onEnter: _flipHoverState,
        onExit: _flipHoverState,
        child: AnimatedContainer(
          color: hover ? flavor.peach : flavor.base,
          duration: const Duration(milliseconds: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  /* TODO: Date time stuff */
                  Column(
                    children: [
                      Text(toDate)
                    ],
                  ),

                  /* TODO: Title - desc - skills */
                  Column(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

