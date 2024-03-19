import 'package:emart_seller/const/color.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/product_screen/componants/product_dropdown.dart';
import 'package:emart_seller/views/product_screen/componants/product_images.dart';
import 'package:emart_seller/views/widgets/custome_textfeld.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddNewProduct extends StatelessWidget {
  const AddNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
        ),
        title: boldText(text: "Add Product", size: 16.0, color: fontGrey),
        actions: [
          TextButton(
              onPressed: () {}, child: boldText(text: save, color: fontGrey))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics( ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField(hint: "eg. BMW", label: "Product name"),
              10.heightBox,
              customTextField(
                hint: "eg. Nice Product",
                label: "Description",
                isDesc: true,
              ),
              customTextField(hint: "eg. \$100", label: "Price"),
              10.heightBox,
              customTextField(hint: "eg. \$100", label: "Price"),
              10.heightBox,
              customTextField(hint: "eg. 20", label: "Quantity"),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              Divider(),
              boldText(text: "Choose product image"),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  3,
                  (index) => productImages(
                    label: "${index + 1}"
                  ),
                ),
              ),
              5.heightBox,
              normalText(text: "First image will be your display image",color: lightGrey),
            ],
          ),
        ),
      ),
    );
  }
}
