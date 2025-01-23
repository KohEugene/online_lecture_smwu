
import 'package:get/get.dart';

class MyController extends GetxController {

  static MyController get to => Get.find<MyController>();

  static void setController() {
    // Get 패키지 안에 MyController가 등록됐는지 아닌지 확인
    if(!Get.isRegistered<MyController>()) {
      // Get 패키지에 MyController를 추가
      Get.put(MyController(), permanent: true);
    }
  }

  RxInt count = 0.obs;

  void countUp() {
    count.value++;
  }
}