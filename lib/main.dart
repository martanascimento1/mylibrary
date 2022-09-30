import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/pages/auth.dart';
import 'package:provider/provider.dart';
//import 'package:projectfinal/pages/widgets/auth_service.dart';

void main()  async {
WidgetsFlutterBinding.ensureInitialized();
//await HiveConfig.start ();
await Firebase.initializeApp ();
runApp (
  MultiProvider (
    providers: [
     ChangeNotifierProvider(create: (context) => AuthService ()),
    ]
  )
);
}


//import 'package:flutter/material.dart';
//import 'package:projectfinal/pages/home.dart';
//void main() {
  //runApp(
  //  const MaterialApp(home: HomePage()),
 // );
//}
