import &#39;package:flutter/material.dart&#39;;
void main() =&gt; runApp(MyApp());
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: &#39;Named Routes Demo&#39;,
initialRoute: &#39;/&#39;,
routes: {
&#39;/&#39;: (context) =&gt; FirstScreen(),
&#39;/second&#39;: (context) =&gt; SecondScreen(),
},
);
}
}
class FirstScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
final routeName = ModalRoute.of(context)?.settings.name ?? &#39;/&#39;;
return Scaffold(
appBar: AppBar(title: Text(&#39;First Screen&#39;)),
body: Center(
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
&#39;Current Route: $routeName&#39;,
style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
),

SizedBox(height: 20),
ElevatedButton(
onPressed: () {
Navigator.pushNamed(context, &#39;/second&#39;);
},
child: Text(&#39;Go to Second Screen&#39;),
),
],
),
),
);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
final routeName = ModalRoute.of(context)?.settings.name ?? &#39;/second&#39;;
return Scaffold(
appBar: AppBar(title: Text(&#39;Second Screen&#39;)),
body: Center(
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
&#39;Current Route: $routeName&#39;,
style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
),
SizedBox(height: 20),
ElevatedButton(
onPressed: () {
Navigator.pop(context);
},
child: Text(&#39;Go Back&#39;),
),
],
),
),
);
}
}