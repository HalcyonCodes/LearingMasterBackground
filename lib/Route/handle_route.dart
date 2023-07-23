import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

//----页面-----
import '../EditorPage/editor_page.dart';
import '../ClassPage/class_page.dart';

//---
Handler editorPageHandle = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return EditorPage();
});

Handler classPageHandle = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return ClassPage();
});
