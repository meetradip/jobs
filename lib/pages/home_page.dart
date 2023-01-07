import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/pages/jobs_page.dart';
import 'package:jobs/pages/profile_page.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}

class HomePage extends StatelessWidget {
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              tooltip: 'Home',
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              tooltip: 'Profile',
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
        ),
      ),
      body: Obx(
        () => controller.currentIndex == 0 ? JobsPage() : ProfilePage(),
      ),
    );
  }
}
