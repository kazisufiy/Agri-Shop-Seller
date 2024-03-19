import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/messages_screen/messages_screen.dart';
import 'package:emart_seller/views/profile_screen/edit_screen.dart';
import 'package:emart_seller/views/shop_setting/shop_setting_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: setting, size: 16.0),
        actions: [
          IconButton(onPressed: (){
            Get.to(() => EditProfileScreen());
          }, icon: Icon(Icons.edit,color: whiteColor,)),
          TextButton(onPressed: (){}, child: normalText(text: logout))
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imgProduct).box.roundedFull.clip(Clip.antiAlias).make(),
            title: boldText(text: "Vendor name"),
            subtitle: normalText(text: "vendoremail@agri.com"),
          ),
          Divider(),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(profileButtonIcons.length, (index) => ListTile(
                onTap: (){
                  switch (index) {
                    case 0:
                    Get.to(() => ShopSetting());
                      break;
                    case 1:
                    Get.to(() => MessagesScreen());
                      
                      break;
                    default:
                  }
                },
                leading: Icon(profileButtonIcons[index],color: whiteColor,),
                title: normalText(text: profileButtonTitle[index]),
              )),
            ),
          )
        ],
      ),
    );
  }
}