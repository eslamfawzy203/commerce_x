import 'package:commerce_x/screens/User/Language.dart';
import 'package:commerce_x/screens/User/edit_profile.dart';
import 'package:commerce_x/screens/User/my_cards.dart';
import 'package:commerce_x/screens/App/my_orders.dart';
import 'package:commerce_x/screens/App/settings.dart';
import 'package:commerce_x/screens/User/shipping_address.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> profileContents = [
  'My Account',
  'My Orders',
  'Language Settings',
  'Shipping Address',
  'My Card',
  'Settings',
];
List<Widget> profileContentScreens = const [
  EditProfile(),
  MyOrders(),
  Language(),
  ShippingAddress(),
  MyCards(),
  Settings(),
];
int? selected;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('../assets/images/profile.jpg')),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: customizedText(data: 'John Doe'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: profileContents.length,
                    itemBuilder: (context, index) => Card(
                          elevation: 10,
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      profileContentScreens[index]));
                            },
                            leading: const Icon(Icons.shop),
                            title: Text(profileContents[index]),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        )),
              ),
            ]),
      ),
    );
  }
}
