import 'package:base/util/stringutil.dart';

import '../app_http_proto.dart';

class PasswordResetProto extends AppHttpProto<void> {
  /// 用户手机
  // String mobile;

  /// 新密码
  final String newPassword;

  PasswordResetProto(
    this.newPassword,
  );

  @override
  String path() {
    return 'ne-meeting-account/changeAccountPassword';
  }

  @override
  void result(Map map) {
    return null;
  }

  @override
  Map data() {
    return {
      'password': StringUtil.pwdMD5(newPassword),
    };
  }
}
