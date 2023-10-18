import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:phone_vibration_imessage/ad_manager.dart';
import 'package:phone_vibration_imessage/core/theme/app_colors.dart';
import 'package:phone_vibration_imessage/core/theme/textstyles.dart';
import 'package:phone_vibration_imessage/language/i18n.g.dart';
import 'package:phone_vibration_imessage/routes/app_pages.dart';
import 'package:phone_vibration_imessage/utils/app_scaffold.dart';
import 'package:phone_vibration_imessage/utils/touchable.dart';
import 'package:phone_vibration_imessage/widget/item_language.dart';
import 'package:get/get.dart';

import '../../admod_handle.dart';
import '../../core/theme/dimens.dart';
import 'language_controller.dart';

class LanguageScreen extends GetView<LanguageController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hideAppBar: true,
      appBarHeight: 0,
      color: AppColors.customColor30,
      hideBackButton: true,
      body: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Container(
              color: AppColors.customColor41,
              padding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                  top: Dimens.topSafeAreaPadding + 10,
                  bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    I18n().selectLanguageStr.tr,
                    style: TextStyles.title3.setColor(Colors.white),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Touchable(
                        onTap: () {
                          Get.toNamed(Routes.WELCOME);
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              I18n().doneStr.tr.toUpperCase(),
                              style: TextStyles.headline2
                                  .setColor(Colors.white)
                                  .setHeight(1.2),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Obx(() => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.white, width: 1),
                        left: BorderSide(color: Colors.white, width: 1),
                        right: BorderSide(color: Colors.white, width: 1),
                      )),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemBuilder: (ctx, index) => ItemLanguage(
                          index: index,
                          languageModel: controller.listLanguages.value[index],
                          controller: controller,
                        ),
                        itemCount: controller.listLanguages.length,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
