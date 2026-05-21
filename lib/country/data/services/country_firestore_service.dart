import 'package:cloud_firestore/cloud_firestore.dart';

class CountryFirestoreService {
  static Future<void> saveAndUpdateCountryData(
    Map<String, dynamic> countryData,
  ) async {
    // Implement Firestore saving logic here
    await FirebaseFirestore.instance
        .collection('countries')
        .doc(countryData['id'])
        .set(countryData);
  }

  static Future<void> deleteCountryData(
    Map<String, dynamic> countryData,
  ) async {
    // Implement Firestore saving logic here
    await FirebaseFirestore.instance
        .collection('countries')
        .doc(countryData['id'])
        .delete();
  }

  Future<Map<String, dynamic>?> getCountryData(String id) async {
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('countries')
          .doc(id)
          .get();

      if (doc.exists) {
        return doc.data() as Map<String, dynamic>;
      } else {
        print('No se encontró el documento con ID: $id');
        return null;
      }
    } catch (e) {
      print('$e');
      print('No se encontró el documento con ID: $id');
      return null;
    }
  }
}
