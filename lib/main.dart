// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_app/pages/navigation_pages/home.dart';
import 'package:form_app/pages/navigation_pages/map.dart';
import 'package:form_app/pages/navigation_pages/profile.dart';
import 'package:form_app/pages/navigation_pages/qrscan.dart';
import 'package:form_app/pages/register_form_page.dart';
import 'package:form_app/pages/login_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../model/user.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('kk'), Locale('en'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: Locale('kk'),
      child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const LogInPage(),
    );
  }
}
  User newUser = User();
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  int _currentIndex = 0;
  final ttabs = [
    HomePage(),
    QrPage(),
    MapPage(),
    UserInfoPage(userInfo: newUser),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ttabs[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade800,
        gap: 10,
        onTabChange: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        padding: EdgeInsets.all(16),
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
        GButton(
          icon: Icons.heart_broken,
          text: "Likes",
        ),
        GButton(
          icon: Icons.qr_code_2_sharp,
          text: "QR scanner",
        ),
        GButton(
          icon: Icons.map,
          text:"Map"
        ),
        GButton(
          icon: Icons.home,
          text:"Prifile",
        )
      ],)
    )));
  }
}