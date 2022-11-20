
// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'register_form_page.dart';
import 'package:form_app/main.dart';
import 'package:lottie/lottie.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  
  // Color left = Colors.black;
  // Color right = Colors.white;

  
  Widget build(BuildContext context) {
    bool _hidePass = true;

    return Scaffold(
      backgroundColor: Colors.transparent,
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/gamepad.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              child:SingleChildScrollView(
              child: Column(
                children: [
                Lottie.asset('assets/gamepad.json',  width: 300, height: 300),
            Container(
              padding: EdgeInsets.all(16.0),
          decoration: (BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50))),
          height: 380,
          width: 380,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            TextFormField(
              decoration: const InputDecoration(
                
                labelText: 'Email Address',
                hintText: 'Enter a email address',
                prefixIcon: Icon(Icons.mail),
                // ignore: unnecessary_const
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                // ignore: unnecessary_const
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress, 
              // validator: _validateEmail,
            ),
            TextFormField(

              maxLength: 8,
              decoration: InputDecoration(
                
                labelText: 'Password *',
                hintText: 'Enter the password',
                suffixIcon: IconButton(
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    
                      _hidePass = !_hidePass;
                   
                  },
                ),
                prefixIcon: const Icon(Icons.security),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                // ignore: unnecessary_const
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              
            ),
             ElevatedButton(
                  child: Text('Log In',style: TextStyle(color:Colors.black) ,),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      fixedSize: Size(200, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MainPage()));},),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Don't have account?", style: TextStyle(fontSize: 15)),
              GestureDetector(
              child:Text("  Register", style: TextStyle(color: Colors. blue, fontSize: 15),),
              onTap:(){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => RegisterFormPage()));
              })]
              )
            ],
            ),
        )]
            ))) ))
    ));
  }
}



//   Widget _buildMenuBar(BuildContext context) {
//     return Container(
//       width: 300.0,
//       height: 50.0,
//       decoration: const BoxDecoration(
//         color: Color(0x552B2B2B),
//         borderRadius: BorderRadius.all(Radius.circular(25.0)),
//       ),
//       child: CustomPaint(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Expanded(
//               child: TextButton(
//                 style: ButtonStyle(
//                   overlayColor: MaterialStateProperty.all(Colors.transparent),
//                 ),
//                 onPressed: (){},
//                 child: Text(
//                   'Existing',
//                   style: TextStyle(
//                       color: left,
//                       fontSize: 16.0,
//                       fontFamily: 'WorkSansSemiBold'),
//                 ),
//               ),
//             ),
//             //Container(height: 33.0, width: 1.0, color: Colors.white),
//             Expanded(
//               child: TextButton(
//                 style: ButtonStyle(
//                   overlayColor: MaterialStateProperty.all(Colors.transparent),
//                 ),
//                 onPressed: (){},
//                 child: Text(
//                   'New',
//                   style: TextStyle(
//                       color: right,
//                       fontSize: 16.0,
//                       fontFamily: 'WorkSansSemiBold'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }


// }