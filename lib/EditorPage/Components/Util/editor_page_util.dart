class EditorPageUtil {
  //EditroPage->TabPage : 滚动pageview到指定index页面
  Function? _scrollPageView;
  Function? get scrollPageview => _scrollPageView;
  void setFuncScrollPageView(Function? i) {
    _scrollPageView = i;
  }
}
