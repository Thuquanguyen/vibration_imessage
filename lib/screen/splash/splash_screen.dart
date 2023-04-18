import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/assets/app_assets.dart';
import '../../core/common/imagehelper.dart';
import '../../utils/app_scaffold.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    if (isCheck) {
      isCheck = false;
      controller.onInit();
    }
    return AppScaffold(
      color: Color.fromRGBO(245, 245, 245, 1),
      body: Container(
          child: ImageHelper.loadFromAsset(
        AppAssets.icSplat,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      )),
      appBarHeight: 0,
      hideAppBar: true,
      hideBackButton: true,
    );
  }
}
