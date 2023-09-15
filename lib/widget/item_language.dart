import 'package:flutter/material.dart';
import 'package:phone_vibration_imessage/core/app_translations.dart';
import 'package:phone_vibration_imessage/core/model/language_model.dart';
import 'package:phone_vibration_imessage/screen/language/language_controller.dart';
import 'package:phone_vibration_imessage/utils/touchable.dart';

import '../core/theme/textstyles.dart';

class ItemLanguage extends StatelessWidget {
  const ItemLanguage({this.languageModel, this.controller, this.index});

  final LanguageModel? languageModel;
  final LanguageController? controller;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Touchable(
        onTap: () {
          controller?.changeLanguage(index ?? 0);
          AppTranslations.updateLocale(langCode: languageModel?.key ?? 'en');
        },
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white, width: 1))),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    languageModel?.name ?? '',
                    style: TextStyles.body1.setColor(Colors.white),
                  ),
                  Text(
                    languageModel?.subName ?? '',
                    style: TextStyles.body1.setColor(Colors.white),
                  )
                ],
              )),
              Icon(languageModel?.isChecked == true
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,color: Colors.white,)
            ],
          ),
        ));
  }
}
