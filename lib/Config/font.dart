import 'package:flutter/material.dart';
import './color.dart';

class KFont {
  //用户名称字体
  static TextStyle userNameStyle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
    height: 22 / 18,
  );

  //editorPage->topBar->selectButton
  static TextStyle topBarButtonStyle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 13,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    height: 17 / 13,
  );

  //editorPage->topBar->pushButton
  static TextStyle pushButtonStyle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    height: 18 / 18,
  );

  //搜索栏字体
  static TextStyle searchBarStyle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    //height: 22/18,
  );

  //搜索栏初始化提示字体
  static TextStyle searchBarInitStyle = TextStyle(
    fontFamily: 'MiSans',
    fontSize: 18,
    color: KColor.greyTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    //height: 22/18,
  );

  //editorPage->settingTag->tagList 标签数量字体
  static TextStyle tagCoutSytle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 13,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    height: 17 / 13,
  );

  //editorPage->settingTag->tagList->tag 标签里的名称字体
  static TextStyle tagStyle = const TextStyle(
      fontFamily: 'MiSans',
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none,
      height: 25 / 18);

   //editorPage->settingTag->tagList->tag 标签里的时间字体
   static TextStyle tagDateSytle = TextStyle(
    fontFamily: 'MiSans',
    fontSize: 13,
    color: KColor.greyTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    height: 17 / 13,
  );

    //toolBar
    static TextStyle toolBarStyle = const TextStyle(
      fontFamily: 'MiSans',
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none,
      height: 22 / 18);

  //editorPage->settingTag->editTag 编辑栏标题
  static TextStyle toolDetailStyle = TextStyle(
    fontFamily: 'MiSans',
    fontSize: 13,
    color: KColor.greyTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    height: 17 / 13,
  );

  //editorPage->settingTag->editTag->textfile 编辑栏标题
  static TextStyle toolInputStyle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    height: 25 / 18,
  );

  //卡片中次要信息字体  
  static TextStyle greyMsgStyle = TextStyle(
    fontFamily: 'MiSans',
    fontSize: 13,
    color: KColor.greyTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    height: 17 / 13,
  );

  //卡片里名称字体
  static TextStyle cardTitleStyle = const TextStyle(
      fontFamily: 'MiSans',
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none,
      height: 25 / 18);

  //editorPage->settingClass->classCard 中更新状体字体
  static TextStyle classStatusStyle = const TextStyle(
    fontFamily: 'MiSans',
    fontSize: 13,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    height: 25 / 13,
  );
  
}
