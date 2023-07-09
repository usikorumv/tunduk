import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const routePath = 'main';

  static const routeName = 'main-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.login),
          label: Text("Войти"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 25,
          bottom: 25,
          left: 32,
        ),
        // TODO: Move that all to home_page.dart
        child: Column(
          children: [
            _SearchBar(),
            SizedBox(height: 22),
            _HorizontalListView(
              itemCount: 5,
              separatorWidth: 13,
              itemBuilder: (_, __) => _HelpCard(),
            ),
            SizedBox(height: 33),
            // TODO: Put that banner
            Container(height: 294),
            SizedBox(height: 31),
            _HorizontalListView(
              itemCount: 2,
              separatorWidth: 40,
              itemBuilder: (_, __) => _BadCard(),
            ),
            SizedBox(height: 37),
            Text(
              "Рекомендуемые услуги",
              style: TextStyle(),
            ),
            SizedBox(height: 25),
            _HorizontalListView(
              itemCount: 2,
              separatorWidth: 24,
              itemBuilder: (_, __) => _RecommendedCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

// TODO: Change that shit
class _HorizontalListView extends StatelessWidget {
  final int itemCount;
  final double separatorWidth;
  final Widget Function(BuildContext context, int index) itemBuilder;

  const _HorizontalListView({
    super.key,
    required this.itemCount,
    required this.separatorWidth,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      separatorBuilder: (_, __) => SizedBox(width: separatorWidth),
      itemBuilder: itemBuilder,
    );
  }
}

class _HelpCard extends StatelessWidget {
  const _HelpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

// TODO: Give proper name
class _BadCard extends StatelessWidget {
  const _BadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class _RecommendedCard extends StatelessWidget {
  const _RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
