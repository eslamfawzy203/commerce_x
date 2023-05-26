import 'package:flutter/material.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_credit_card/u_credit_card.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: const Icon(Icons.add),
            )
          ],
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: customizedText(
                  data: 'My Cards',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Center(
                  child: customizedText(
                      data: 'Your Payment Cards',
                      style: TextStyle(
                        fontSize: 10.sp,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => const CreditCardUi(
                    scale: 0.7,
                    cardHolderFullName: 'John Doe',
                    cardNumber: '1234567812345678',
                    validFrom: '01/23',
                    validThru: '01/28',
                    topLeftColor: Colors.blue,
                    doesSupportNfc: true,
                    placeNfcIconAtTheEnd: true,
                    cardType: CardType.debit,
                    cardProviderLogo: FlutterLogo(),
                    cardProviderLogoPosition: CardProviderLogoPosition.right,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
