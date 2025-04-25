import 'package:cloud_firestore/cloud_firestore.dart';  

abstract class FirestoreRepository<T> {  
  final CollectionReference _collection;  

  FirestoreRepository(String collectionName)  
    : _collection = FirebaseFirestore.instance.collection(collectionName);  

  Stream<List<T>> streamAll() {  
    return _collection.snapshots().map((snapshot) =>  
      snapshot.docs.map(_fromFirestore).toList());  
  }  

  // Métodos abstractos  
  T _fromFirestore(DocumentSnapshot doc);  
  Map<String, dynamic> _toFirestore(T item);  
}  