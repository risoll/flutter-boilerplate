import 'dart:async';

import 'package:http/http.dart';

final httpClient = Client();
Future<Response> getIPAddressService() {
  return httpClient.get('https://httpbin.org/ip');
}
