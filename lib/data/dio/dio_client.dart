import 'package:dio/dio.dart';

abstract class IDioClient {
  Future get({required String url});
}

class DioClient implements IDioClient {
  final client = Dio();

  @override
  Future get({required String url}) async {
    return await client.get(url);
  }

}