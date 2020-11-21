import 'package:Intercity_Express/notifire/bus_path.dart';
import 'package:Intercity_Express/route/route.dart';
import 'package:Intercity_Express/store/store.dart';
import 'package:Intercity_Express/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BussPath(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example',
        theme: appTheme,
        initialRoute: '/splash',
        routes: routes,
      ),
    );
  }
}
