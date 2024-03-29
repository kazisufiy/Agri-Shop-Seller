import "package:emart_seller/const/const.dart";
import "package:emart_seller/views/widgets/text_style.dart";

Widget ourButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: normalText(text: title, size: 16.0),
  );
}
