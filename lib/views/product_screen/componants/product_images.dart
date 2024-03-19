import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget productImages({required label, onPress}) {
  return "$label"
      .text
      .makeCentered()
      .box
      .color(lightGrey)
      .size(100, 100)
      .roundedSM
      .make();
}
