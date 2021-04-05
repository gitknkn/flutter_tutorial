// import 'package:flutter/material.dart';
// import 'package:youtube_demo/main.dart';
// import 'package:youtube_demo/practice1/youtube_screen.dart';
//
// class HomeScreen extends StatelessWidget {
//   final double containerWidth = 300;
//   final double containerHeight = 80;
//   final double sizedBoxHeight = 35;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//       ),
//       body: Container(
//         color: Colors.black,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // ButtonTheme(
//               //   minWidth: containerWidth,
//               //   height: containerHeight,
//               SizedBox(
//                 width: containerWidth,
//                 height: containerHeight,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) {
//                       return YoutubeScreen();
//                     }));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red[100],
//                   ),
//                   child: Text(
//                     'YouTubeへ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ),
//               // ),
//               SizedBox(height: sizedBoxHeight),
//               Container(
//                 color: Colors.red[100],
//                 width: containerWidth,
//                 height: containerHeight,
//                 child: Text('\'仮YouTubeへ\''),
//                 alignment: Alignment.center,
//               ),
//               SizedBox(height: sizedBoxHeight),
//               Container(
//                 color: Colors.red[100],
//                 width: containerWidth,
//                 height: containerHeight,
//                 child: Text('\'仮YouTubeへ\''),
//                 alignment: Alignment.center,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
