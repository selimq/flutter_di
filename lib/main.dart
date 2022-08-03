import 'package:flutter/material.dart';
import 'package:flutter_di/provider/user_provider.dart';
import 'package:flutter_di/services/shared-pref-service.dart';
import 'package:provider/provider.dart';

import 'di/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: getIt.get<UserProvider>())
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: Page(),
      ),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  void initState() {
    super.initState();
    SharedPrefService pref = getIt.get<SharedPrefService>();
    pref.test();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
