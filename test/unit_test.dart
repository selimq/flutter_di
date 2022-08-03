import 'package:flutter_di/di/get_it.dart';
import 'package:flutter_di/provider/user_provider.dart';
import 'package:flutter_di/services/http-service.dart';
import 'package:flutter_di/services/shared-pref-service.dart';
import 'package:flutter_di/services/user-service.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    //get_it initial
    configureDependencies();
  });

  test("test service", () {
    //we are getting service from service locator and dependencies injected
    SharedPrefService s = getIt.get<SharedPrefService>();
    //also we can define for integration test case -- dependencies are not hiding
    SharedPrefService s1 = SharedPrefService(userService: UserService());
    print(s1.test());

    expect(1 == s.test(), isTrue);
  });
  test("provider singleton test", () {
    //singleton

    final provider = getIt.get<UserProvider>();
    final provider1 = getIt.get<UserProvider>();

    expect(1 == provider.init() && provider == provider1, isTrue);
  });
}
