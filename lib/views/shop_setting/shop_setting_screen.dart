import 'package:emart_seller/const/color.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/custome_textfeld.dart';
import 'package:flutter/material.dart';

import '../../const/string.dart';
import '../widgets/text_style.dart';

class ShopSetting extends StatelessWidget {
  const ShopSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(
          text: shopSetting,
          size: 16.0,
        ),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(
              label: shopname,
              hint: nameHint,
            ),
            10.heightBox,
            customTextField(
              label: address,
              hint: shopAddressHint,
            ),
            10.heightBox,
            customTextField(
              label: mobile,
              hint: shopMobileHint,
            ),
            10.heightBox,
            customTextField(
              label: website,
              hint: shopWebsiteHint,
            ),
            10.heightBox,
            customTextField(
              isDesc: true,
              label: description,
              hint: shopDiscHint,
            ),
          ],
        ),
      ),
    );
  }
}