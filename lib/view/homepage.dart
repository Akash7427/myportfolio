// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/maincontroller.dart';
import 'package:myportfolio/controller/sizeconfigcontroller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MainController mainController = Get.put(MainController());
  SizeConfigController sizeConfig = Get.put(SizeConfigController());

  @override
  void dispose() {
    mainController.dispose();
    sizeConfig.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (_, constraints) {
          if (constraints.maxWidth >= 1300) {
            return DesktopView();
          } else {
            return const Center(
              child: Text("Other Design"),
            );
          }
        },
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  DesktopView({
    super.key,
  });

  MainController mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            TopBar(),
            Flexible(
              flex: 1,
              child: ListView(
                children: [
                  Column(
                    children: [
                      mainController.aboutme.value
                          ? AboutMeBody()
                          : mainController.resume.value
                              ? SizedBox(
                                  child: Center(
                                    child: Text(
                                      "Resume",
                                    ),
                                  ),
                                )
                              : mainController.project.value
                                  ? SizedBox(
                                      child: Center(
                                        child: Text(
                                          "Project",
                                        ),
                                      ),
                                    )
                                  : SizedBox(
                                      child: Center(
                                        child: Text(
                                          "Contact",
                                        ),
                                      ),
                                    ),
                      BottomBar(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class BottomBar extends StatelessWidget {
  BottomBar({
    super.key,
  });

  SizeConfigController sizeConfig = Get.find<SizeConfigController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(
          left: sizeConfig.safeBlockHorizontal * 50,
          right: sizeConfig.safeBlockHorizontal * 50,
          top: sizeConfig.safeBlockVertical * 15,
          bottom: sizeConfig.safeBlockVertical * 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "© 2025 by Akash More.",
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Call",
                    ),
                    SizedBox(
                      height: sizeConfig.safeBlockVertical * 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: sizeConfig.safeBlockHorizontal * 8,
                        right: sizeConfig.safeBlockHorizontal * 8,
                        top: sizeConfig.safeBlockVertical * 8,
                        bottom: sizeConfig.safeBlockVertical * 8,
                      ),
                      child: Text(
                        "+918141292894",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: sizeConfig.safeBlockHorizontal * 50,
                ),
                Column(
                  children: [
                    Text(
                      "Write",
                    ),
                    SizedBox(
                      height: sizeConfig.safeBlockVertical * 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: sizeConfig.safeBlockHorizontal * 8,
                        right: sizeConfig.safeBlockHorizontal * 8,
                        top: sizeConfig.safeBlockVertical * 8,
                        bottom: sizeConfig.safeBlockVertical * 8,
                      ),
                      child: Text(
                        "akashkuciki36@gmail.com",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: sizeConfig.safeBlockHorizontal * 50,
                ),
                Column(
                  children: [
                    Text(
                      "Follow",
                    ),
                    SizedBox(
                      height: sizeConfig.safeBlockVertical * 8,
                    ),
                    Row(
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
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMeBody extends StatelessWidget {
  AboutMeBody({
    super.key,
  });

  MainController mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xffe6dacf),
          height: 900,
          width: 600,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                          ),
                          Text("Here's who I am & what I do"),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  mainController.changeselected("resume");
                                },
                                child: Text(
                                  "Resume",
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  mainController.changeselected("project");
                                },
                                child: Text(
                                  "Projects",
                                ),
                              ),
                            ],
                          ),
                          Text(
                              """I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.\nI’m a great place for you to tell a story and let your users know a little more about you.
                          """)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  TopBar({super.key});
  MainController mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
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
                TextButton(
                  onPressed: () {
                    mainController.changeselected("aboutme");
                  },
                  child: Text(
                    "ABOUT ME",
                    style: TextStyle(
                      color: mainController.aboutme.value
                          ? Colors.blue
                          : Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: () {
                    mainController.changeselected("resume");
                  },
                  child: Text(
                    "RESUME",
                    style: TextStyle(
                      color: mainController.resume.value
                          ? Colors.blue
                          : Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: () {
                    mainController.changeselected("project");
                  },
                  child: Text(
                    "PROJECTS",
                    style: TextStyle(
                      color: mainController.project.value
                          ? Colors.blue
                          : Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: () {
                    mainController.changeselected("contact");
                  },
                  child: Text(
                    "CONTACT",
                    style: TextStyle(
                      color: mainController.contact.value
                          ? Colors.blue
                          : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
