import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() =>
      _InfoScreenState();
}

class _InfoScreenState
    extends State<InfoScreen> {

  String appName = "";
  String version = "";
  String buildNumber = "";

  @override
  void initState() {
    super.initState();
    loadPackageInfo();
  }

  Future<void> loadPackageInfo() async {

    PackageInfo packageInfo =
        await PackageInfo.fromPlatform();

    setState(() {

      appName =
          packageInfo.appName;

      version =
          packageInfo.version;

      buildNumber =
          packageInfo.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("About App"),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Center(
              child: Icon(
                Icons.electrical_services,
                size: 100,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Application Name : $appName",
            ),

            Text(
              "Version : $version",
            ),

            Text(
              "Build Number : $buildNumber",
            ),

            const SizedBox(height: 20),

            const Text(
              "Generator Fuel Tracking System",
            ),

            const SizedBox(height: 10),

            const Text(
              "Manage generator runtime, fuel usage and forecasting.",
            ),
          ],
        ),
      ),
    );
  }
}
