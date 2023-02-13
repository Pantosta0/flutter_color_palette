import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Center(
            child: SingleChildScrollView(
          child: Column(children: [
            ColorPalette(
              baseColor: 'FFD4D4',
              baseColor2: 'FFFFE8',
              baseColor3: 'CDE990',
              baseColor4: 'AACB73',
              callback: showColor,
            ),
            ColorPalette(
              baseColor: '7286D3',
              baseColor2: '8EA7E9',
              baseColor3: 'E5E0FF',
              baseColor4: 'FFF2F2',
              callback: showColor,
            ),
            ColorPalette(
              baseColor: 'B9F3FC',
              baseColor2: 'AEE2FF',
              baseColor3: '93C6E7',
              baseColor4: 'FEDEFF',
              callback: showColor,
            ),
            ColorPalette(
              baseColor: '635985',
              baseColor2: '443C68',
              baseColor3: '393053',
              baseColor4: '18122B',
              callback: showColor,
            ),
            ColorPalette(
              baseColor: '3D1766',
              baseColor2: '6F1AB6',
              baseColor3: 'FF0032',
              baseColor4: 'CD0404',
              callback: showColor,
            ),
            ColorPalette(
              baseColor: 'A75D5D',
              baseColor2: 'D3756B',
              baseColor3: 'F0997D',
              baseColor4: 'FFC3A1',
              callback: showColor,
            ),
          ]),
        ))));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}


