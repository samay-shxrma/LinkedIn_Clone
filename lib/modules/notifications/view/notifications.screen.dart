import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:myapp/common/widgets/appbar.dart';
import 'package:myapp/common/widgets/drawer.dart';
import 'package:nb_utils/nb_utils.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final _skey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar.getAppBar(_skey, context),
      drawer: CustomDrawer.getDrawer(_skey, context),
      body: _notificationBody(),
    );
  }

  _notificationBody() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          color: AppColors.blue,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.width,
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightBlue,
                    ),
                  ),
                ),
                10.width,
                CircleAvatar(
                  radius: 32,
                  child: ClipOval(
                    child: Image.network(
                      'https://lp.miquido.com/hs-fs/hubfs/daria_orlova-2.png?width=200&height=200&name=daria_orlova-2.png',
                    ),
                  ),
                ),
                10.width,
                _centerChildData(),
                10.width,
                Column(children: [Text('1 min'), Icon(Icons.more_vert_outlined)]),
                15.width,
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: AppColors.grey);
      },
      itemCount: 10,
    );
  }

  Expanded _centerChildData() {
    return Expanded(
      child: Column(
        children: [
          RichTextWidget(
            list: [
              TextSpan(
                text: 'Daria Orlova',
                style: AppStyle.primary(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ' and 2,486 others reacted to your post',
                style: AppStyle.primary(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          10.height,
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "This is very wonderful news, I'm looking forward to November ...",
                style: AppStyle.primary(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "In November , we are launching  an internship program for UI/UX designer with ...",
                style: AppStyle.primary(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          10.height,
          30.height,
          Row(
            children: [
              Text(
                "2,486 Reactions · 275 Comments",
                style: AppStyle.primary(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          30.height,
        ],
      ),
    );
  }
}
