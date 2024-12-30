import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/home_page_vm.dart';

class HomeBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("HomeBody build...");
    int count = ref.watch(countProvider);
    // int count = ref.read(countProvider);
    CountVM vm = ref.read(countProvider.notifier);

    return Center(
      child: Column(
        children: [
          OutlinedButton(onPressed: (){
            vm.add();
          }, child: Text("증가")),
          Text(
            "$count",
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}