import 'package:pigeon/pigeon.dart';

class Keys{
  String? apiKey;
}

@HostApi()
abstract class IKeys{
  String? getApiKey();
}