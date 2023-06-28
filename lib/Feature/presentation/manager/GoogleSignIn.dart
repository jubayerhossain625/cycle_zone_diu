

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi{
  static final _googleSignIn = GoogleSignIn(clientId: '712461824862-p9pmf3mpac3bgm5bk8um5ae87og632du.apps.googleusercontent.com');

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
  static Future signOut = _googleSignIn.signOut();

}
