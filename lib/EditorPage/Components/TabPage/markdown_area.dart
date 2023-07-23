import 'package:flutter/material.dart';
import '../../../Config/index.dart';

//markdown展示组件
class MarkDownArea extends StatelessWidget {
  const MarkDownArea({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      height: MediaQuery.sizeOf(context).height - 24 - 24 - 32 - 41,
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24 - 24 - 24 - 134 - 24) / 2
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 11 - 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: KColor.containerColor,
        boxShadow: [KShadow.shadow],
      ),
      child: const SizedBox(),
    );
  }
}