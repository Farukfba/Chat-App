import 'package:chat_app/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

class NavigationService {
  late GlobalKey<NavigatorState> _navigorKey;

  final Map<String, Widget Function(BuildContext)> _routes = {
    "login": (context) => LoginPage(),
  };

  GlobalKey<NavigatorState>? get navigatorKey {
    return _navigorKey;
  }

  Map<String, Widget Function(BuildContext)> get routes {
    return _routes;
  }

  NavigationService() {
    _navigorKey = GlobalKey<NavigatorState>();
  }

  void pushNamed(String routeName) {
    _navigorKey.currentState?.pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName) {
    _navigorKey.currentState?.pushReplacementNamed(routeName);
  }

  void goBack() {
    _navigorKey.currentState?.pop();
  }
}