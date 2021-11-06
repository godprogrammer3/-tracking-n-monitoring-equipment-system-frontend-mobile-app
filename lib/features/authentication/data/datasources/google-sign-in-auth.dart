import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleSignInAuth {
  final GoogleSignIn _googleSignIn;

  GoogleSignInAuth(this._googleSignIn);
  Future<GoogleSignInAccount?> signIn() async {
    return await this._googleSignIn.signIn();
  }
}
