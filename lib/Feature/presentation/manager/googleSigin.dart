
import 'package:google_sign_in/google_sign_in.dart';

import 'GoogleSignIn.dart';

class GoogleSignInAccount implements GoogleIdentity{
  late GoogleSignInApi x;
  @override
  // TODO: implement displayName
  String? get displayName => throw UnimplementedError();

  @override
  // TODO: implement email
  String get email => throw UnimplementedError();

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  // TODO: implement photoUrl
  String? get photoUrl => throw UnimplementedError();

  @override
  // TODO: implement serverAuthCode
  String? get serverAuthCode => throw UnimplementedError();

}