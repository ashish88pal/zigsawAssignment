// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/LiveContest/bindings/live_contest_binding.dart';
import '../modules/LiveContest/views/live_contest_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;




  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_CONTEST,
      page: () => const LiveContestView(),
      binding: LiveContestBinding(),
    ),
  ];
}
