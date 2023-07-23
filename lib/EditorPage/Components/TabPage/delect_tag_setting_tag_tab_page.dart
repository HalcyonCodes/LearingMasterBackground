import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/index.dart';

class DelectTag extends StatefulWidget {
  final String? tagName;
  const DelectTag({super.key, required this.tagName});

  @override
  State<DelectTag> createState() => _DelectTagState();
}

class _DelectTagState extends State<DelectTag> {

  String? tagName;
  @override
  void initState() {
    super.initState();
    tagName = widget.tagName;

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 8 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 8 - 24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [KShadow.shadow],
              color: KColor.containerColor,
            ),
            height: 46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 24,
                ),
                SizedBox(
                  height: 22,
                  width: 22,
                  child: SvgPicture.asset('Svg/delete-fill.svg'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  KString.delectTag,
                  style: KFont.toolBarStyle,
                  strutStyle: const StrutStyle(height: 0, leading: 0),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: cancel,
                  child: Container(
                    width: 84,
                    height: 46,
                    decoration: BoxDecoration(
                      color: KColor.navColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                      child: SizedBox(
                          height: 18,
                          child: Text(
                            KString.cancelButton,
                            style: KFont.pushButtonStyle,
                          )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: commit,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
                  child: Container(
                    width: 84,
                    height: 46,
                    decoration: BoxDecoration(
                      color: KColor.primaryColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                      child: SizedBox(
                          height: 18,
                          child: Text(
                            KString.commitButton,
                            style: KFont.pushButtonStyle,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: KColor.containerColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [KShadow.shadow],
            ),
            height: 78,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    KString.delectTagTip,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: Text(
                        tagName!,
                        style: KFont.toolInputStyle,
                      ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void cancel() {}

  void commit() {}
}
