// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// mixin NavigatorRouter on State<SampleApp> {
//  Object? arguments;

//   GoRouter get router {
//     if (Application().globalRouter != null) {
//       return Application().globalRouter!;
//     }
//     Application().globalRouter = GoRouter(
//       initialLocation: ListProductsWidget.path,
//       routes: _buildRoutes(),
//       navigatorKey: Application().appNavigatorKey,
//       errorBuilder: (context, state) => Scaffold(
//         body: Center(child: Text('error', textAlign: TextAlign.center)),
//       ),
//     );
//     return Application().globalRouter!;
//   }

//   List<RouteBase> _buildRoutes() {
//     return [
//       GoRoute(path: ListProductsWidget.path,
//       name: ListProductsWidget.name,
//       pageBuilder:(context, state) => _buildPageWithTransition(context, state, const ListProductsWidget(), ListProductsWidget.name),
//       ),
//       GoRoute(path: AddProductWidget.path,
//       name: AddProductWidget.name,
//       pageBuilder:(context, state) => _buildPageWithTransition(context, state, const AddProductWidget(), AddProductWidget.name),
//       )
//     ];
//   }

//   Page _buildPageWithTransition(
//     BuildContext context,
//     GoRouterState state,
//     Widget child,
//     String routeName,
//   ) {
//     if (_shouldUseCustomTransition(routeName)) {
//       return CustomTransitionPage(
//         key: state.pageKey,
//         child: child,
//         transitionDuration: Duration(milliseconds: 300),
//         reverseTransitionDuration: Duration(milliseconds: 500),
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           return _buildCustomTransition(animation, secondaryAnimation, child);
//         },
//       );
//     }

//     return MaterialPage(key: state.pageKey, child: child);
//   }

//    bool _shouldUseCustomTransition(String routeName) {
//     const customTransitionRoutes = [ListProductsWidget.path];
//     return customTransitionRoutes.contains(routeName);
//   }

//  Widget _buildCustomTransition(
//     Animation<double> animation,
//     Animation<double> secondaryAnimation,
//     Widget child,
//   ) {
//     const begin = Offset(1.0, 0.0);
//     const end = Offset.zero;
//     const curve = Curves.easeInOutCubic;

//     var slideTween = Tween(
//       begin: begin,
//       end: end,
//     ).chain(CurveTween(curve: curve));
//     var slideAnimation = animation.drive(slideTween);

//     var fadeTween = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).chain(CurveTween(curve: Curves.easeIn));
//     var fadeAnimation = animation.drive(fadeTween);

//     var scaleTween = Tween<double>(
//       begin: 0.92,
//       end: 1.0,
//     ).chain(CurveTween(curve: Curves.easeOutCubic));
//     var scaleAnimation = animation.drive(scaleTween);

//     return FadeTransition(
//       opacity: fadeAnimation,
//       child: SlideTransition(
//         position: slideAnimation,
//         child: ScaleTransition(scale: scaleAnimation, child: child),
//       ),
//     );
//   }
// }