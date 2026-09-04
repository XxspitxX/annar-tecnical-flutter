// import 'package:flutter/material.dart';

// final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

// class SampleApp extends StatefulWidget {
//   const SampleApp({super.key});

//   @override
//   State<SampleApp> createState() => _SampleAppState();
// }

// class _SampleAppState extends State<SampleApp> with NavigatorRouter {
//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp.router(
//           debugShowCheckedModeBanner: false,
//           restorationScopeId: "restoration_scope_id",
//           themeMode: ThemeMode.light,
//           title: 'Sample APP',
//           routeInformationParser: router.routeInformationParser,
//           routeInformationProvider: router.routeInformationProvider,
//           routerDelegate: router.routerDelegate,
//         );
//   }
// }