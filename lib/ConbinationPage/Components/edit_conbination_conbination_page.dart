import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/index.dart';

class EditConbination extends StatefulWidget {
  final String conbinationId;
  final String conbinationTitle;
  final String difficultyLevel;
  final String lengthLevel;
  final String usabilityLevel;
  final String conbinationProfile;
  final double height;
  const EditConbination({
    super.key,
    required this.conbinationId,
    required this.conbinationTitle,
    required this.difficultyLevel,
    required this.lengthLevel,
    required this.usabilityLevel,
    required this.conbinationProfile,
    required this.height,
  });

  @override
  State<EditConbination> createState() => _EditConbination();
}

class _EditConbination extends State<EditConbination> {
  TextEditingController? conbinationIdController;
  TextEditingController? conbinationTitleController;

  TextEditingController? difficultyLevelController;
  TextEditingController? lengthLevelController;
  TextEditingController? usabilityLevelController;
  TextEditingController? conbinationProfileController;

  String? conbinationId;
  String? conbinationTitle;
  String? difficultyLevel;
  String? lengthLevel;
  String? usabilityLevel;
  String? conbinationProfile;

  @override
  void initState() {
    super.initState();
    conbinationId = widget.conbinationId;
    conbinationTitle = widget.conbinationTitle;
    difficultyLevel = widget.difficultyLevel;
    lengthLevel = widget.lengthLevel;
    usabilityLevel = widget.usabilityLevel;
    conbinationProfile = widget.conbinationProfile;

    conbinationIdController = TextEditingController(text: conbinationId);
    conbinationTitleController = TextEditingController(text: conbinationTitle);
    difficultyLevelController = TextEditingController(text: difficultyLevel);

    lengthLevelController = TextEditingController(text: lengthLevel);
    usabilityLevelController = TextEditingController(text: usabilityLevel);
    conbinationProfileController =
        TextEditingController(text: conbinationProfile);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 8 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 8 - 24,
      height: MediaQuery.of(context).size.height -
          widget.height -
          24 -
          24 -
          46 -
          32 -
          16,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ClipPath(
          clipper: RectangleClipper(),
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                        KString.editConbination,
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
                          KString.inputConbinationId,
                          style: KFont.toolDetailStyle,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 25,
                            child: TextField(
                              controller: conbinationIdController,
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
                          KString.inputConbinationName,
                          style: KFont.toolDetailStyle,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 25,
                            child: TextField(
                              controller: conbinationTitleController,
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
                          KString.inputDifficultyLevel,
                          style: KFont.toolDetailStyle,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 25,
                            child: TextField(
                              controller: difficultyLevelController,
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
                          KString.inputLengthLevel,
                          style: KFont.toolDetailStyle,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 25,
                            child: TextField(
                              controller: lengthLevelController,
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
                          KString.inputUsabilityLevel,
                          style: KFont.toolDetailStyle,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 25,
                            child: TextField(
                              controller: usabilityLevelController,
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
                          KString.inputConbinationProfile,
                          style: KFont.toolDetailStyle,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            child: TextField(
                          controller: conbinationProfileController,
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
          ),
        ),
      ),
    );
  }

  void cancel() {}

  void commit() {}
}

//通过裁剪遮住滚动项目越界
class RectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addRect(Rect.fromLTRB(-500, 0, 1920, size.height));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
