import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Config/index.dart';
import 'package:flutter_svg/svg.dart';

//ClassPage->leessonStore->lessonSearch

//课程卡片列表顶部搜索栏
class ConbinationPageClassSearch extends StatefulWidget {
  final String? initSearchString;
  const ConbinationPageClassSearch({super.key, this.initSearchString});

  @override
  State<ConbinationPageClassSearch> createState() => _ConbinationPageClassSearchState();
}

class _ConbinationPageClassSearchState extends State<ConbinationPageClassSearch> {
  late TextEditingController textEditController;
  @override
  void initState() {
    super.initState();
    textEditController = TextEditingController(text: widget.initSearchString);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: 46,
      decoration: BoxDecoration(
        color: KColor.containerColor,
        boxShadow: [KShadow.shadow],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 22,
                width: 22,
                child: SvgPicture.asset(
                  'svg/搜索.svg',
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Container(
                  height: 22,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: textEditController,
                    maxLines: 1,
                    style: KFont.searchBarStyle,
                    autofocus: false,
                    cursorColor: Colors.black,
                    cursorWidth: 2,
                    cursorHeight: 22,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(200),
                    ],
                    maxLength: null,
                    onSubmitted: onSubmitted,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: KString.initInClassSearchString,
                      contentPadding: EdgeInsets.zero,
                      hintStyle: KFont.searchBarInitStyle,
                      isDense: true,
                      hintMaxLines: 1,
                    ),
                    strutStyle: const StrutStyle(leading: 0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSubmitted(String text) {
    if (text != '') {
      //1.viewmodel搜索过程
      //2.修改url
      //UrlController.setClassSearchUrl(text);
    } else {
      //UrlController.setClassSearchUrl(text);
    }
  }
}