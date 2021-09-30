import 'package:flutter/material.dart';
import 'package:network_sample/provider/post_data_provider.dart';
import 'package:provider/provider.dart';

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  _ProviderDemoScreenState createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<PostDataProvider>(context, listen: false).getPostData());
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PostDataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Container(
          child: provider.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: provider.posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(provider.posts[index].title ?? ""),
                      subtitle: Text(provider.posts[index].body ?? ""),
                    );
                  })),
    );
  }
}
