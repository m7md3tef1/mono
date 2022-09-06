import 'package:flutter/material.dart';

import '../../core/color_manager/color_manager.dart';
class CustomScaffold extends StatelessWidget {
  var appBar;
  var body;
  var navBar;

  CustomScaffold({Key? key,this.appBar, this.body,this.navBar}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        bottomNavigationBar: navBar,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
