// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/features/base_layout/presenation/manager/layout_cubit.dart';
import 'package:hekta/features/base_layout/presenation/view/widgets/bottom_nav.dart';
import 'package:hekta/features/home/presentations/views/home.dart';

class layout extends StatelessWidget {
  const layout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => layout_cubit(),
      child: const Scaffold(
        body: home(),
        bottomNavigationBar: bottom_nav(),
      ),
    );
  }
}
