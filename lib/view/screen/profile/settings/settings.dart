import 'package:eccomerce/controller/settings_controller.dart';
import 'package:eccomerce/view/screen/profile/settings/change_password.dart';
import 'package:eccomerce/view/screen/profile/settings/text_filed.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  @override
  final settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Get.back(),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
          Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 18, bottom: 18, right: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Personal Information',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextFiledContainer(
                          hintText: 'Full name',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        const TextFiledContainer(
                          hintText: 'Date of Birth',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                              onTap: () {
                                changePassword();
                              },
                              child: const Text(
                                'Change',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        const TextFiledContainer(
                          hintText: 'Password',
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Notifications',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        GetBuilder<SettingsController>(
                          builder: (settingsController) => ListView.builder(
                              itemCount: settingsController.checkList.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ListTile(
                                    title: Text(
                                      settingsController.checkList[index].name,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Switch(
                                        activeColor: Color(0xff2AA952),
                                        splashRadius: 15,
                                        value: settingsController
                                            .checkList[index].value,
                                        onChanged: (_) => settingsController
                                            .onChange(index)));
                              }),
                        )
                      ])))
        ])))));
  }
}
