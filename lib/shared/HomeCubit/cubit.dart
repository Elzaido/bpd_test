// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
  String url =
      'https://www.helpguide.org/articles/mental-disorders/borderline-personality-disorder.htm';

  //Other Functions
  void navigateToUrl(String url, bool isReward) async {
    var urllaunchable = await canLaunch(url);
    if (isReward) {
      if (urllaunchable) {
        await launch(url);
        emit(SuccessNavigateState());
      } else {
        emit(ErrorNavigateState());
        print("URL can't be launched.");
      }
    } else {
      if (urllaunchable) {
        await launch(url);
        emit(SuccessNavigateState());
      } else {
        emit(ErrorNavigateState());
        print("URL can't be launched.");
      }
    }
  }
}
