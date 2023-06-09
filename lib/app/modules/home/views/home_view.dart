import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zigsaw/app/routes/app_pages.dart';
import 'package:zigsaw/custom_buttton.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);


  static const data =  [
                  ["2F56578",20],
                 [ "2F56579", 23],
                  ["2F56580",25],
                ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F9FF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ClickableWidget(
                      onTap: () {
                        Get.toNamed(Routes.LIVE_CONTEST,arguments: data[index][0]);
                      },
                      widget: Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 6),
                                  blurRadius: 8,
                                  color: Colors.black12)
                            ]),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(child: Image.network("https://images.entitysport.com/assets/uploads//2023/01/india-4.png")),
                                  const Text(
                                    "IND",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text("PAYTM T20"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset("assets/vs.svg",
                                                        ),
                                    ),
                                  Text("Septmber ${data[index][1]},2022", style:const TextStyle(color: Colors.red),)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(child : Image.network("https://images.entitysport.com/assets/uploads//2023/01/Australia-1.png")),
                                  const Text(
                                    "IND",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ).animate().slideY().fadeIn(duration: const Duration(seconds: 1));
                }),
          ],
        ));
  }
}
