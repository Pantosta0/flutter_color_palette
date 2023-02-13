import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import 'pages/color_selection_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // vamos a usar GetMaterialApp para pdoer usar un diálogo sin context
    String theColor = '443C68';
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: ColorUtils.CreateMaterialColor(theColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const ColorSelectionPage(),
    );
  }
}

