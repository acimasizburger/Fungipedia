import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                    child: Icon(
                      CupertinoIcons.person_crop_circle_fill,
                      size: 50,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Kullanıcı Adı",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "kullanici@ornek.com",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(CupertinoIcons.person),
            title: Text('Profil Bilgileri'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(CupertinoIcons.lock),
            title: Text('Şifre Değiştir'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text('Ayarlar'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => context.push("/settings"),
          ),
          const Divider(),
          ListTile(
            leading: Icon(CupertinoIcons.info),
            title: Text('Uygulama Hakkında'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              'Çıkış Yap',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () => context.go("/login"),
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}