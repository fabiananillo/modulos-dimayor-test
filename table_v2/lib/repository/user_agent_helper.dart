import 'package:ua_client_hints/ua_client_hints.dart';

class UserAgenthelper {

  String? _userAgent;

  static UserAgenthelper? _instance;

  static UserAgenthelper get instance {
    _instance ??= UserAgenthelper();
    return _instance!;
  }

  Future<Map<String,String>> getUserAgent() async {
    try {
      _userAgent ??= await userAgent();
      return {
        'Content-Type': 'application/json',
        'Accept-Charset': 'utf-8',
        'User-Agent': _userAgent!.toLowerCase()
      };
    } catch (e) {
      return {
        'Unknown':''
      };
    }
  }

}