import 'package:flutter/material.dart';
import './sign_paint.dart';


//选项标志
class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 13,
      width: 13,
      child: CustomPaint(
        painter: SignPlant(),
        child: const SizedBox(),
      ),
    );
  }
}

