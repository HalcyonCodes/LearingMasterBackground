import 'package:flutter/material.dart';
import 'package:learning_master_background/Config/color.dart';
import 'package:learning_master_background/Config/index.dart';

//推送按钮
class PushButton extends StatelessWidget {
  final Function()? draft;
  final Function()? push;

  const PushButton({super.key, required this.draft, required this.push});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      width: 168,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: draft,
            child: Container(
              width: 84,
              height: 41,
              decoration: BoxDecoration(
                color: KColor.navColor,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  24, 
                  13, 
                  24, 
                  10),
                child: SizedBox(
                    height: 18,
                    child: Text(
                      KString.draftButton,
                      style: KFont.pushButtonStyle,
                      //strutStyle: const StrutStyle(height: 1.0,leading: 0),
                    )),
              ),
            ),
          ),
          InkWell(
            onTap: push,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
            child: Container(
              width: 84,
              height: 41,
              decoration: BoxDecoration(
                color: KColor.primaryColor,
                borderRadius: const BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  24, 
                  13, 
                  24, 
                  10),
                child: SizedBox(
                    height: 18,
                    child: Text(
                      KString.pushButton,
                      style: KFont.pushButtonStyle,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
