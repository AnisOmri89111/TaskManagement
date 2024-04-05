import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthenticationDataSource {
  Future <void> loginProcess(String email , String password);
  Future <void> registerProcess(String email , String password , String passwordConfirmation) ;
  Future <void> googleSignIn() ;
}

class AuthenticationProcess extends AuthenticationDataSource{
    final GoogleSignIn GooglesignIn = GoogleSignIn();

  @override
  Future<void> googleSignIn()async {
   try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
   UserCredential userCredential  = await FirebaseAuth.instance.signInWithCredential(credential);
   print(userCredential.user?.displayName);
   } catch (e) {
     print(e);
   }
  }

  @override
  Future<void> loginProcess(String email, String password) async{
   try {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.trim(), 
      password: password.trim()
      );
   }on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}

   
    catch (e) {
     print(e);
   }
  }

  @override
  Future<void> registerProcess(String email, String password, String passwordConfirmation) async{
   try {
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, 
      password: password);
   } catch (e) {
     print(e);
   }
  }

}