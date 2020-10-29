import 'package:flutter/material.dart';
import 'FilterScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: FilterScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
// void main() => runApp(
//       MaterialApp(
//         home: DevicePreview(
//           builder: (context) => FilterScreen(),
//         ),
//       ),
//     );
