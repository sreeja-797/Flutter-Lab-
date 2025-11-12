import &#39;package:flutter/material.dart&#39;;
void main() =&gt; runApp(LayoutDemoApp());
class LayoutDemoApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: &#39;Layout Widgets Demo&#39;,
home: Scaffold(
appBar: AppBar(
title: Text(&#39;Row, Column &amp; Stack Demo&#39;),
centerTitle: true,
),
body: ListView(
padding: EdgeInsets.all(16),
children: [
// Column Layout
Text(&#39;�� Column Layout&#39;, style: headerStyle),
Container(
color: Colors.blue[50],
padding: EdgeInsets.all(12),
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
coloredBox(&#39;Box 1&#39;, Colors.red),
coloredBox(&#39;Box 2&#39;, Colors.green),
coloredBox(&#39;Box 3&#39;, Colors.orange),

],
),
),
SizedBox(height: 20),
// Row Layout
Text(&#39;➡️ Row Layout&#39;, style: headerStyle),
Container(
color: Colors.green[50],
padding: EdgeInsets.all(12),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Flexible(child: coloredBox(&#39;Box A&#39;, Colors.purple)),
Flexible(child: coloredBox(&#39;Box B&#39;, Colors.teal)),
Flexible(child: coloredBox(&#39;Box C&#39;, Colors.indigo)),
],
),
),
SizedBox(height: 20),
// Stack Layout
Text(&#39;�� Stack Layout&#39;, style: headerStyle),
Container(
width: double.infinity,
height: 200,
color: Colors.grey[300],
child: Stack(
alignment: Alignment.center,
children: [
Container(width: 180, height: 180, color: Colors.yellow),
Container(width: 120, height: 120, color: Colors.blue),
Container(width: 60, height: 60, color: Colors.red),
Text(&#39;Stacked!&#39;, style: TextStyle(color: Colors.white)),
],
),
),
],
),
),
);
}
// Helper method to create colored boxes with text
Widget coloredBox(String label, Color color) {
  return Container(
margin: EdgeInsets.all(4),
padding: EdgeInsets.all(16),
color: color,
child: Center(
child: Text(
label,
style: TextStyle(color: Colors.white),
),
),
);
}
// Style for section headers
TextStyle get headerStyle =&gt; TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
color: Colors.black87,
);
}

