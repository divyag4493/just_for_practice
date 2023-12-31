import 'index.dart';

class SecondPage extends StatelessWidget {
 String? name;
 SecondPage({this.name = 'default'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to $name'),
      ),
    );
  }
}
