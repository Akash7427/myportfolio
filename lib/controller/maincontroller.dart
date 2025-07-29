import 'package:get/get.dart';

class MainController extends GetxController {
  RxBool aboutme = false.obs;
  RxBool resume = false.obs;
  RxBool project = false.obs;
  RxBool contact = false.obs;
  RxString selected = "".obs;

  @override
  void onInit() {
    aboutme.value = true;
    super.onInit();
  }

  void changeselected(String selected) {
    if (selected == "aboutme") {
      aboutme.value = true;
      resume.value = false;
      project.value = false;
      contact.value = false;
    }
    if (selected == "resume") {
      aboutme.value = false;
      resume.value = true;
      project.value = false;
      contact.value = false;
    }
    if (selected == "project") {
      aboutme.value = false;
      resume.value = false;
      project.value = true;
      contact.value = false;
    }
    if (selected == "contact") {
      aboutme.value = false;
      resume.value = false;
      project.value = false;
      contact.value = true;
    }
  }
}
