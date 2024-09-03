// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../auth/firebase_auth/auth_util.dart';
import '../../backend/firebase_storage/storage.dart';

Future creaRendicion(
  String? Fecha,
  String? OT,
  String? Cliente,
  String? Observaciones,
  String? Detalle1,
  String? Detalle2,
  String? valor1,
  String? valor2,
  String? imagen, // Add your function code here!
) async {
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                children: [
                  pw.Text('RENDICIÓN',
                      style: pw.TextStyle(fontSize: 24),
                      textAlign: pw.TextAlign.center),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('Cliente: '),
                  pw.Text(Cliente!),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('OT: '),
                  pw.Text(OT!),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Divider(thickness: 3),
              pw.TableHelper.fromTextArray(context: context, data: [
                ['DETALLE', 'VALOR'],
                ['Detalle:', Detalle1!],
                ['Detalle:', Detalle2!],
                ['Valor:', valor1!],
                ['Valor', valor2!],
              ]),
            ]);
      }));

  final pdfSaved = await pdf.save();

  // Get the current date and time
  final now = DateTime.now();

// Format the date and time as a string
  final formattedDateTime =
      '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}_${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}-${now.second.toString().padLeft(2, '0')}';

// Set the file name to the formatted date and time string
  final fileName = '$formattedDateTime.pdf';

// Set the directory where you want to store the file (e.g., a folder named 'pdfs' in your storage)
  String directoryPath = '/users/' + currentUserUid + '/Rendiciones';

// Combine the directory path and file name to create the full storage path
  final storagePath = '$directoryPath/$fileName';

  // SAVE IT TO FIREBASE STORE
  final downloadUrl = await uploadData(storagePath, pdfSaved);
  //FFAppState().name= downloadUrl ?? '';

  // PRINT IT
  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}
