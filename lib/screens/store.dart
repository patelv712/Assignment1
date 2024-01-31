
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  // Initialize Firebase
  await Firebase.initializeApp();

  // Instance of Firestore
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Function to fetch data from a Firestore collection
  Future<void> fetchData() async {
    try {
      // Replace 'your_collection' with your Firestore collection name
      CollectionReference collection = firestore.collection('your_collection');

      // Fetching data
      QuerySnapshot querySnapshot = await collection.get();
      final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
      print(allData);
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  // Call the fetchData function
  fetchData();
}
