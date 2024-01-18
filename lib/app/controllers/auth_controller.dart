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

  FirebaseAuth _auth = FirebaseAuth.instance;

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

  Future<void> loginEmail(String email, String password) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        Get.offAllNamed(Routes.MAIN_WRAPPER);
      });
    } catch (e) {
      if (e is FirebaseAuthException) {
        // Handle specific error codes
        if (e.code == 'wrong-password') {
          // Display Snackbar for incorrect password
          Get.snackbar('Login Failed', 'Incorrect email or password');
        } else {
          // Display Snackbar for other authentication errors
          Get.snackbar('Login Failed', 'An error occurred during login');
        }
      } else {
        // Display Snackbar for general errors
        Get.snackbar('Login Failed', 'An error occurred during login');
      }
    }
  }

  Future<void> registerEmail(
      String email, String password, String phone) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        userCredential = value;
        isLogin.value = true;
        Get.offAllNamed(Routes.MAIN_WRAPPER);

        await firestore.collection("users").doc(value.user!.uid).set({
          "uid": value.user!.uid,
          "name": value.user!.displayName,
          "photoUrl": value.user!.photoURL,
          "email": value.user!.email,
        });
      });
    } catch (e) {}
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
            .then((value) async {
          isLogin.value = true;
          userCredential = value;
          Get.offAllNamed(Routes.MAIN_WRAPPER);

          await firestore.collection("users").doc(value.user!.uid).set({
            "uid": value.user!.uid,
            "name": value.user!.displayName,
            "email": value.user!.email,
            "photoUrl": value.user!.photoURL
          });
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    try {
      if (_auth.currentUser != null) {
        // If the user is authenticated with email/password
        await _auth.signOut();
      }

      if (_googleSignIn.currentUser != null) {
        // If the user is authenticated with Google Sign-In
        await _googleSignIn.disconnect();
        await _googleSignIn.signOut();
      }

      Get.offAllNamed(Routes.LOGIN);
      isLogin.value = false;
    } catch (e) {}
  }
}
