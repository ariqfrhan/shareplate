import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shareplate/app/routes/app_pages.dart';

class AuthController extends GetxController {
  var isSkipped = false.obs;
  var isLogin = false.obs;

  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _currentUser;
  UserCredential? userCredential;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> loginGoogle() async {
    try {
      await _googleSignIn.signIn().then((value) => _currentUser = value);
      final isSignin = await _googleSignIn.isSignedIn();

      if (isSignin) {
        final googleAuth = await _currentUser!.authentication;
        final credential = GoogleAuthProvider.credential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          userCredential = value;
          isLogin.value = true;
          Get.offAllNamed(Routes.MAIN_WRAPPER);
        });
      }
    } catch (e) {
      print('Login error: $e');
    }
  }

  Future<void> registerGoogle() async {
    try {
      await _googleSignIn.signIn().then((value) => _currentUser = value);
      final isSignin = await _googleSignIn.isSignedIn();

      if (isSignin) {
        final googleAuth = await _currentUser!.authentication;
        final credential = GoogleAuthProvider.credential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) => userCredential = value);

        isLogin.value = true;

        CollectionReference users = firestore.collection("users");
        
        await users.doc(_currentUser!.id).set({
          "uid": _currentUser!.id,
          "name": _currentUser!.displayName,
          "email": _currentUser!.email,
          "photo": _currentUser!.photoUrl,
        });

        Get.offAllNamed(Routes.MAIN_WRAPPER);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    try {
      await _googleSignIn.disconnect();
      await _googleSignIn.signOut().then((value) {
        Get.offAllNamed(Routes.LOGIN);
        isLogin.value = false;
      });
    } catch (e) {}
  }
}
