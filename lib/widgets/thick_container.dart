import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.white)
      ),
      padding: const EdgeInsets.all(3.0)
    );
  }
}
