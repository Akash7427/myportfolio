// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akash More',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 50,
                  bottom: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Akash More / SAP Security Consultant",
                    ),
                    Row(
                      children: [
                        Text("ABOUT ME"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("RESUME"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("PROJECTS"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("CONTACT"),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        color: Color(0xffe6dacf),
                        height: 900,
                        width: 800,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 175,
                      bottom: 125,
                      right: 150,
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 600,
                        width: 800,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 550,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff5ece6),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 5,
                                          offset: Offset(-4, 4)),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black),
                                        height: 200,
                                        width: 200,
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text("Akash"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("More"),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        height: 2,
                                        width: 50,
                                        color: Colors.blue[900],
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text("SAP Security Consultant")
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 5,
                                          offset: Offset(-4, 4)),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          EvaIcons.facebookOutline,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          EvaIcons.linkedinOutline,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          EvaIcons.githubOutline,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          EvaIcons.googleOutline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 500,
                              width: 400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
