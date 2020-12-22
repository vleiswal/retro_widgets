import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  List<Widget> layoutChildren(double boxSide) {
    return [
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text('Text One',
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.green,
        alignment: Alignment.center,
        child: Text('Text Two',
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxSide = size.shortestSide - 50;
    return Scaffold(
      body: Center(child: Builder(builder: (context) {
        if (orientation.index == Orientation.landscape.index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: layoutChildren(boxSide),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: layoutChildren(boxSide),
          );
        }
      })),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Container(
//         width: 400,
//         height: 700,
//         color: Colors.grey,
//         child: Stack(
//           alignment: Alignment.topRight,
//           fit: StackFit.loose,
//           clipBehavior: Clip.antiAlias,
//           children: <Widget>[
//             Container(
//               width: 200,
//               height: 200,
//               color: Colors.red,
//             ),
//             Positioned(
//               bottom: -20,
//               right: 0,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Wrap(
//           direction: Axis.horizontal,
//           children: <Widget>[
//             ElevatedButton(
//               child: Text('Button 1'),
//               onPressed: () {},
//             ),
//             ElevatedButton(
//               child: Text('Button 2'),
//               onPressed: () {},
//             ),
//             ElevatedButton(
//               child: Text('Button 3'),
//               onPressed: () {},
//             ),
//             // ElevatedButton(
//             //   child: Text('Button 4'),
//             //   onPressed: () {},
//             // ),
//             // ElevatedButton(
//             //   child: Text('Button 5'),
//             //   onPressed: () {},
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Container(
//         height: 200,
//         color: Colors.red,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             ElevatedButton(
//               child: text:'Button 1'),
//               onPressed: () {},
//             ),
//             ElevatedButton(
//               child: text:'Button 1'),
//               onPressed: () {},
//             ),
//             ElevatedButton(
//               child: text:'Button 1'),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         //heightFactor: 4,
//         //widthFactor: 2,
//         child: Container(
//           //color: Colors.blue,
//           padding: EdgeInsets.all(8),
//           //constraints: BoxConstraints.expand(),
//           alignment: Alignment.center,
//           width: 200,
//           height: 200,
//           //transform: Matrix4.rotationZ(0.5),
//           decoration: BoxDecoration(
//             color: Colors.blue,
//             border: Border.all(
//               width: 3,
//               color: Colors.purple,
//               style: BorderStyle.solid,
//             ),
//             //borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 blurRadius: 4.0,
//                 spreadRadius: 2.0,
//                 //offset: Offset.
//               ),
//             ],
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.centerRight,
//               colors: [
//                 Colors.blue,
//                 Colors.green,
//                 Colors.yellow,
//               ],
//             ),
//             shape: BoxShape.circle,
//           ),
//           child: text:
//             'Flutter Essenstials',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
