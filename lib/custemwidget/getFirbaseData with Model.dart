// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ModelClass////////////////////////////////////////////////////////


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class UserProfileModel extends ChangeNotifier {
//   String? userName;
//   String? id;
//   String? email;
//   String? password;
//   String? currentpasswor;
//   String? country;
//   String? streetaddress;
//   String? towncity;
//   String? region;
//   String? postslcode;
//   String? imageUrl;
//   UserProfileModel() {
//     id;
//     userName;
//     email;
//     password;
//     currentpasswor;
//     country;
//     streetaddress;
//     towncity;
//     region;
//     postslcode;
//     imageUrl;
//   }
//   Future<void> getData() async {
//     final auth = FirebaseAuth.instance;
//     //  await getId();

//     await FirebaseFirestore.instance
//         .collection("users")
//         .doc(auth.currentUser!.uid)
//         .get()
//         .then((value) {
     
//       userName = value.data()?["name"];
//       email = value.data()?["email"];
//       password = value.data()?["password"];
//       currentpasswor = value.data()?["current password"];
//       // currentpasswor = value.data()?["current password"];
//       id = value.data()?["id"];
//        image= value.data()?["image"];

//       // streetaddress = value.data()?["dateTime"];
//       // towncity = value.data()?["lastName"];
//       // region = value.data()?["lastName"];
//       // postslcode = value.data()?["lastName"];
//       //  imageUrl = value.data()?["image"];

//       notifyListeners();
//     });
//   }

//   // Future<void> getId() async {
//   //   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //   this.userId = prefs.getString("userId");
//   //   print(userId);
//   //   notifyListeners();
//   // }
// }
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Scaffold ////////////////////////////////////////////////////// 

//    Widget build(BuildContext context) {
//     final model1 = Provider.of<UserProfileModel>(context);
//     return SafeArea(

//       ZText(
//                               text: model1.userName,
//                               fontSize: 24.sp,
//                               fontWeight: FontWeight.w400,
//                             ),
//                             ZText(
//                               text: model1.email,
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.grey,
//                             ),

