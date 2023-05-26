import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyOrderCard extends StatelessWidget {
  const MyOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customizedText(data: 'Order#'),
                customizedText(data: '26552211448')
              ],
            ),
          ),
          const Divider(thickness: 0.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customizedText(data: 'Date'),
                customizedText(data: '9/7/2022')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customizedText(data: 'Total Price'),
                customizedText(data: '\$ 1500.0')
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 5, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customizedText(data: 'Status'),
                customizedText(data: 'Pending')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                      onPressed: () {},
                      child: customizedText(data: 'Details')),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {},
                    child: const Text('Track'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
