import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    required this.baseColor,
    required this.baseColor2,
    required this.baseColor3,
    required this.baseColor4,
    required this.callback,
  }) : super(key: key);

  final String baseColor;
  final String baseColor2;
  final String baseColor3;
  final String baseColor4;
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // vamos a mostrar los elementos en un row
        child: Row(children: [
          Expanded(
              flex: 4,
              child: GestureDetector(
                  child: Container(
                      height: 100, color: ColorUtils.FromHex(baseColor))))
        ]));
  }
}
