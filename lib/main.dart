import 'package:ecom/core/res/styles/colours.dart';
import 'package:ecom/core/services/router.dart';
import 'package:flutter/material.dart';

import 'core/services/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colours.whiteMSLightActive),
      fontFamily: 'Aeonik',
      scaffoldBackgroundColor: Colours.blueLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colours.blueLight,
        foregroundColor: Colours.blueNormalLogin,
      ),
      useMaterial3: true,
    );
    return MaterialApp.router(
      theme: theme,
      routerConfig: router,
      darkTheme: theme.copyWith(
        scaffoldBackgroundColor: Colours.greyDarker,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colours.blueDark,
          foregroundColor: Colours.whiteMSLight,
        ),
      ),
      title: 'Ecomly',
      themeMode: ThemeMode.system,
    );
  }
}
