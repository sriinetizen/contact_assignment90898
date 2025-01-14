import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addContact(Map<String, dynamic> contactData) async {
    await _firestore.collection('contacts').add(contactData);
  }

  Future<void> updateContact(String id, Map<String, dynamic> contactData) async {
    await _firestore.collection('contacts').doc(id).update(contactData);
  }

  Future<void> deleteContact(String id) async {
    await _firestore.collection('contacts').doc(id).delete();
  }

  Stream<QuerySnapshot> getContacts() {
    return _firestore.collection('contacts').snapshots();
  }
}