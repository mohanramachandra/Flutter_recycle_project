import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() => runApp(QRCodeScannerApp());

class QRCodeScannerApp extends StatefulWidget {
  @override
  _QRCodeScannerAppState createState() => _QRCodeScannerAppState();
}

class _QRCodeScannerAppState extends State<QRCodeScannerApp> {
  late QRViewController _controller;
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Scanner'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: QRView(
                key: _qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "Data you want to pass back");
                  },
                  child: Text('Use Scanned Data'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      _controller = controller;
      _controller.scannedDataStream.listen((scanData) {
        print('Scanned data: ${scanData.code}');
        _handleResult(scanData.code);
      });
    });
  }

  void _handleResult(String? result) {
    // Handle the scanned data as desired
    print('Handling result: $result');

    // Check if result is not null before using it
    if (result != null) {
      // Add your logic here, e.g., navigate back with the result
      Navigator.pop(context, result);
    } else {
      // Handle the case when result is null
      print('Scanned data is null');
    }
  }
}
