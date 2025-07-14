// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomTamaraCheckout extends StatefulWidget {
  final String checkoutUrl;
  final String successUrl;
  final String failUrl;
  final String cancelUrl;

  const CustomTamaraCheckout(
      this.checkoutUrl, this.successUrl, this.failUrl, this.cancelUrl,
      {super.key,
      this.onPaymentSuccess,
      this.onPaymentFailed,
      this.onPaymentCanceled});

  final void Function()? onPaymentSuccess;
  final void Function()? onPaymentFailed;
  final void Function()? onPaymentCanceled;
  @override
  _CustomTamaraCheckoutState createState() => _CustomTamaraCheckoutState();
}

class _CustomTamaraCheckoutState extends State<CustomTamaraCheckout> {
  PlatformWebViewControllerCreationParams? _params;
  WebViewController? _controller;
  WebViewPermissionRequest? requestPermission;

  @override
  void initState() {
    super.initState();
    _params = const PlatformWebViewControllerCreationParams();
    if (Platform.isAndroid) {
      _controller = WebViewController.fromPlatformCreationParams(
        _params!,
        onPermissionRequest: (WebViewPermissionRequest request) async {
          requestPermission = request;
          await requestCameraPermission();
        },
      );
    } else {
      _controller = WebViewController();
    }

    _controller!
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // ignore: avoid_print
            print('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            String url = request.url;
            if (url.startsWith(widget.successUrl)) {
              if (widget.onPaymentSuccess != null) {
                widget.onPaymentSuccess!();
                return NavigationDecision.prevent;
              }
            } else if (url.startsWith(widget.failUrl)) {
              if (widget.onPaymentFailed != null) {
                widget.onPaymentFailed!();
                return NavigationDecision.prevent;
              }
            } else if (url.startsWith(widget.cancelUrl)) {
              if (widget.onPaymentCanceled != null) {
                widget.onPaymentCanceled!();
                return NavigationDecision.prevent;
              }
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.checkoutUrl));
  }

  Future<void> requestCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      status = await Permission.camera.request();
      if (status.isGranted) {
        requestPermission?.grant();
      } else {}
    } else if (status.isGranted) {
      requestPermission?.grant();
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return WebViewWidget(controller: _controller!);
    });
  }
}
