void main() {
String name = &#39;John&#39;;
int age = 20;
print(&#39;Name: $name, Age: $age&#39;);
if (age &gt;= 18) {
print(&#39;$name is an adult.&#39;);
} else {
print(&#39;$name is a minor.&#39;);
}
for (int i = 1; i &lt;= 3; i++) {
print(&#39;Count: $i&#39;);
}
greet(name);
}
void greet(String name) {
print(&#39;Hello, $name!&#39;);
}