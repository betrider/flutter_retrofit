import 'package:dio/dio.dart';
import 'package:flutter_retrofit/json_annotation/rest_client.dart';
import 'package:logger/logger.dart';

final logger = Logger();
void main(List<String> args) {
  final dio = Dio(); // Provide a dio instance
  dio.options.headers["Demo-Header"] = "demo header"; // config your dio headers globally
  final client = RestClient(dio); // baseUrl 옵션을 사용하는 경우 덮어씌웁니다.(우선적용)

  /// 단일 쿼리
  client.getTask('54').then((value) => logger.i(value.name));

  /// 멀티 쿼리
  // client.getTasks().then((it) => logger.i(it[0].name));

  /// 쿼리 예외처리
  // client.getTask("54").then((it) {
  //   logger.i(it);
  // }).catchError((Object obj) {
  //   // non-200 error goes here.
  //   switch (obj.runtimeType) {
  //     case DioError:
  //       // Here's the sample to get the failed response error code and message
  //       final res = (obj as DioError).response;
  //       logger.e("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
  //       break;
  //     default:
  //       break;
  //   }
  // });

  // freezed 확인
  // var aa = Task(id: 'id', name: 'name', avatar: 'avatar', createdAt: 'createdAt');
  // var bb = Task(id: 'id', name: 'name', avatar: 'avatar', createdAt: 'createdAt');
  // print(aa == bb);
}
