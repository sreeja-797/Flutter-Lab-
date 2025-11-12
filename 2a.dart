import &#39;package:flutter/material.dart&#39;;
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
// Using a reliable Flutter logo from a trusted source
final String imageUrl =
&#39;https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png&#39;;
@override
Widget build(BuildContext context) {
return MaterialApp(
title: &#39;Flutter Widgets Demo&#39;,
home: Scaffold(appBar: AppBar(
title: Text(&#39;Flutter Widgets Demo&#39;),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
// �� TEXT WIDGET
Text(
&#39;�� Welcome to Flutter!&#39;,
style: TextStyle(
fontSize: 24,
color: Colors.deepPurple,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 20),
// ��️ IMAGE WIDGET with error handling
Image.network(
imageUrl,
width: 200,
errorBuilder: (context, error, stackTrace) {
return Column(
children: [
Icon(Icons.error, color: Colors.red, size: 40),
Text(&#39;Failed to load image&#39;),
],
);
},
),
SizedBox(height: 20),
// �� CONTAINER WIDGET
Container(
padding: EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.amber[200],
borderRadius: BorderRadius.circular(8),
),
child: Text(
&#39;This is a container with padding and background color.&#39;,
textAlign: TextAlign.center,
),

),
SizedBox(height: 20),
// �� ICON WIDGETS IN A ROW
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.favorite, color: Colors.red, size: 30),
SizedBox(width: 10),
Icon(Icons.star, color: Colors.orange, size: 30),
SizedBox(width: 10),
Icon(Icons.thumb_up, color: Colors.blue, size: 30),
],
),
],
),
),
),
);
}
}