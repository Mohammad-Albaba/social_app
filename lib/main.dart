import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_app/layout/social_layout.dart';
import 'package:social_app/modules/social_login/social_login_screen.dart';
import 'package:social_app/shared/bloc_observer.dart';
import 'package:social_app/shared/network/local/cache_helper.dart';

void main() async {
  //بيتأكد أن كل حاجة هنا في الميثود خصلت وبعدين يفتح الابلكيشن
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  Bloc.observer = MyBlocObserver();

  Widget widget;
  var uId = CacheHelper.getData(key: 'uId');
  if (uId != null) {
    widget = SocialLayout();
  } else {
    widget = SocialLoginScreen();
  }
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Widget startWidget;

  MyApp({this.startWidget});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startWidget,
    );
  }
}
