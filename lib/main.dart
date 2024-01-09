import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bpd_test/controllers/homeController.dart';
import 'package:bpd_test/controllers/testController.dart';
import 'package:bpd_test/ui/screens/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/screens/home.dart';
import 'utilities/bindings.dart';

void main() {
  Get.put(HomeController());
  Get.put(TestController());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final heroController =
        HeroController(); // Create an instance of HeroController

    //onBoarding =true means it finished the page
    return HeroControllerScope(
        controller: heroController,
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: AnimatedSplashScreen(
                splashIconSize: 130,
                duration: 4000,
                splash: const Image(
                  image: AssetImage('assets/logo1.png'),
                ),
                nextScreen: const Home(),
                splashTransition: SplashTransition.fadeTransition,
                backgroundColor: Colors.white),
            getPages: [
              GetPage(
                  name: '/home',
                  page: () => const Home(),
                  binding: HomeBinding()),
              GetPage(
                  name: '/bpdtest',
                  page: () => TestScreen(
                        title: 'BPD Test',
                        testType: 1,
                      ),
                  binding: TestBinding()),
            ]));
  }
}
