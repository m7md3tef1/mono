import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/core/color_manager/color_manager.dart';
import 'package:mono/features/Interior%20design/controller.dart';
import 'package:mono/features/home/controller.dart';
import 'package:mono/features/newaccount/controller.dart';
import 'package:provider/provider.dart';

import 'core/router/router.dart';
import 'features/forget_password/controller.dart';
import 'features/introduction/controller.dart';
import 'features/signin/controller.dart';
import 'features/splash/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => IndexProv()),
  ChangeNotifierProvider<value>(create: (context) =>value()..val,)
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => SignInCubit()),
        BlocProvider(create: (_) => NewAccountCubit()),
        BlocProvider(create: (_) => HomeCubit()),
        BlocProvider(create: (_) => InteriorCubit()),

      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context,_) => MaterialApp(
            theme: ThemeData(
              fontFamily: 'Tajawal',
              primarySwatch: Colors.orange,
            ),
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            onGenerateRoute: onGenerateRoute,


            // builder: DevicePreview.appBuilder,
           // builder: OneContext().builder,

            home: const SplashView()
        ),
      ),
    );

  }
}
