import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:myapp/common/widgets/appbar.dart';
import 'package:myapp/common/widgets/drawer.dart';
import 'package:myapp/modules/home/my%20networks/view/manage-my-network.screen.dart';
import 'package:myapp/modules/home/view/home_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class MyNetworksScreen extends StatefulWidget {
  const MyNetworksScreen({super.key});

  @override
  State<MyNetworksScreen> createState() => _MyNetworksScreenState();
}

class _MyNetworksScreenState extends State<MyNetworksScreen> {
  final _skey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar.getAppBar(_skey, context),
      drawer: CustomDrawer.getDrawer(_skey, context),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              const ManageMyNetworkScreen().launch(context);
            },
            tileColor: Colors.white,
            title: Text(
              'Manage my network',
              style: AppStyle.primary(
                color: AppColors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
          10.height,
          ListTile(
            tileColor: Colors.white,
            title: Text(
              'Invitation',
              style: AppStyle.primary(
                color: AppColors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
          10.height,
          _peopleYouMayknow(),
        ],
      ),
    );
  }

  _peopleYouMayknow() {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: [
              Text(
                'People you may know from Dr. A. P. J. Abdul Kalam Technical University',
                style: AppStyle.primary(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              10.height,
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.50,
                    crossAxisCount: 2,
                  ),
                  itemBuilder:
                      (context, index) => Container(
                        decoration: boxDecorationWithRoundedCorners(
                          border: Border.all(color: AppColors.grey),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 42,
                              child: ClipOval(
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPAHonELYZktmTTbS90hpzem3uRdp-ielo4w&s',
                                ),
                              ),
                            ),
                            20.height,
                            Text(
                              'Ayesha Karmali',
                              style: AppStyle.primary(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            5.height,
                            Text(
                              'Junior Salesforce Developer - VRP C',
                              style: AppStyle.primary(
                                color: AppColors.darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            16.height,
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  child: ClipOval(
                                    child: Image.network(
                                      'https://media.licdn.com/dms/image/v2/D560BAQHkkUdE-n7zMw/company-logo_200_200/company-logo_200_200/0/1707492868760?e=2147483647&v=beta&t=4BsuKDEkQwQWGSr68bqAbQEofyMv3uM59c6RA1M5CCc',
                                    ),
                                  ),
                                ),
                                10.width,
                                Expanded(
                                  child: Text(
                                    'Dr. A. P. J. Abdul Kalam Technical University',
                                    style: AppStyle.primary(
                                      color: AppColors.darkGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            20.height,
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Connect',
                                style: TextStyle(color: AppColors.lightBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
