import 'package:commerce_x/Providers/cart_provider.dart';
import 'package:commerce_x/screens/Cart/check_out.dart';
import 'package:commerce_x/widgets/clv3.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends ConsumerWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(cartProvider);
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blue),
          title: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 45.w),
              child: customizedText(
                data: 'Your Cart',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Center(
                  child: customizedText(
                      data: (ref.watch(cartProvider).length.toString()),
                      style: TextStyle(
                        fontSize: 10.sp,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: ref.watch(cartProvider).length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return cart_list_view(
                        leading: Image.asset(
                            fit: BoxFit.cover,
                            ref.watch(cartProvider)[index].image),
                        title: customizedText(
                            data: (ref.watch(cartProvider)[index].name)),
                        subtitle: customizedText(
                          data: ref.watch(cartProvider)[index].price.toString(),
                        ),
                        trailing: SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    ref.watch(cartProvider.notifier).addToCart(
                                        ref.watch(cartProvider)[index]);
                                  },
                                  icon: const Icon(opticalSize: 3,
                                    Icons.add,
                                    size: 12,
                                  )),
                              customizedText(
                                  data: ref
                                      .watch(cartProvider)[index]
                                      .quantity
                                      .toString()),
                              IconButton(
                                  onPressed: () {
                                    ref
                                        .watch(cartProvider.notifier)
                                        .removerFromCart(
                                            ref.watch(cartProvider)[index]);
                                  },
                                  icon: const Icon(opticalSize:5,
                                    Icons.minimize,
                                    size: 12,
                                  )),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customizedText(data: 'Sub Total'),
                          SizedBox(
                            width: 50.w,
                          ),
                          customizedText(
                            data: '\$150.0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          )
                        ],
                      ),
                      const Divider(thickness: 0.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          customizedText(data: 'Total'),
                          SizedBox(
                            width: 75.w,
                          ),
                          customizedText(
                            data: ref
                                .watch(cartProvider.notifier)
                                .totalPrice
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 50.h,
                      child: ElevatedButton(
                          onPressed: () {
                            ref.watch(cartProvider.notifier).clearCart();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CheckOut(),
                                ));
                          },
                          child: const Text('Pay Now'))),
                ],
              )
            ],
          ),
        ));
  }
}
