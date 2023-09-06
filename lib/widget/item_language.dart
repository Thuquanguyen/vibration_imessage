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
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.white, width: 1))),
          child: Row(
            children: [
              Icon(
                Icons.check_outlined,
                color: languageModel?.isChecked == true
                    ? Colors.red
                    : Colors.transparent,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Text(
                languageModel?.name ?? '',
                style: TextStyles.body1.setColor(
                    languageModel?.isChecked == true
                        ? Colors.red
                        : Colors.white),
              )),
              Text(
                languageModel?.name ?? '',
                style: TextStyles.body1.setColor(
                    languageModel?.isChecked == true
                        ? Colors.red
                        : Colors.white),
              )
            ],
          ),
        ));
  }
}
