import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Home.dart';
import 'shared/HomeCubit/cubit.dart';
import 'shared/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => HomeCubit())],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: AnimatedSplashScreen(
                splashIconSize: 130,
                duration: 4000,
                splash: const Image(
                  image: AssetImage('assets/logo1.png'),
                ),
                nextScreen: const Home(),
                splashTransition: SplashTransition.fadeTransition,
                backgroundColor: Colors.white)));
  }
}
