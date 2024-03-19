import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/dashboard_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appbarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context,
                    title: products, count: "80", icon: icProducts),
                dashboardButton(
                  context,
                  title: order,
                  count: "20",
                  icon: icOrders,
                ),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(
                  context,
                  title: rating,
                  count: "40",
                  icon: icStar,
                ),
                dashboardButton(
                  context,
                  title: totalSales,
                  count: "30",
                  icon: icOrders,
                ),
              ],
            ),
            10.heightBox,
            Divider(),
            10.heightBox,
            boldText(text: popular, color: fontGrey, size: 16.0),
            20.heightBox,
            ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                3,
                (index) => ListTile(
                  onTap: (){},
                  leading: Image.asset(
                    imgProduct,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,

                  ),
                  title: boldText(text: "Product title",color: fontGrey),
                  subtitle: normalText(text: "\$40.0",color: darkFontGrey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
