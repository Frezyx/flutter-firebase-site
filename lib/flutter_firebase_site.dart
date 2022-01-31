import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_site/ui/ui.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FlutterFirebaseSite extends StatefulWidget {
  FlutterFirebaseSite({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  State<FlutterFirebaseSite> createState() => _FlutterFirebaseSiteState();
}

class _FlutterFirebaseSiteState extends State<FlutterFirebaseSite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Firebase Site',
      theme: ThemesLibrary.lightTheme,
      routerDelegate: AutoRouterDelegate(
        widget._appRouter,
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
      ),
      routeInformationParser: widget._appRouter.defaultRouteParser(),
      builder: (_, router) {
        return ResponsiveWrapper.builder(
          router,
          minWidth: 480,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
        );
      },
    );
  }
}
