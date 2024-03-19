import 'package:emart_seller/const/color.dart';
import 'package:emart_seller/const/images.dart';
import 'package:emart_seller/views/widgets/custome_textfeld.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../const/string.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(
          text: editProfile,
          size: 16.0,
        ),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              imgProduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: whiteColor
              ),
                onPressed: () {}, child: normalText(text: changeImage,color: fontGrey)),
                10.heightBox,

                Divider(color: whiteColor,),
                customTextField(label: name , hint: "eg. Admin name"),
                10.heightBox,
                customTextField(label: password , hint: passwordHint),
                10.heightBox,
                customTextField(label: confirmpass , hint: passwordHint),

          ],
        ),
      ),
    );
  }
}
