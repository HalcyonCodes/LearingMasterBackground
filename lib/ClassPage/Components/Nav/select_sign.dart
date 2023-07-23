import 'package:flutter/material.dart';
import 'package:learning_master_background/Config/color.dart';
import 'package:flutter_svg/svg.dart';

class SelectSign extends StatelessWidget {
  final bool isSelect;
  final String iconPath;
  final Function()? onClick;
  const SelectSign(
      {super.key,
      required this.isSelect,
      required this.iconPath,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return isSelect
        ? InkWell(
            onTap: onClick,
            borderRadius: BorderRadius.circular(8),
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: KColor.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  height: 23,
                  width: 23,
                  child: SvgPicture.asset(
                    iconPath,
                    color: Colors.white,
                  ),
                )),
          )
        : InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onClick,
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: KColor.navColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  height: 23,
                  width: 23,
                  child: SvgPicture.asset(
                    iconPath,
                    color: Colors.white,
                  ),
                )),
          );
  }
}
