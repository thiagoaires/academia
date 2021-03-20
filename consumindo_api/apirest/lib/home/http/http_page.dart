import 'package:apirest/home/http/http_controller.dart';
import 'package:apirest/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HttpPage extends GetView<HttpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('HTTP'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.name),
            );
          },
        );
      }, onError: (error) {
        return Center(
          child: Text(error),
        );
      }),
    );
  }
}
