import 'package:flutter/material.dart';
import 'package:learning_master_background/Config/index.dart';
import './sign.dart';

//topBar各种功能选项按钮
class TopBarSelectButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const TopBarSelectButton(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 17,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 17,
                child: Text(
                  text,
                  style: KFont.topBarButtonStyle,
                )),
            const SizedBox(
              width: 6,
            ),
            isSelected
                ? Container(
                  height: 17,
                  alignment: Alignment.center,
                  child: const Sign())
                : const SizedBox(
                    width: 13,
                  )
          ],
        ),
      ),
    );
  }
}
