import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/index.dart';

class ClassPageEditLesson extends StatefulWidget {
  final String? lessonId;
  final String? lessonName;
  final String? lessonStatus;
  final String? lessonProfile;
  const ClassPageEditLesson(
      {super.key,
      this.lessonId,
      this.lessonName,
      this.lessonStatus,
      this.lessonProfile});

  @override
  State<ClassPageEditLesson> createState() => _ClassPageEditLessonState();
}

class _ClassPageEditLessonState extends State<ClassPageEditLesson> {
  TextEditingController? lessonIdController;
  TextEditingController? lessonNameController;
  TextEditingController? lessonStatusController;
  TextEditingController? lessonProfileController;

  String? lessonId;
  String? lessonName;
  String? lessonStatus;
  String? lessonProfile;

  @override
  void initState() {
    super.initState();
    lessonId = widget.lessonId;
    lessonName = widget.lessonName;
    lessonStatus = widget.lessonStatus;
    lessonProfile = widget.lessonProfile;

    lessonIdController = TextEditingController(text: lessonId);
    lessonNameController = TextEditingController(text: lessonName);
    lessonStatusController = TextEditingController(text: lessonStatus);
    lessonProfileController = TextEditingController(text: lessonProfile);
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
                  child: SvgPicture.asset('Svg/edit.svg'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  KString.editLesson,
                  style: KFont.toolBarStyle,
                  strutStyle: const StrutStyle(height: 0, leading: 0),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: editContent,
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: KColor.primaryColor,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Padding(
                        padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                        child: SizedBox(
                            height: 18,
                            child: Text(
                              KString.enterEditContent,
                              style: KFont.pushButtonStyle,
                            )),
                      ),]
                    ),
                  ),
                ),
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
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    KString.inputLessonId,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: lessonIdController,
                        maxLines: 1,
                        style: KFont.toolInputStyle,
                        autofocus: false,
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        cursorHeight: 22,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(200),
                        ],
                        maxLength: null,
                        onSubmitted: (i) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintStyle: KFont.toolInputStyle,
                          isDense: true,
                          hintMaxLines: 1,
                        ),
                        strutStyle: const StrutStyle(leading: 0),
                      )),
                ],
              ),
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    KString.inputLessonName,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: lessonNameController,
                        maxLines: 1,
                        style: KFont.toolInputStyle,
                        autofocus: false,
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        cursorHeight: 22,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(200),
                        ],
                        maxLength: null,
                        onSubmitted: (i) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintStyle: KFont.toolInputStyle,
                          isDense: true,
                          hintMaxLines: 1,
                        ),
                        strutStyle: const StrutStyle(leading: 0),
                      )),
                ],
              ),
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    KString.inputLessonSort,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: lessonStatusController,
                        maxLines: 1,
                        style: KFont.toolInputStyle,
                        autofocus: false,
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        cursorHeight: 22,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(200),
                        ],
                        maxLength: null,
                        onSubmitted: (i) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintStyle: KFont.toolInputStyle,
                          isDense: true,
                          hintMaxLines: 1,
                        ),
                        strutStyle: const StrutStyle(leading: 0),
                      )),
                ],
              ),
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
            height: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    KString.inputLessonProfile,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      child: TextField(
                    controller: lessonProfileController,
                    maxLines: 10,
                    style: KFont.toolInputStyle,
                    autofocus: false,
                    cursorColor: Colors.black,
                    cursorWidth: 2,
                    cursorHeight: 22,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(700),
                    ],
                    maxLength: null,
                    onSubmitted: (i) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      hintStyle: KFont.toolInputStyle,
                      isDense: true,
                      hintMaxLines: 1,
                    ),
                    strutStyle: const StrutStyle(leading: 0),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void cancel() {}

  void commit() {}

  void editContent() {}
}
