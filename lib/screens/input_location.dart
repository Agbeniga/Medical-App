// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class InputLocationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               SvgPicture.asset('Logo.svg'),
//               SizedBox(height: 40.0),
//               Text(
//                 'Location',
//                 style: TextStyle(
//                   color: Color(0xff2A2AC0),
//                 ),
//               ),
//               Text(
//                 'Please enter your location',
//                 style: TextStyle(
//                   color: Color(0xffECF1FA),
//                 ),
//               ),
//               Form(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     suffixIcon: Icon(Icons.close, color: Colors.grey),
//                     prefixIcon: Icon(Icons.location_searching, color: Colors.grey),
//                     hintText: 'Your Location',
//                   ),
//                   keyboardType: TextInputType.phone,
//                 ),
//               ),
//               RaisedButton(
//                 onPressed: () {},
//                 color: Color(0xff2A2AC0),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0)),
//                 child: Text(
//                   'Continue',
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Resend code',
//                     style: TextStyle(
//                       color: Color(0xff2A2AC0),
//                     ),
//                   ),
//                   Text(
//                     'Change Number',
//                     style: TextStyle(
//                       color: Color(0xffECF1FA),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
