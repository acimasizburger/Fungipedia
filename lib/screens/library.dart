import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantar Galerisi',
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Text('Sırala:',
                        style: Theme.of(context).textTheme.titleMedium),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text('En Yeni'),
                      selected: true,
                      onSelected: (_) {},
                    ),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text('A-Z'),
                      selected: false,
                      onSelected: (_) {},
                    ),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text('Boyut'),
                      selected: false,
                      onSelected: (_) {},
                    ),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text('Yenilebilirlik'),
                      selected: false,
                      onSelected: (_) {},
                    ),
                    SizedBox(width: 8),
                    ChoiceChip(
                      label: Text('Konum'),
                      selected: false,
                      onSelected: (_) {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest,
                            child: Image.asset(
                              "assets/images/crying_mushroom.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: IconButton(
                            icon: Icon(CupertinoIcons.bookmark_fill),
                            style: IconButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.surface,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mantar ${index + 1}',
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${(index + 1) * 100} gün önce eklendi.',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(height: 8),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.search, size: 18),
                            label: Text('İncele'),
                            style: FilledButton.styleFrom(
                              minimumSize: Size(double.infinity, 36),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Filtrele'),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boyut',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Min',
                      prefixText: 'cm',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Max',
                      prefixText: 'cm',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Kategoriler',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                FilterChip(
                  label: Text('Zehirsiz'),
                  selected: true,
                  onSelected: (_) {},
                ),
                FilterChip(
                  label: Text('İlk kez bulundu'),
                  selected: false,
                  onSelected: (_) {},
                ),
                FilterChip(
                  label: Text('Fotoğraflı'),
                  selected: false,
                  onSelected: (_) {},
                ),
                FilterChip(
                  label: Text('Şapkalı'),
                  selected: false,
                  onSelected: (_) {},
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Arama',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mantar ara...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Temizle'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Uygula'),
          ),
        ],
      ),
    );
  }
}
