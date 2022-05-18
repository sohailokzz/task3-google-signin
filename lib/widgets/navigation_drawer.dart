import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
    required this.accountName,
    required this.accountEmail,
    required this.photoUrl,
    required this.onTap,
  }) : super(key: key);

  final String accountName;
  final String accountEmail;
  final String photoUrl;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xff005637),
            ),
            accountName: Text(
              accountName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              accountEmail,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                photoUrl,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    onTap();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffFFE800),
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: const Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
