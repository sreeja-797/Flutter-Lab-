import &#39;package:flutter/material.dart&#39;;
void main() =&gt; runApp(NavigationWithImagesApp());
class NavigationWithImagesApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: &#39;Navigator with Images Demo&#39;,
home: FirstScreen(),
);
}
}
// First screen with image and button
class FirstScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text(&#39;First Screen&#39;)),
body: Center(
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
// Updated image URL (works fine)

Image.network(
&#39;https://images.unsplash.com/photo-1506744038136-
46273834b3fb?auto=format&amp;fit=crop&amp;w=600&amp;q=60&#39;,
width: 300,
height: 200,
fit: BoxFit.cover,
),
SizedBox(height: 20),
ElevatedButton(
child: Text(&#39;Go to Second Screen&#39;),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) =&gt; SecondScreen()),
);
},
),
],
),
),
);
}
}
// Second screen with different image and button
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text(&#39;Second Screen&#39;)),
body: Center(
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
// Updated image URL (works fine)
Image.network(
&#39;https://images.unsplash.com/photo-1494526585095-
c41746248156?auto=format&amp;fit=crop&amp;w=600&amp;q=60&#39;,
width: 300,
height: 200,
fit: BoxFit.cover,
),
SizedBox(height: 20),
ElevatedButton(
child: Text(&#39;Go Back&#39;),
onPressed: () {
Navigator.pop(context);

},
),
],
),
),
);
}
}