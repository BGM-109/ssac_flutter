import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:network_sample/model/post.dart';
import 'package:network_sample/viewmodel/post_viewmodel.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  PostViewModel viewmodel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future builder "),
      ),
      body: FutureBuilder<List<Post>>(
          future: viewmodel.getPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      secondaryActions: [
                        IconSlideAction(
                          caption: "WishList",
                          color: Colors.grey,
                          icon: Icons.favorite_border_outlined,
                          onTap: () {},
                        ),
                      ],
                      actionExtentRatio: 1 / 6,
                      child:
                          ListTile(title: Text(snapshot.data![index].title)));
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
