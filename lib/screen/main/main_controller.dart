import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ad_manager.dart';
import '../../core/base/base_controller.dart';
import '../more/more_screen.dart';
import '../music/music_screen.dart';
import '../vibration/vibration_screen.dart';
import 'component/tab_nav.dart';
import 'keep_alive_page.dart';
import 'model/screen_model.dart';


class MainController extends BaseController {

  final screensData = <ScreenModel>[
    ScreenModel(
        name: "Vibration",
        screen: KeepAlivePage(child: const VibrationScreen()),
        navKey: 1,
        icon: Icons.vibration),
    ScreenModel(
        name: "Music",
        screen: KeepAlivePage(child: const MusicScreen()),
        navKey: 2,
        icon: Icons.settings),
    ScreenModel(
        name: "More",
        screen: KeepAlivePage(child: const MoreScreen()),
        navKey: 3,
        icon: Icons.more_horiz),
  ];

  final navMenuIndex = 0.obs;

  ScreenModel get currentScreenModel => screensData[navMenuIndex()];

  // store the pages stack.
  List<Widget>? _pages;

  // get navigators.
  List<Widget> get menuPages =>
      _pages ??= screensData.map((e) => TabNav(e)).toList();

  // widget stuffs.
  List<BottomNavigationBarItem> get navMenuItems => screensData.map((e) {
        return BottomNavigationBarItem(icon: Icon(e.icon), label: e.name);
      }).toList();

  void onTapBottomBar(int index) {
    navMenuIndex.value = index;
  }

  void popToRoot() {
    (currentScreenModel.screen as KeepAlivePage).popToRoot();
  }


}
