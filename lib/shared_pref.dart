import 'index.dart';
class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  var _nameController = TextEditingController();
  String? name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  void getPref()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    name = pref.getString('name');
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Prefernce'),),
      body: Center(
        child: Column(
          children: [
            Text('Name: ${name ?? 'Defualt Name'}'),
            TextField(
              controller: _nameController,
            ),
            ElevatedButton(onPressed: ()async{
              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setString('name', _nameController.text.toString());

            }, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
