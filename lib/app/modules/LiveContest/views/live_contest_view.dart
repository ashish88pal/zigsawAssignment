import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/live_contest_controller.dart';

class LiveContestView extends GetView<LiveContestController> {
  const LiveContestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => Scaffold(
        // appBar: AppBar(
        //   title: const Text('LiveContestView'),
        //   centerTitle: true,
        // ),

        body: controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Color(0xff0053BE)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/Group 7089.png",
                              height: 35,
                            ),
                            const Spacer(),
                            const Spacer(),
                            Image.asset(
                              "assets/image 1.png",
                              height: 30,
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/Group 7111.svg",
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/Vector-4.svg",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              child: Image.network(
                                controller
                                    .apiRes.value!.response.teams[0].logoUrl,
                                fit: BoxFit.fill,
                              ),
                            ).animate().slideX().fadeIn(duration: const Duration(seconds: 1)),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.apiRes.value!.response.teams[0]
                                      .shortName,
                                  style: const TextStyle(color: Color(0xffCCE2FF)),
                                ),
                                Text(
                                  "${controller.apiRes.value!.response.innings[1].runs}(${controller.apiRes.value!.response.innings[1].overs})",
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              "Complete",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  controller.apiRes.value!.response.teams[1]
                                      .shortName,
                                  style: const TextStyle(color: Color(0xffCCE2FF)),
                                ),
                                Text(
                                  "${controller.apiRes.value!.response.innings[0].runs}(${controller.apiRes.value!.response.innings[0].overs})",
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              child: Image.network(
                                controller
                                    .apiRes.value!.response.teams[1].logoUrl,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xffE4E5E7),
                          thickness: 0.5,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${controller.apiRes.value!.response.innings[1]
                                                  .runs >
                                              controller.apiRes.value!.response
                                                  .innings[0].runs
                                          ? controller.apiRes.value!.response
                                              .teams[0].shortName
                                          : controller.apiRes.value!.response
                                              .teams[1].shortName} Won",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Text(
                                  "Last 6 Ball",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "By ${controller.apiRes.value!.response.innings[1].runs} runs",
                                  style: const TextStyle(color: Color(0xffA4AAB1)),
                                ),
                                Row(
                                  children: List.generate(
                                      6,
                                      (index) => const CircleAvatar(
                                            radius: 10,
                                          )),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ).animate().slideY(duration: const Duration(milliseconds: 500)) ,
                  Expanded(
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: <Widget>[
                          const TabBar(tabs: [
                            Tab(
                              text: "Summary",
                            ),
                            Tab(text: "ScoreCard"),
                            Tab(text: "Report"),
                          ]),
                          Expanded(
                            child: TabBarView(children: [
                              Container(
                                  padding: const EdgeInsets.all(15),
                                  color: const Color(0xffF5F9FF),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  offset: Offset(0, 4),
                                                  blurRadius: 10,
                                                  color: Colors.black12)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 4,
                                                      child: Text(
                                                        "Batsmen",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                        "R",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        textAlign:
                                                            TextAlign.center,
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("B",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("4s",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("6s",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("Sr",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center))
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              color: Colors.black12,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 4),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 4,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .players
                                                              .firstWhere((element) =>
                                                                  element
                                                                      .playerId ==
                                                                  controller
                                                                      .apiRes
                                                                      .value!
                                                                      .response
                                                                      .innings[
                                                                          0]
                                                                      .fows[0]
                                                                      .batsmanId)
                                                              .shortName,
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xff747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .innings[0]
                                                              .fows[0]
                                                              .runs
                                                              .toString(),
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .innings[0]
                                                              .fows[0]
                                                              .ballsFaced
                                                              .toString(),
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  const Expanded(
                                                      flex: 1,
                                                      child: Text("0",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  const Expanded(
                                                      flex: 1,
                                                      child: Text("0",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .innings[0]
                                                              .fows[0]
                                                              .scoreAtDismissal
                                                              .toString(),
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 4),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 4,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .players
                                                              .firstWhere((element) =>
                                                                  element
                                                                      .playerId ==
                                                                  controller
                                                                      .apiRes
                                                                      .value!
                                                                      .response
                                                                      .innings[
                                                                          0]
                                                                      .fows[1]
                                                                      .batsmanId)
                                                              .shortName,
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xff747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .innings[0]
                                                              .fows[1]
                                                              .runs
                                                              .toString(),
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .innings[0]
                                                              .fows[1]
                                                              .ballsFaced
                                                              .toString(),
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  const Expanded(
                                                      flex: 1,
                                                      child: Text("0",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  const Expanded(
                                                      flex: 1,
                                                      child: Text("0",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                          controller
                                                              .apiRes
                                                              .value!
                                                              .response
                                                              .innings[0]
                                                              .fows[1]
                                                              .scoreAtDismissal
                                                              .toString(),
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  offset: Offset(0, 4),
                                                  blurRadius: 10,
                                                  color: Colors.black12)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 4,
                                                      child: Text(
                                                        "Bowlers",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                        "O",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        textAlign:
                                                            TextAlign.center,
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("M",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("R",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("W",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("Eco",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center))
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              color: Colors.black12,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 4,
                                                      child: Text("l",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("l",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("l",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("l",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("l",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text("l",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xaa747C86),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign: TextAlign
                                                              .center)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  offset: Offset(0, 4),
                                                  blurRadius: 10,
                                                  color: Colors.black12)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 4.0,
                                                      horizontal: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Date",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "10:00 AM  Sunday, June 04, 2023",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 4.0,
                                                      horizontal: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Toss",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "INDIA won the toss and opt to bat",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              const Text("Articles Body"),
                              const Text("User Body"),
                            ]),
                          )
                        ],
                      ),
                    ).animate().fadeIn(duration: const Duration(milliseconds: 1500)),
                  ),
                ],
              ),
        bottomNavigationBar: NavigationBar(
            surfaceTintColor: Colors.white,
            elevation: 5,
            destinations: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Vector.svg",
                      semanticsLabel: 'Acme Logo'),
                  const Text(
                    "Home",
                    style: TextStyle(color: Colors.blue, letterSpacing: 0.1),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Vector-3.svg",
                      semanticsLabel: 'Acme Logo'),
                  const Text(
                    "Refresh",
                    style: TextStyle(color: Colors.grey, letterSpacing: 0.1),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Vector-1.svg",
                      semanticsLabel: 'Acme Logo'),
                  const Text(
                    "All Matches",
                    style: TextStyle(color: Colors.grey, letterSpacing: 0.1),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Vector-2.svg",
                      semanticsLabel: 'Acme Logo'),
                  const Text(
                    "Create Contest",
                    style: TextStyle(color: Colors.grey, letterSpacing: 0.1),
                  )
                ],
              ),
            ]),
      ),
    ));
  }
}
