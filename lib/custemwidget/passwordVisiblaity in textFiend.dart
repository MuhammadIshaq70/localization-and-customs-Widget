// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\CustomTextField///////////////////////////////////////////////////////////////
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustemTextField extends StatelessWidget {
//   String? label;
//   bool? obsecuretext;
//   String? hint;
//   final controller;
//   String? validator;
//   var prefix;

//   CustemTextField({
//     this.controller,
//     this.validator,
//     this.label,
//     this.hint,
//     this.prefix,
//     this.obsecuretext,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 20.sp),
//       child: SizedBox(
//         height: 50.sp,
//         child: TextFormField(
//           obscureText: obsecuretext ?? false,
//           controller: controller,
//           decoration: InputDecoration(
//               suffixIcon: prefix,
//               labelText: label,
//               hintText: hint,
//               contentPadding: const EdgeInsets.symmetric(horizontal: 20),
//               errorStyle: const TextStyle(height: 0.1),
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: const BorderSide(width: 1))),
//           validator: (v) {
//             if (v!.isEmpty) {
//               return validator;
//             }
//             return null;
//           },
//         ),
//       ),
//     );
//   }
// }
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Password Visibality Icon Button///////////////////////////////////////////
// 		bool isShowPassword== false;

//            CustemTextField(
//                     obsecuretext: isShowPassword,
//                     prefix: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           isShowPassword = !isShowPassword;
//                         });
//                       },
//                       icon: Icon(
//                         !isShowPassword
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                     ),
//                     controller: passwordController,
//                     label: 'Password',
//                     validator: 'Enter Password',
//                   ),
