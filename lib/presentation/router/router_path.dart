import 'package:app/main.dart';

class ScreenPath {
  /// Auth routes
  static const login = '/login';
  static const signup = '/signup';
  static submit() => _appendIdIntoCurrentPath('/submit');
  static const forgotPwd = '/forgot';
  static resetPwd() => _appendIdIntoCurrentPath('/reset');

  /// Main routes
  static const splash = '/';
  static const home = '/home';
  static const search = '/search';
  static const booking = '/booking';
  static const profile = '/profile';

  /// Home sub routes
  static detail(String id) => _appendIdIntoCurrentPath('/detail');

  ///Appending path
  static _appendIdIntoCurrentPath(String path) {
    final newPathUri = Uri.parse(path);
    final currentPathUri = appRouter.routeInformationProvider.value.uri;
    Map<String, dynamic> parm = Map.of(currentPathUri.queryParameters);
    parm.addAll(newPathUri.queryParameters);
    Uri? loc = Uri(
        path: '${currentPathUri.path}/${newPathUri.path}'.replaceAll('//', '/'),
        queryParameters: parm);
    final newPath = path.replaceAll('/', '');
    return loc.toString().replaceAll('$newPath/$newPath', newPath);
  }
}
