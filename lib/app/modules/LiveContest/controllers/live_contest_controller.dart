import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:zigsaw/app/data/data_model.dart';

class LiveContestController extends GetxController {

  final apiRes = Rxn<ApiRes>();

  RxBool isLoading = true.obs;

  initFunction() async {

    try {
      await Dio()
          .get(
              "https://demo.entitysport.com/wp-admin/admin-ajax.php?action=wpec_api_request&path=matches%${Get.arguments}%2Fstatistics")
          .then((value) {
        apiRes.value = ApiRes.fromJson(value.data);

        isLoading.value = false;
      });
    } catch (e) {
      isLoading.value = false;

    }
  }

  @override
  void onInit() {
    super.onInit();
    initFunction();
  }


}
