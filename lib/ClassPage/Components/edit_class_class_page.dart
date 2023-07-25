import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/index.dart';

class ClassPageEditClass extends StatefulWidget {
  final String? classId;
  final String? className;
  final String? classStatus;
  final String? classProfile;
  const ClassPageEditClass(
      {super.key,
      this.classId,
      this.className,
      this.classStatus,
      this.classProfile});

  @override
  State<ClassPageEditClass> createState() => _ClassPageEditClassState();
}

class _ClassPageEditClassState extends State<ClassPageEditClass> {
  TextEditingController? classIdController;
  TextEditingController? classNameController;
  TextEditingController? classStatusController;
  TextEditingController? classProfileController;

  String? classId;
  String? className;
  String? classStatus;
  String? classProfile;

  @override
  void initState() {
    super.initState();
    classId = widget.classId;
    className = widget.className;
    classStatus = widget.classStatus;
    classProfile = widget.classProfile;

    classIdController = TextEditingController(text: classId);
    classNameController = TextEditingController(text: className);
    classStatusController = TextEditingController(text: classStatus);
    classProfileController = TextEditingController(text: classProfile);
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
                  KString.editClass,
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
                    KString.inputClassId,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: classIdController,
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
                    KString.inputClassName,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: classNameController,
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
                    KString.inputClassStatus,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: classStatusController,
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
                    KString.inputClassProfile,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      child: TextField(
                        controller: classProfileController,
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
}
