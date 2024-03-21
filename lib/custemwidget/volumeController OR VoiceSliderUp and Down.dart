

// //////////////////////////////////////////////////////////Package///////////////////////////////////
// perfect_volume_control: ^1.0.5
// ///////////////////////////////////////////////body///////////////////////////////////////////////////////
 
// import 'package:flutter/material.dart';
// import 'package:perfect_volume_control/perfect_volume_control.dart';

// class VolumeController extends StatefulWidget {
//   const VolumeController({super.key});

//   @override
//   State<VolumeController> createState() => _VolumeControllerState();
// }

// class _VolumeControllerState extends State<VolumeController> {
//   @override
//   Widget build(BuildContext context) {
//     Future openDialog() => showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return Dialog(
//             child: Volume(),
//           );
//         });
//     return Scaffold(
//       body: Column(
//         children: [],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           openDialog();
//         },
//         child: Icon(Icons.volume_up),
//       ),
//     );
//   }
// }

// class Volume extends StatefulWidget {
//   const Volume({super.key});

//   @override
//   State<Volume> createState() => _VolumeState();
// }

// class _VolumeState extends State<Volume> {
//   double currentVol = 0.5;
//   @override
//   void initState() {
//     PerfectVolumeControl.hideUI = false;
//     Future.delayed(Duration.zero, () async {
//       currentVol = await PerfectVolumeControl.getVolume();
//       setState(() {});
//     });
//     PerfectVolumeControl.stream.listen((volume) {
//       setState(() {
//         currentVol = volume;
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       width: 100,
//       child: Column(
//         children: [
//           Text('Volume'),
//           Slider(
//             value: currentVol,
//             onChanged: (volume) {
//               currentVol = volume;
//               PerfectVolumeControl.setVolume(volume);
//               setState(() {});
//             },
//             min: 0,
//             max: 1,
//             divisions: 100,
//           )
//         ],
//       ),
//     );
//   }
// }
