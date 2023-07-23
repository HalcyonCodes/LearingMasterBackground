import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../../../Config/index.dart';
import './select_sign.dart';
import '../../../Route/application.dart';

class Nav extends StatefulWidget {
  final int selectIndex;
  final String avatarUrl;
  final String userName;

  const Nav(
      {super.key,
      required this.avatarUrl,
      required this.userName,
      required this.selectIndex});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width <= 1920
          ? 134
          : (MediaQuery.of(context).size.width - 24) / 24 * 2 - 24,
      height: MediaQuery.of(context).size.height - 24 * 2,
      decoration: BoxDecoration(
        color: KColor.navColor,
        boxShadow: [KShadow.shadow],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 86,
                  height: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: KColor.navColor,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.avatarUrl),
                    radius: 50,
                  )),
              const SizedBox(
                height: 12,
              ),
              Text(
                widget.userName,
                style: KFont.userNameStyle,
              ),
              const SizedBox(
                height: 36,
              ),
              SelectSign(
                isSelect: widget.selectIndex == 0 ? true : false,
                iconPath: 'Svg/github.svg',
                onClick: firstSelectOnClick,
              ),
              const SizedBox(
                height: 20,
              ),
              SelectSign(
                isSelect: widget.selectIndex == 1 ? true : false,
                iconPath: 'Svg/github.svg',
                onClick: secondSelectOnClick,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void firstSelectOnClick() {
    Application.router!.navigateTo(context, '/EditorPage',replace: true,transition: TransitionType.fadeIn);
  }

  void secondSelectOnClick() {
    //Application.router!.navigateTo(context, '/ClassPage');
  }
}
