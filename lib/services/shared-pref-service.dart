// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_di/services/user-service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SharedPrefService {
  final UserService userService;
  int count = 0;
  SharedPrefService({
    required this.userService,
  });
  int test() {
    print("shared");
    count++;
    return userService.get();
  }
}
