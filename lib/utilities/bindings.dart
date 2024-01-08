import '../controllers/testController.dart';
import 'package:get/get.dart';
import '../controllers/homeController.dart';

//HERE IN THIS CLASS WE CONNECT THE CONTROLLERS PAGES WITH THE PAGES INTERFACES
//THIS CLASS IS USAUALLY CALLED IN THE MAIN FUNCTION
//implements ...ALLOWS YOU TO CALL ALL METHODS INSIDE THE CLASS
//lazyput is recomended than   put when using intial method so it wont be calld for the whole classes
//calling bindings =>calls its own controllers and this might cause an error damaging classes and making lags

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut((() => HomeController()), fenix: true);
  }
}

class TestBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut((() => TestController()), fenix: true);
  }
}
