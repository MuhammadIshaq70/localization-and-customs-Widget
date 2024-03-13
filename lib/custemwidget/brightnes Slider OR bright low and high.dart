

// ///////////////////////////////////class _ProfileScreenState extends State<ProfileScreen> { ///////////////////////////////////
//  double brightness = 0.0;
//   bool toggle = false;
//   @override
//   void initState() {
//     super.initState();
//     initplatformBrightness();
//   }

//   Future<void> initplatformBrightness() async {
//     double bright;
//     try {
//       bright = await FlutterScreenWake.brightness;
//     } on PlatformException {
//       bright = 1.0;
//     }
//     if (!mounted) return;
//     setState(() {
//       brightness = bright;
//     });
//   }
// //////////////////////////////////////////////////////////Package///////////////////////////////////
// flutter_screen_wake: ^1.0.2

// ///////////////////////////////////////////////body///////////////////////////////////////////////////////
 
//  Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black26),
//               ),
//               child: Row(
//                 children: [
//                   AnimatedCrossFade(
//                       firstChild: Icon(
//                         Icons.brightness_7,
//                         size: 50,
//                       ),
//                       secondChild: Icon(
//                         Icons.brightness_3,
//                         size: 50.sp,
//                       ),
//                       crossFadeState: toggle
//                           ? CrossFadeState.showSecond
//                           : CrossFadeState.showFirst,
//                       duration: Duration(seconds: 1)),
//                   Expanded(
//                     child: Slider(
//                       value: brightness,
//                       onChanged: (value) {
//                         setState(() {
//                           brightness = value;
//                         });
//                         FlutterScreenWake.setBrightness(brightness);
//                         if (brightness == 0) {
//                           toggle = true;
//                         } else {
//                           toggle = false;
//                         }
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),

