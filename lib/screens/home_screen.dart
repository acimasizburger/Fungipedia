import 'package:go_router/go_router.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Örnek mantar verileri
    final List<Map<String, String>> mushrooms = [
      {
        'name': 'Ağlayan Mantar',
        'image': 'assets/images/crying_mushroom.jpg',
        'description': 'Bu mantar genellikle nemli ormanlarda bulunur ve ağlayan bir görünüme sahiptir.'
      },
      {
        'name': 'Sinek Mantarı',
        'image': 'assets/images/fly_agaric.jpg',
        'description': 'Parlak kırmızı renkli, zehirli bir mantar türüdür. Peri masallarında sıkça yer alır.'
      },
      {
        'name': 'İstiridye Mantarı',
        'image': 'assets/images/oyster_mushroom.jpg',
        'description': 'Lezzetli ve yenilebilir bir mantar türüdür. Genellikle ağaç gövdelerinde yetişir.'
      },
    ];

    // Tema renkleri
    final Color backgroundColor = Color.fromARGB(255, 21, 20, 25); // Açık arka plan
    final Color cardColor = Color.fromARGB(255, 27, 27, 30); // Kart arka planı
    final Color appBarColor = Color.fromARGB(255, 245, 110, 15); // AppBar rengi
    final Color textColor = Color.fromARGB(255, 251, 251, 251); // Yazı rengi
    final Color bottomNavBarColor = Color.fromARGB(255, 38, 38, 38); // Alt navigasyon çubuğu rengi
    final Color drawerColor = Color.fromARGB(255, 27, 27, 30); // Drawer rengi

    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        backgroundColor: drawerColor,
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              width: 300,
              color: Color.fromARGB(255, 245, 110, 15),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Color.fromARGB(255, 251, 251, 251),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 251, 251),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home, color: Color.fromARGB(255, 251, 251, 251)),
              title: const Text(
              'Ana Sayfa',
              style: TextStyle(color: Color.fromARGB(255, 251, 251, 251)),
              ),
              onTap: () {
              Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings, color: Color.fromARGB(255, 251, 251, 251)),
              title: const Text(
              'Ayarlar',
              style: TextStyle(color: Color.fromARGB(255, 251, 251, 251)),
              ),
              onTap: () {
              Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Container(
        color: backgroundColor,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: mushrooms.length,
          itemBuilder: (context, index) {
            final mushroom = mushrooms[index];
            return Card(
              color: cardColor,
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(mushroom['image']!),
                  radius: 30,
                ),
                title: Text(
                  mushroom['name']!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                subtitle: Text(
                  mushroom['description']!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: textColor),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      backgroundColor: cardColor,
                      title: Text(
                        mushroom['name']!,
                        style: TextStyle(color: textColor),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(mushroom['image']!),
                          const SizedBox(height: 8),
                          Text(
                            mushroom['description']!,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Kapat'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomNavBarColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: textColor,
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            backgroundColor: textColor,
            icon: Icon(CupertinoIcons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            backgroundColor: textColor,
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          // Navigasyon işlemleri buraya gelecek
        },
      ),
    );
  }
}
