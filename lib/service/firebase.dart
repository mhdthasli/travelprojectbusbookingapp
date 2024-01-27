import 'package:firebase_auth/firebase_auth.dart';

class FireHelper1{
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;
  Future<String?>signUp({required String mail, required String pasword}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: mail, password: pasword);
      return null;
    } on FirebaseAuthException
    catch (e) {
      return e.message;
    }

  }

  signIn({required String mail, required String pasword}) async {

    try {
      await auth.signInWithEmailAndPassword(email: mail, password: pasword);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
  Future<void>signOut() async {
    await auth.signOut();
  }



}