import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icecream_shops/login.dart';
import 'package:icecream_shops/shop_list.dart';

void main() {
  runApp(
      DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
      MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'shop_list': (context)=>ShopList(),
    },
  )
  ) );
}




