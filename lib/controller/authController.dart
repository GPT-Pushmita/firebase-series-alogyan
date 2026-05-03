import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  // final FirebaseAuth _auth = FirebaseAuth.instance; // firebase-auth means login
  // final FirebaseFirestore _db = FirebaseFirestore.instance; // firebase firestore means db data store

  // Rx<User?> firebaseUser = Rx<User?>(null); // user model means schema
  // RxBool isLoading = false.obs; 

  // @override
  // void onInit() {
  //   firebaseUser.bindStream(_auth.authStateChanges()); // onInit start function and work
    // ever(firebaseUser, _setInitialScreen); // 👈 magic line

  //   super.onInit();
  // }


// void _setInitialScreen(User? user) {
//   if (user == null) {
//     Get.offAllNamed("/login");
//   } else {
//     Get.offAllNamed("/home");
//   }
// }
  // // 🔐 SIGN UP
  // Future<void> register(String email, String password) async {
  //   try {
  //     isLoading.value = true;

  //     UserCredential userCredential =
  //         await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );

  //     // Save user in Firestore
  //     await _db.collection("users").doc(userCredential.user!.uid).set({
  //       "uid": userCredential.user!.uid,
  //       "email": email,
  //       "createdAt": FieldValue.serverTimestamp(),
  //     });

  //     Get.snackbar("Success", "Account created");
  //   } catch (e) {
  //     Get.snackbar("Error", e.toString());
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

  // // 🔓 LOGIN
  // Future<void> login(String email, String password) async {
  //   try {
  //     isLoading.value = true;

  //     await _auth.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );

  //     Get.snackbar("Success", "Logged in");

  //   } catch (e) {
  //     Get.snackbar("Error", e.toString());
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

  // // 🚪 LOGOUT
  // Future<void> logout() async {
  //   await _auth.signOut();
  // }

  // // 📄 GET USER DATA
  // Future<Map<String, dynamic>?> getUserData() async {
  //   if (_auth.currentUser == null) return null;

  //   DocumentSnapshot doc =
  //       await _db.collection("users").doc(_auth.currentUser!.uid).get();

  //   return doc.data() as Map<String, dynamic>?;
  // }
}