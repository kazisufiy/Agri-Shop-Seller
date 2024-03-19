import 'package:emart_seller/const/color.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

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
        title: boldText(text: "Product title",color: fontGrey),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 3,
                        viewportFraction: 1.0,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgProduct,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                        10.heightBox, 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                             
                     boldText(text: "Product title",color: fontGrey),
                      10.heightBox,
                      Row(
                        children: [
                           boldText(text: "Category",color:  fontGrey,size: 16.0),
                           10.widthBox,
                           normalText(text: "Subcategory",color:  fontGrey,size: 16.0),

                        ],
                      ),
                      10.heightBox,
                      VxRating(
                        isSelectable: false,
                        value: 3.0,
                        onRatingUpdate: (value) {},
                        normalColor: textfieldGrey,
                        selectImage: golden,
                        count: 5,
                        size: 25,
                        maxRating: 5,
                      ),
                      10.heightBox,
                      boldText(text: "\$300.0",color: redColor,size: 18.0),
                      10.heightBox,
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: boldText(text: "Quantity",color: fontGrey),
                          ),
                          normalText(text: "20 items",color: fontGrey),
                        ],
                      )
                      ],
                      
                     ).box.padding(EdgeInsets.all(8)).white.make(),
                     
                   ),
                   Divider(),
                   20.heightBox,
                   boldText(text: "Description"),
                   10.heightBox,
                   normalText(text: "Description of this product",color: fontGrey),

        ],
      ),
    );
  }
}