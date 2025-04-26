import 'package:dio/dio.dart';

class DioClient {
  static DioClient? _instance;
  late final Dio dio;
  factory DioClient() => _instance ?? (_instance = DioClient._());
  DioClient._() {
    dio = Dio()..options.baseUrl = 'https://rickandmortyapi.com/api';
  }
}
