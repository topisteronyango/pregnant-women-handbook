// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// void main() => runApp(webpage());

// class webpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter WebView Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter WebView Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   WebViewController _controller;
//   String _url = 'https://www.google.com';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//         child: WebView(
//           initialUrl: _url,
//           javascriptMode: JavascriptMode.unrestricted,
//           onWebViewCreated: (WebViewController controller) {
//             _controller = controller;
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           await _controller?.reload();
//         },
//         tooltip: 'Reload',
//         child: Icon(Icons.refresh),
//       ),
//     );
//   }
// }
