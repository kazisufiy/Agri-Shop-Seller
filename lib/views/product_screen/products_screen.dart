import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/product_screen/add_new_product.dart';
import 'package:emart_seller/views/product_screen/product_details.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart' as intl;
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddNewProduct());
        },
        child: Icon(
          Icons.add,
          color: whiteColor,
        ),
        backgroundColor: purpleColor,
      ),
      appBar: appbarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20,
              (index) => ListTile(
                onTap: () {
                  Get.to(() => ProductDetails());
                },
                leading: Image.asset(
                  imgProduct,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                title: boldText(text: "Product title", color: fontGrey),
                subtitle: Row(
                  children: [
                    normalText(text: "\$40.0", color: darkFontGrey),
                    10.widthBox,
                    boldText(text: "Featured",color: green)
                  ],
                ),
                trailing: VxPopupMenu(
                  arrowSize: 0.0,
                    child: Icon(Icons.more_vert_rounded),
                    menuBuilder: () => Column(
                          children: List.generate(
                            popupMenuTitle.length,
                            (index) => Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Icon(popupMenuIcons[index],),
                                  10.widthBox,
                                  normalText(text: popupMenuTitle[index], color: darkFontGrey)
                                ],
                              ).onTap(() {}),
                            ),
                          ),
                        ).box.white.rounded.width(200).make(),
                    clickType: VxClickType.singleClick),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
