import 'package:flutter/material.dart';
import 'package:untitled6/service/log_service.dart';

import '../service/platform_id_service.dart';
import '../service/utils_servide.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Packages"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Utils.showToast("Sultonov Aziz");
              },
              child: Text("Show Toast"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                LogService.d("Debug log");
                LogService.i("Info log");
                LogService.w("Abdujabbor");
                LogService.e("Abdujabbor");
              },
              child: Text("Show Log"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var id = await PlatformId.getDeviceId();
                LogService.i(id);
              },
              child: Text("Show ID"),
            ),
          ],
        ),
      ),
    );
  }
}
