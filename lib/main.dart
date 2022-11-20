// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

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
      home: const LocalPage(),
    );
  }
}
  
class MainPage extends StatefulWidget {
  const MainPage({super.key});
  
  @override
  State<MainPage> createState() => _MainPageState();
}
  User newUser = User();

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


class LocalPage extends StatefulWidget {
  const LocalPage({super.key});

  @override
  State<LocalPage> createState() => _LocalPageState();
}

class _LocalPageState extends State<LocalPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        ElevatedButton(
              onPressed: ()async{
                await context.setLocale(Locale('kk'));
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LogInPage()));
              },
              child: const Text('Қазақша'),
              //color: Colors.green,
            ),
            ElevatedButton(
              onPressed: ()async{
                await context.setLocale(Locale('en'));
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LogInPage()));
              },
              child: const Text('In english'),
              //color: Colors.green,
            ),
            ElevatedButton(
              onPressed: ()async{
                await context.setLocale(Locale('ru'));
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LogInPage()));
              },
              child: const Text('На русском'),
              //color: Colors.green,
            ),
      ]),
    );
  }
}