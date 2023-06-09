import 'package:get/get.dart';

import '../controllers/live_contest_controller.dart';

class LiveContestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LiveContestController>(
     LiveContestController(),
    );
  }
}
