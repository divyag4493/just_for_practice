import 'index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SharedPref(),
    );
  }
}

class HomePage extends StatelessWidget {
  var nameController = TextEditingController();

  //TextEditingController? mController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(11.0),
              child: MyCustWidget(mController: nameController)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              name: nameController.text.toString(),
                            )));
                showSnackBarFun(context);
              },
              child: Text('Next Page'))
        ],
      ),
    );
  }
}

showSnackBarFun(context) {
  SnackBar snackBar = SnackBar(
    content: const Text('Data transfer in next page...',
        style: TextStyle(fontSize: 20,color: Colors.black)),
    dismissDirection: DismissDirection.vertical,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.orange,
    duration: Duration(seconds: 2),
    margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 150, left: 10, right: 10),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
