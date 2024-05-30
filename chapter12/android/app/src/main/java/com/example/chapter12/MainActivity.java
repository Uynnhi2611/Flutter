package com.example.chapter12;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import android.os.Build;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "platformchannel.companyname.com/deviceinfo";

    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            if (call.method.equals("getDeviceInfo")) {
                                String deviceInfo = getDeviceInfo();
                                result.success(deviceInfo);
                            } else {
                                result.notImplemented();
                            }
                        }
                );
    }

    private String getDeviceInfo() {
        return ("\nDevice: " +  Build.DEVICE
                + "\nManufacturer: " + Build.MANUFACTURER
                + "\nModel: " +  Build.MODEL
                + "\nProduct: " +  Build.PRODUCT
                + "\nVersion Release: " + Build.VERSION.RELEASE
                + "\nVersion SDK: " + Build.VERSION.SDK_INT
                + "\nFingerprint : " + Build.FINGERPRINT);
    }
}
