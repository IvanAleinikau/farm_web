import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _user = FirebaseFirestore.instance.collection('user');
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  late List<CustomUser> _list = [];

  Future<String> createAccount({required CustomUser user}) async {
    try {
      final result = await auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      if (result.user!.email!.isNotEmpty) {
        result.user?.updateDisplayName(user.name);
        result.user?.updatePhotoURL(user.position);
      }
      return 'accountCreated';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'weakPassword';
      } else if (e.code == 'email-already-in-use') {
        return 'accountAlreadyExist';
      }
    }
    return 'pleaseEnterEmailAndPassword';
  }

  Future<String> signIn({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'welcome';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'noUserFound';
      } else if (e.code == 'wrong-password') {
        return 'wrongPassword';
      }
    }
    return 'pleaseEnterEmailAndPassword';
  }

  Future<String> resetPassword(String newPassword) async {
    try {
      await user!.updatePassword(newPassword);
      return 'resetPasswordSuccessful';
    } catch (e) {
      return 'error';
    }
  }

  Future<String> signOut() async {
    await auth.signOut();
    return 'singOUt';
  }

  Future<CustomUser> findCustomUser(String email) async {
    _list = [];
    final collection = await _user.get();
    for (var doc in collection.docs) {
      CustomUser item = CustomUser(
        email: doc['email'],
        password: doc['password'],
        position: doc['position'],
        name: doc['name'],
      );
      _list.add(item);
    }
    return _list.where((element) => element.email == email).first;
  }
}
