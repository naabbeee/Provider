import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider.dart';

class MyPro extends StatefulWidget {
  const MyPro({super.key});

  @override
  State<MyPro> createState() => _MyProState();
}

class _MyProState extends State<MyPro> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp){
      Provider.of<ProviderOperation>(context,listen: false).getAllPosts();
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "PROVIDER",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
        )),
      ),
      body: Consumer<ProviderOperation>(builder: (context, value, child) {
        if (value.isLoading) {
          return const CircularProgressIndicator();
        }
        final Listusers = value.posts;
        return ListView.builder(
          itemCount: Listusers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text(Listusers[index].id.toString()),
                tileColor: Colors.grey.withOpacity(0.2),
                title: Text(Listusers[index].title!,style: const TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text(Listusers[index].body!),
              ),
            );
          },
        );
      }),
    );
  }
}
