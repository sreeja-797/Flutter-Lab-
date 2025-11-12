import &#39;package:flutter/material.dart&#39;;
void main() =&gt; runApp(MediaQueryExampleApp());
class MediaQueryExampleApp extends StatelessWidget {
@override
Widget build(BuildContext context) {

return MaterialApp(
title: &#39;MediaQuery &amp; Breakpoints Demo&#39;,
home: Scaffold(
appBar: AppBar(title: Text(&#39;Responsive UI with MediaQuery&#39;)),
body: ResponsiveWidget(),
),
);
}
}
class ResponsiveWidget extends StatelessWidget {
@override
Widget build(BuildContext context) {
// Get screen width from MediaQuery
double screenWidth = MediaQuery.of(context).size.width;
// Define breakpoints
if (screenWidth &lt; 600) {
return mobileLayout();
} else if (screenWidth &lt; 900) {
return tabletLayout();
} else {
return desktopLayout();
}
}
Widget mobileLayout() {
return Center(
child: Container(
color: Colors.blue,
width: 150,
height: 150,
child: Center(
child: Text(&#39;Mobile Layout&#39;,
style: TextStyle(color: Colors.white, fontSize: 18)),
),
),
);
}
Widget tabletLayout() {
return Center(
child: Container(
color: Colors.green,
width: 300,
height: 300,
child: Center(

child: Text(&#39;Tablet Layout&#39;,
style: TextStyle(color: Colors.white, fontSize: 24)),
),
),
);
}
Widget desktopLayout() {
return Center(
child: Container(
color: Colors.orange,
width: 450,
height: 450,
child: Center(
child: Text(&#39;Desktop Layout&#39;,
style: TextStyle(color: Colors.white, fontSize: 30)),
),
),
);
}
}