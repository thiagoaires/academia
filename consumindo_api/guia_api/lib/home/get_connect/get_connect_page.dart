import 'package:consumindo_api_com_flutter/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_connect_controller.dart';

class GetConnectPage extends GetView<GetConnectController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.name),
              subtitle: Text('Quantidade de types: ${item.types?.length ?? 0}'),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error ?? ''),
              TextButton(
                onPressed: () => controller.findUsers(),
                child: Text('Tentar novamente'),
              )
            ],
          ),
        );
      }),
    );
  }
}
