import 'package:commerce_x/Local/shared_helper.dart';
import 'package:commerce_x/Providers/app_theme_provider.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final switchWidget = StateProvider((ref) => false);

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isSwitched = ref.watch(switchWidget);
    final bool isDarkMode = ref.watch(appThemeProvider).getTheme();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 35.w),
            child: customizedText(
              data: 'Settings',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                leading: Text(
                  'Push Notifications',
                  style: TextStyle(fontSize: 12.sp),
                ),
                title: const Text(
                  'On/Off',
                  textAlign: TextAlign.right,
                ),
                trailing: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: Text(
                  'Themes',
                  style: TextStyle(fontSize: 12.sp),
                ),
                title: const Text(
                  'Light/Dark',
                  textAlign: TextAlign.right,
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (_) async {
                    ref.watch(switchWidget.notifier).update((state) => !state);
                    isDarkMode
                        ? ref
                            .read(appThemeProvider.notifier)
                            .setTheme(!isDarkMode)
                        : ref
                            .read(appThemeProvider.notifier)
                            .setTheme(!isDarkMode);
                    
                  },
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                  leading: Text(
                    'Language',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  title: const Text(
                    'English',
                    textAlign: TextAlign.right,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
