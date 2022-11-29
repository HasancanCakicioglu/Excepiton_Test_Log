import 'package:flutter/material.dart';
import 'package:safe_device/safe_device.dart';


class safeDeviceView extends StatefulWidget {
  safeDeviceView({Key? key}) : super(key: key);

  @override
  State<safeDeviceView> createState() => _safeDeviceViewState();
}

class _safeDeviceViewState extends State<safeDeviceView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("safeDeviceView")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              print(await SafeDevice.isJailBroken);
            }, child: Text("isJailBroken")),
           ElevatedButton(onPressed: ()async{
              print(await SafeDevice.isRealDevice);
            }, child: Text("isRealDevice")), 
           ElevatedButton(onPressed: ()async{
              print(await SafeDevice.canMockLocation);
            }, child: Text("canMockLocation")), //sadece androidde çalışıyor (git geolocator kullan)
           ElevatedButton(onPressed: ()async{
              print(await SafeDevice.isOnExternalStorage);
            }, child: Text("isOnExternalStorage")), 
           ElevatedButton(onPressed: ()async{
              print(await SafeDevice.isSafeDevice);
            }, child: Text("isSafeDevice")),    
            ElevatedButton(onPressed: ()async{
              print(await SafeDevice.isDevelopmentModeEnable);
            }, child: Text("isDevelopmentModeEnable")),   
          ],
        ),
      ),
    );
    
  }
}