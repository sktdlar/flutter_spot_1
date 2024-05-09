import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:toast/toast.dart';

class UsersCollection {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addUserCollection(
    String id,
    String email,
    String name,
    String password,
  ) async {
    try {
      // Проверяем, существует ли пользователь с заданным UID
      final userSnapshot =
          await _firebaseFirestore.collection("users").doc(id).get();
      if (userSnapshot.exists) {
        Toast.show('Пользователь уже зарегистрирован');
        return;
      }

      // Пользователь не найден, создаем новую запись
      await _firebaseFirestore.collection("users").doc(id).set({
        'uid': id,
        'email': email,
        'name': name,
        'password': password,
      });
    } catch (e) {
      return;
    }
  }

  Future<void> editUserCollection(
      dynamic docs, String name, String email) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(docs.id)
          .update({'name': name, 'email': email});
    } catch (e) {
      return;
    }
  }

  Future<void> deleteUserCollection(dynamic docs) async {
    try {
      await _firebaseFirestore.collection("users").doc(docs.id).delete();
    } catch (e) {
      return;
    }
  }
}
