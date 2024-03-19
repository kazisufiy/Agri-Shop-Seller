import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/messages_screen/chart_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: darkFontGrey,
          ),
        ),
        title: boldText(text: messages, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                20,
                (index) => ListTile(
                  onTap: (){
            Get.to(() => ChatScreen());
                  },
                      leading: CircleAvatar(
                        backgroundColor: purpleColor,
                        child: Icon(Icons.person , color: whiteColor,),
                      ),
                      title: boldText(text: "Username" , color: fontGrey),
                      subtitle: normalText(text: "last message...." , color: darkFontGrey),
                      trailing: normalText(text: "10:45",color: darkFontGrey),
                    )),
          ),
        ),
      ),
    );
  }
}
