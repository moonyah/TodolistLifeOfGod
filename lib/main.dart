import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'onboarding.dart';

void main(){
 // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
 // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: const TextTheme(
              bodyText2: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              )
          )
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((value) => {
      FlutterNativeSplash.remove()
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text("HI!"),
      ),
    );
  }
}



// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Icon(
//           Icons.apartment_outlined,
//           size: MediaQuery.of(context).size.width * 0.785,
//         ),
//       ),
//     );
//   }
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Future.delayed(Duration(seconds: 3)),
//       builder: (context, AsyncSnapshot snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return MaterialApp(home: Splash());
//         } else {
//           return MaterialApp(
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: Scaffold(
//               appBar: AppBar(
//                 title: Text('Hi'),
//               ),
//             )
//           );
//         }
//       },
//     );
//   }
// }
//
