import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/common/style/style.dart';
import 'package:myapp/common/widgets/appbar.dart';
import 'package:myapp/common/widgets/drawer.dart';
import 'package:nb_utils/nb_utils.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  final _skey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar.getAppBar(_skey, context),
      drawer: CustomDrawer.getDrawer(_skey, context),
      body: _1stPart(),
    );
  }

  _1stPart() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // Use Column to arrange children vertically
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Add crossAxisAlignment
              children: [
                20.width,
                // Fixed width between buttons
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // padding: EdgeInsets.symmetric(horizontal: 5),
                      side: BorderSide(color: AppColors.grey, width: 1),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      'My Jobs',
                      style: AppStyle.primary(
                        color: AppColors.darkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 17
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20), // Fixed width between buttons
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.grey, width: 1),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Post a free job',
                      style: AppStyle.primary(
                        color: AppColors.darkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 17
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),

          Expanded(
            child: _2ndPart(),
          ), // Add _2ndPart as another child of the Column
        ],
      ),
    );
  }

  _2ndPart() {
    return Column(
      children: [
        Divider(thickness: 16, color: AppColors.bgColor),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: 10,
            separatorBuilder:
                (context, index) =>
                    Divider(color: AppColors.lightGrey, thickness: 2),
            itemBuilder: (context, index) {
              return _JobCard(); // Reuse job card widget
            },
          ),
        ),
      ],
    );
  }

  _JobCard() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Leading image
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbTQ4uFs3FXpQcIlRiiF4Pm2vsylG-NyjyVg&s',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          // Title & subtitle column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Remote Python Developer -',
                  style: AppStyle.primary(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '17852',
                      style: AppStyle.primary(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.shield),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'Turing',
                  style: AppStyle.primary(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Gurugram, Haryana, India (Remote)',
                  style: AppStyle.primary(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      child: Image.network(
                        'https://media.licdn.com/dms/image/v2/D560BAQHkkUdE-n7zMw/company-logo_200_200/company-logo_200_200/0/1707492868760?e=2147483647&v=beta&t=4BsuKDEkQwQWGSr68bqAbQEofyMv3uM59c6RA1M5CCc',
                      ),
                    ),
                    SizedBox(width: 5),
                    Text('8 school alumni work here'),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('Promoted ·'),
                    5.width,
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/023/986/926/non_2x/linkedin-logo-linkedin-logo-transparent-linkedin-icon-transparent-free-free-png.png',
                      ),
                    ),
                    SizedBox(width: 5),
                    Text('Easy apply'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
