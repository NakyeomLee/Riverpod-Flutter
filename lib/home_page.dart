import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/home_body.dart';
import 'package:riverapp/home_page_vm.dart';

class HomePage extends StatelessWidget { // main.dart에 있던 코드 옮기고 오류 뜨면 import 했나 꼭 확인하기

  @override
  Widget build(BuildContext context) {
    print("HomePage build");

    return Scaffold(
      body: HomeBody(),
    );
  }
}