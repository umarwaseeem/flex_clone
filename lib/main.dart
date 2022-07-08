import 'package:flex_clone/screens/grades.dart';
import 'package:flex_clone/widgets/left_container.dart';
import 'package:flex_clone/widgets/right_container.dart';
import 'package:flex_clone/widgets/user_image.dart';
import 'package:flex_clone/widgets/user_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        GradesScreen.routeName: (context) => const GradesScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: const Color.fromRGBO(53, 92, 125, 10),
          // title: const Text("Flex"),
          actions: const [
            UserName(name: "Umar"),
            SizedBox(width: 30),
            UserImage(),
            SizedBox(width: 30),
          ],
        ),
      ),
      body: Row(
        children: const [
          SideBar(flexValue: 1),
          RightScreen(flexValue: 9),
        ],
      ),
    );
  }
}
