

// ///////////////////////////////////class _ProfileScreenState extends State<ProfileScreen> { ///////////////////////////////////
//   XFile? _pickedImage;
//   String? imageUrl;

//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     _pickedImage = await picker.pickImage(source: ImageSource.camera);
//     setState(() {});
//     uploadImageToFirebaseStorage(_pickedImage!.path);
//   }

//   //Image push in firebase

//   Future<String> uploadImageToFirebaseStorage(String imagePath) async {
//     Reference storageReference = FirebaseStorage.instance
//         .ref()
//         .child("image/${DateTime.now().millisecondsSinceEpoch}");

//     UploadTask uploadTask = storageReference.putFile(File(imagePath));

//     await uploadTask.whenComplete(() => print('Image uploaded'));

//     imageUrl = await storageReference.getDownloadURL();
//     return imageUrl.toString();
//   }
// //////////////////////////////////////////////////////////Package///////////////////////////////////
// image_Picker
// Firebase_Storage
//  ///////////////////////////////////////////////////////////////// @override/////////////////////////////////////////
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\push image URL/////////////////////////////////////////////  
// "image": imageUrl,
// ///////////////////////////////////////////////body///////////////////////////////////////////////////////
// Center(
//                 child: SizedBox(
//                   height: 110.sp,
//                   width: 110.sp,
//                   child: Stack(
//                     alignment: Alignment.bottomRight,
//                     children: [
//                       Container(
//                         height: 110.sp,
//                         width: 110.sp,
//                         decoration: BoxDecoration(
//                             color: const Color.fromARGB(255, 195, 183, 183),
//                             borderRadius: BorderRadius.circular(100)),
//                         child: _pickedImage != null
//                             ? CircleAvatar(
//                                 radius: 75,
//                                 backgroundImage:
//                                     FileImage(File(_pickedImage!.path)),
//                               )
//                             : const Icon(
//                                 Icons.person,
//                                 size: 80,
//                               ),
//                       ),
//                       Positioned(
//                         bottom: 1.sp,
//                         child: Container(
//                           width: 36.sp,
//                           height: 36.sp,
//                           decoration: BoxDecoration(
//                               border:
//                                   Border.all(width: 4.sp, color: Colors.white),
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20.sp)
//                               //  shape: OvalBorder(),
//                               ),
//                           child: InkWell(
//                             onTap: _pickImage,
//                             child: CircleAvatar(
//                               radius: 20.sp,
//                               backgroundColor: const Color(0xFF00373B),
//                               child: Icon(
//                                 Icons.edit,
//                                 size: 20.sp,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

