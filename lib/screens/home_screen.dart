// ana ekran

//import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
//import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

//import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
//import '../widgets/suggested_action_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fungipedia',
            style: Theme.of(context).textTheme.headlineMedium),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.light_mode_outlined),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  CupertinoIcons.person_crop_circle_fill,
                  size: 50,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              accountName: Text("Fungipedia'ya Hoşgeldin!"),
              accountEmail: null,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.search_circle),
              title: Text('Mantar Ara'),
              onTap: () => context.push("/search"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.bookmark),
              title: Text('Mantarlarım'),
              onTap: () => context.push("/library"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person),
              title: Text('Profil'),
              onTap: () => context.push("/profile"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text('Ayarlar'),
              onTap: () => context.push("/settings"),
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Çıkış Yap'),
              onTap: () => context.go("/login"),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverToBoxAdapter(
                child: Text(
                  "Hızlı İşlemler",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final actions = [
                      ActionCard(
                        icon: Icons.person,
                        title: "Profil",
                        color: Theme.of(context).colorScheme.primary,
                        onTap: () => context.push("/profile"),
                      ),
                      ActionCard(
                        icon: Icons.login,
                        title: "Giriş Yap",
                        color: Theme.of(context).colorScheme.secondary,
                        onTap: () => context.push("/login"),
                      ),
                      ActionCard(
                        icon: Icons.app_registration,
                        title: "Kayıt Ol",
                        color: Theme.of(context).colorScheme.tertiary,
                        onTap: () => context.go("/register"),
                      ),
                      ActionCard(
                        icon: Icons.delete,
                        title: "Hesabı Kaldır",
                        color: Theme.of(context).colorScheme.error,
                        onTap: () => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            icon: Icon(Icons.warning),
                            title: Text("Uyarı"),
                            content: Text(
                                "Hesabınızı silmek istediğinizden emin misiniz?"),
                            actions: [
                              TextButton(
                                onPressed: () => context.pop(),
                                child: Text("İptal"),
                              ),
                              FilledButton(
                                onPressed: () {},
                                child: Text("Sil"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ];
                    return actions[index];
                  },
                  childCount: 4,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const ActionCard({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: color, width: 4)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32, color: color),
              SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: color,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
