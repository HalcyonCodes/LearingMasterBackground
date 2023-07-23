import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/index.dart';

class AddTag extends StatefulWidget {
  const AddTag({super.key, });

  @override
  State<AddTag> createState() => _AddTagState();
}

class _AddTagState extends State<AddTag> {
  TextEditingController? editingController;
  String? tagName;

  @override
  void initState() {
    super.initState();
    editingController = TextEditingController();
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
                  const SizedBox(width: 24,),
                  SizedBox(
                    height: 22,
                    width: 22,
                    child: SvgPicture.asset('Svg/plus-circle-fill.svg'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    KString.editTag,
                    style: KFont.toolBarStyle,
                    strutStyle: const StrutStyle(height: 0,leading: 0),
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
                padding: const EdgeInsets.fromLTRB(
                  24, 
                  16, 
                  24, 
                  8),
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
                borderRadius: const BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  24, 
                  16, 
                  24, 
                  8),
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
                    KString.editTag,
                    style: KFont.toolDetailStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 25,
                      child: TextField(
                        controller: editingController,
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
          )
        ],
      ),
    );
  }

  
  void cancel(){

  }

  void commit(){}

}
