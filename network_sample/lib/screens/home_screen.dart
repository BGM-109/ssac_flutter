import 'package:flutter/material.dart';
import 'package:network_sample/provider/ajax_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _renderListView() {
    final provider = Provider.of<AjaxProvider>(context);
    final cache = provider.cache;
    final loading = provider.loading;

    if (loading && cache.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (!loading && cache.isEmpty) {
      return const Center(child: Text("아이템이 없습니다."));
    }

    return ListView.builder(
      itemCount: cache.length + 1,
      itemBuilder: (context, index) {
        if (index < cache.length) {
          return ListTile(
            title: Text(
              cache[index].toString(),
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
        if (!provider.loading) {
          Future.microtask(() {
            provider.fetchItems(nextId: index);
          });
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 아주잠깐기다려라
    Future.microtask(
        () => Provider.of<AjaxProvider>(context, listen: false).fetchItems());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cursor Base Infinite ListView"),
      ),
      body: _renderListView(),
    );
  }
}
