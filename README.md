DI and Service locator implementation with get_it and injectable packages.

Execute code on terminal in app root or install [build_runner extension on VSCode](https://marketplace.visualstudio.com/items?itemName=GaetSchwartz.build-runner) and run for starting injectable_generator.


```
flutter pub run build_runner watch --delete-conflicting-outputs
```
## Simple Explanation

### Service Locator
```
    //service
    final SharedPrefService s = getIt.get<SharedPrefService>();
    //singleton
    final userProvider = getIt.get<UserProvider>();
```

We are able to get services or providers with getIt. Like service locator pattern.

### Dependency Injection
```
    @Singleton()
    class UserProvider with ChangeNotifier {
        final UserService userService;
        final HttpService httpService;
        UserProvider({
            required this.userService,
            required this.httpService,
        });
    }
    final userProvider = getIt.get<UserProvider>();
```
Dependencies injected without our touch. We are just adding annotations to classes if its injects to another class. 
```
@Injectable()
class UserService {}
```
After that we are running build_runner and it creates automatically. You can look */di* folder.

Detailed information 
- [get_it](https://pub.dev/packages/get_it)
- [injectable](https://pub.dev/packages/injectable)