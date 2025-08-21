import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

class ProdClient extends IOClient {
  ProdClient() {
    _setUpHeaderHints();
  }

  Map<String, String>? clientHints;

  Future<void> _setUpHeaderHints() async {
    clientHints = await userAgentClientHintsHeader();
  }

  @override
  Future<IOStreamedResponse> send(BaseRequest request) async {
    if (clientHints != null) request.headers.addAll(clientHints!);
    return super.send(request);
  }
}
