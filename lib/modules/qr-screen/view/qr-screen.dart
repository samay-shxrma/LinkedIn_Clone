

import 'package:flutter/material.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  final String qrData = "https://www.linkedin.com/in/samay-sharma-013225256/";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          title: Text('LinkedIn QR code'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          bottom: TabBar(
            labelColor: Colors.green,

            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: DefaultTextStyle(
                  style: AppStyle.primary(
                    fontSize: 18,
                    color: Colors.black,
                  ), // Adjust the font size here
                  child: Text('My code'),
                ),
              ),
              Tab(
                child: DefaultTextStyle(
                  style: AppStyle.primary(
                    fontSize: 18,
                    color: Colors.black,
                  ), // Adjust the font size here
                  child: Text('Scan'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [_myCode(qrdata: qrData), _scan()]),
      ),
    );
  }

  _myCode({required String qrdata}) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: 34),
              padding: EdgeInsets.symmetric(horizontal: 44, vertical: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Column(
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      'Samay Sharma',
                      style: AppStyle.primary(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Flutter Dev',
                      style: AppStyle.primary(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGrey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    QrImageView(data: qrdata, size: 200),
                  ],
                ),
              ),
            ),
            const CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D5603AQH-TBDHuc5FMw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1718965631486?e=2147483647&v=beta&t=9KwKYo6sr1b2oyU-_imNlUMxFV2nFmZzrrXwy-vviQ8',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, color: AppColors.darkGrey),
            SizedBox(width: 10),
            Text(
              'Share my code',
              style: AppStyle.primary(fontSize: 17, color: AppColors.darkGrey),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.save_alt, color: AppColors.darkGrey),
            SizedBox(width: 10),
            Text(
              'Save to gallery',
              style: AppStyle.primary(fontSize: 17, color: AppColors.darkGrey),
            ),
          ],
        ),
      ],
    );
  }

  _scan() {
  return Column(
    children: [
      const SizedBox(height: 16),
      
    ],
  );
}

}
