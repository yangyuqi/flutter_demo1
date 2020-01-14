import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './widgets/widget_bottom_navigation_bar.dart';
import './pages/splash_screen_page.dart';
import './pages/guide_pages.dart';

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

// 兼容异常处理
void enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  enablePlatformOverrideForDesktop();
  runApp(MyApp());
}

// 这里我们用StatelessWidget，我是一个没有状态的"孩子"
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去除调试
      title: '孤岛',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
      routes: {
        'guidePages': (context) {
          return GuidePages(); // 跳转到引导页面   Function makeAdder(num addBy) {
                               // return (num i) => addBy + i;
                                // }

           //（参数1,参数2,....）{
          //      方法体...
          //     return 返回值
          // } 匿名回调函数          function(){ alert(str); } //这是一个匿名函数

        },
        'widgetBottomNavigationBar': (context) {
          return BottomNavBarWidget();
        },
      },
    );
  }
}
