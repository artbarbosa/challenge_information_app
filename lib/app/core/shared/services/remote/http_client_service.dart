import 'package:http/http.dart';

import 'http_client_service_interface.dart';

class HttpClientServiceMock implements IHttpClientService {
  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    if (url.toString() == "getListInformation") {
      return Response("[]", 200);
    } else if (url.toString() == "saveListInformation") {
      return Response("false", 200);
    }
    return Response("", 500);
  }

  @override
  Future<Response> post(Uri url,
      {Map<String, String>? headers, Object? body}) async {
    if (url.toString() == "loginWithEmailAndPassword") {
      return Response("""{"name":"Arthur","email": "test@gmail.com"}""", 200);
    }
    return Response("", 500);
  }
}
