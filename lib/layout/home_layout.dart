import 'package:flutter/material.dart';
import 'package:gym_management_system/test.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: NavigationDrawer(),
    );
  }

}
class NavigationDrawer extends StatelessWidget {
  NavigationDrawer();

  @override
  Widget build(BuildContext context) =>
      Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builHeader(context),
              builMenuiItem(context),
            ],
          ),
        ),
      );

  Widget builHeader(BuildContext context) =>
      Material(
        color: Colors.blue.shade700,
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TestScreen()));
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 24 +MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 52,
                child: SizedBox(
                  child: ClipOval(
                    child: Image.asset("image/home.png"),
                  ),
                ),
                ),
                SizedBox(height: 12.0,),
                Text(
                  'Salah Alkhameri',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,),
                ),
                Text(
                  'salah@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,),
                ),
              ],
            ),
          ),
        ),
      );

  Widget builMenuiItem(BuildContext context) =>
      Container(
        padding: EdgeInsets.all(24.0),
        child: Wrap(
          runSpacing: 16.0,
          children: [
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.transfer_within_a_station),
              title: Text('Trainees'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TestScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined),
              title: Text('Memberships'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_cal_outlined),
              title: Text('Employees'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.paste_sharp),
              title: Text('Payrolls'),
              onTap: () {},
            ),
            Divider(color: Colors.black54,),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('settings'),
              onTap: () {},
            ),
          ],
        ),
      );

}