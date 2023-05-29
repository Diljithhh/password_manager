
import 'package:hive_flutter/hive_flutter.dart';
part 'credentials.g.dart';
@HiveType(typeId: 1)
class Credentials {
    @HiveField(0)
  String credentialTitle;

    @HiveField(1)
  String password;
  Credentials({
    required this.credentialTitle,
    required this.password,
  });
}
