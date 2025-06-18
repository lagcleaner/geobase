import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class QRFieldInputWidget extends FieldInputWidget {
  const QRFieldInputWidget({
    super.key,
    required super.column,
    required super.inputBloc,
  });

  @override
  Widget build(BuildContext context) {
    return _QRInputField(
      key: key,
      column: column,
      bloc: inputBloc,
    );
  }
}

class _QRInputField extends StatefulWidget {
  final ColumnGetEntity column;
  final LyInput<FieldValueEntity> bloc;

  const _QRInputField({
    Key? key,
    required this.column,
    required this.bloc,
  }) : super(key: key);

  @override
  State<_QRInputField> createState() => _QRInputFieldState();
}

class _QRInputFieldState extends State<_QRInputField> {
  final GlobalKey _qrKey = GlobalKey();
  QRViewController? _qrController;
  bool _isScanning = false;
  bool _cameraReady = false;

  @override
  void dispose() {
    _qrController?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    _qrController = controller;
    _cameraReady = true;
    
    controller.scannedDataStream.listen((scanData) async {
      if (scanData.code == null || !mounted) return;

      await _stopScanning();
      
      final currentValue = widget.bloc.value;
      widget.bloc.dirty(currentValue.copyWithValue(scanData.code!));
    });
  }

  Future<void> _startScanning() async {
    if (!_cameraReady) {
      // Si la cámara no está lista, forzamos la recreación del widget QRView
      setState(() {
        _isScanning = false;
      });
      await Future.delayed(const Duration(milliseconds: 50));
      if (!mounted) return;
    }

    setState(() => _isScanning = true);
    
    if (_qrController != null && mounted) {
      try {
        await _qrController?.resumeCamera();
      } catch (e) {
        // Si hay error, recreamos el escáner
        setState(() {
          _qrController?.dispose();
          _qrController = null;
          _cameraReady = false;
          _isScanning = true; // Mantenemos el estado de escaneo
        });
      }
    }
  }

  Future<void> _stopScanning() async {
    try {
      await _qrController?.pauseCamera();
    } catch (e) {
      // Ignoramos errores al pausar
    }
    if (mounted) {
      setState(() => _isScanning = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LyInputBuilder<FieldValueEntity>(
      lyInput: widget.bloc,
      builder: (context, state) {
        final value = state.value.value?.toString() ?? '';
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.column.name ?? 'QR Code',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            
            if (_isScanning)
              SizedBox(
                height: 300,
                child: QRView(
                  key: _qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  onPermissionSet: (ctrl, p) => _onPermissionSet(ctrl, p, context),
                  overlay: QrScannerOverlayShape(
                    borderColor: Theme.of(context).colorScheme.primary,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 8,
                    cutOutSize: 250,
                  ),
                ),
              )
            else
              Column(
                children: [
                  Text(
                    value.isNotEmpty ? value : 'No se ha escaneado ningún código',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            
            ElevatedButton.icon(
              onPressed: _isScanning ? _stopScanning : _startScanning,
              icon: Icon(_isScanning ? Icons.cancel : Icons.qr_code_scanner),
              label: Text(_isScanning ? 'Cancelar escaneo' : 'Escanear QR'),
            ),
            
            if (state.error != null) ...[
              const SizedBox(height: 8),
              Text(
                state.error!,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
          ],
        );
      },
    );
  }

  void _onPermissionSet(QRViewController ctrl, bool granted, BuildContext context) {
    if (!granted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No se otorgaron permisos para la cámara')),
      );
    }
  }
}