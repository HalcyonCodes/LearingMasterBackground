import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/index.dart';

class Tag extends StatelessWidget {
  final String tagName;
  final String date;
  final Function? onClick;
  const Tag({super.key, required this.tagName, required this.date, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick!(),
      child: Container(
        decoration: BoxDecoration(
          color: KColor.containerColor,
          boxShadow: [KShadow.shadow],
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.only(bottom: 12),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                decoration: BoxDecoration(
                  color: KColor.primaryColor,
                  borderRadius: BorderRadius.circular(99),
                ),
                height: 54,
                width: 54,
                alignment: Alignment.center,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    'Svg/tag.svg',
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              width: 12,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    tagName,
                    style: KFont.tagStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '创建于 $date',
                    style: KFont.tagDateSytle,
                  )
                ]),
          ]),
        ),
      ),
    );
  }
}
