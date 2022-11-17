import 'package:core/core.dart';
import 'package:login/login.dart';

class LoginModule extends BaseModule {
  @override
  Future<void> init() async {
    instance.registerFactory(() => LoginController(appNavigator: instance()));
  }

  @override
  List<AppRoute> get routes => [
        AppRoute(
          name: AppRoutes.loginPage,
          child: (_) => LoginPage(controller: instance()),
        ),
      ];
}
