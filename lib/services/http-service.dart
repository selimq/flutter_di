// ignore: file_names
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HttpService {
  @Named("BaseUrl")
  String get baseUrl => 'My base url';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));
}
