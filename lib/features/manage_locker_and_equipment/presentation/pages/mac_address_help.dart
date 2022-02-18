import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MacAddressHelpPage extends StatelessWidget {
  const MacAddressHelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => AutoRouter.of(context).pop(),
                    icon: const Icon(Icons.close),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/manage_locker_and_equipment/mac_address_help_image.png',
                    fit: BoxFit.fill,
                    width: 260,
                    height: 160,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'ฉันสามารถหาเลข Mac address ได้จาก ตรงไหน ?',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('เลข Mac address จะอยู่บนแท็กที่ติดไว้กับทุก ',
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                ],
              ),
              Row(
                children: [
                  Text('อุปกรณ์ในระบบ โดยมีจำนวน 12 ตัว',
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Row(
                children: [
                  Text(
                    'QR code ที่อยู่บนเลข Mac address คืออะไร ?',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('คุณสามารถกดสแกน QR code แทนการเลือก',
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                ],
              ),
              Row(
                children: [
                  Text('Mac address ให้ตรงกับอุปกรณ์ได้',
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
