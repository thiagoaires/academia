import 'package:apirest/home/dio/dio_controller.dart';
import 'package:apirest/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioPage extends GetView<DioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DioPage'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            final UserModel item = state[index];
            ListTile(
              title: Text(item.name),
            );
          },
        );
      }),
    );
  }
}
