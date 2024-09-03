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

import 'package:http/http.dart';

import 'dart:typed_data';

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../auth/firebase_auth/auth_util.dart';
import '../../backend/firebase_storage/storage.dart';

Future<void> crearPDFLocal(
  String? logoUrl,
  String? Fecha,
  String? Tecnico,
  String? OT,
  String? Cliente,
  String? Direccion,
  String? ciudad,
  String? Faena,
  String? Patente,
  String? Marca,
  String? Modelo,
  String? kilometraje,
  String? vin,
  String? detalleTrabajo,
  String? kilometroSalida,
  String? fechaControlTecnico,
  String? horaInicio,
  String? horaFin,
  String? trabajoFin,
  String? descripcionDiagnostico,
  String? nombreClienteFaena,
  String? nombreTecnicoFaena,
) async {
  final pdf = pw.Document();
  final netImage = await networkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXo0CJ4OvJxuOPz28Y3kSjIjhLWM6nZjTmFA&s');
  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // desde aqui
              pw.Container(
                  alignment: pw.Alignment.topRight,
                  width: 80.0,
                  height: 50.0,
                  child: pw.ClipRRect(
                    child: pw.Image(netImage),
                  )),
              // hasta aqui
              pw.Row(
                children: [
                  pw.Text('INFORME DE VISITA',
                      style: pw.TextStyle(fontSize: 20),
                      textAlign: pw.TextAlign.center),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('Salinas y Fabres S.A',
                      style: pw.TextStyle(fontSize: 15),
                      textAlign: pw.TextAlign.center),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('OT: '),
                  pw.Text(OT!),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('VIN: '),
                  pw.Text(vin!),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('Fecha: '),
                  pw.Text(Fecha!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 3),
              pw.Row(
                children: [
                  pw.Text('Cliente: '),
                  pw.Text(Cliente!),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('Dirección: '),
                  pw.Text(Direccion!),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('Ciudad: '),
                  pw.Text(ciudad!),
                ],
              ),
              pw.Row(
                children: [
                  pw.Text('Faena: '),
                  pw.Text(Faena!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 2),
              pw.Row(
                children: [
                  pw.Text('Modelo: '),
                  pw.Text(Modelo!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 2),
              pw.Row(
                children: [
                  pw.Text('N° Serie: '),
                  pw.Text(Marca!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 2),
              pw.Row(
                children: [
                  pw.Text('Tecnico: '),
                  pw.Text(Tecnico!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 3),
              pw.TableHelper.fromTextArray(context: context, data: [
                ['CONTROL DEL TIEMPO', 'Detalle de horarios'],
                ['Fecha LLegada:', fechaControlTecnico!],
                ['Hora llegada Faena:', horaInicio!],
                ['Hora salida Faena:', horaFin!],
                ['Hora Trabajo Inicio:', horaInicio],
                ['Hora Trabajo Fin', trabajoFin!],
              ]),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 3),
              pw.TableHelper.fromTextArray(context: context, data: [
                ['DESCRIPCIÓN'],
                [detalleTrabajo!],
              ]),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 3),
              pw.TableHelper.fromTextArray(context: context, data: [
                ['DETALLE DEL TRABAJO'],
                [descripcionDiagnostico!],
              ]),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 2),
              pw.Row(
                children: [
                  pw.Text('Nombre Técnico en Faena: '),
                  pw.Text(nombreTecnicoFaena!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 3),
              pw.TableHelper.fromTextArray(context: context, data: [
                ['Firma del Técnico'],
              ]),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 2),
              pw.Row(
                children: [
                  pw.Text('Nombre Cliente en Faena: '),
                  pw.Text(nombreClienteFaena!),
                ],
              ),
              pw.SizedBox(height: 8),
              pw.Divider(thickness: 3),
              pw.TableHelper.fromTextArray(context: context, data: [
                ['Firma del Cliente'],
              ]),
            ]);
      }));

  final pdfSaved = await pdf.save();

  // Get the current date and time
  //final now = DateTime.now();

// Format the date and time as a string
  // final formattedDateTime =
  //    '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}_${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}-${now.second.toString().padLeft(2, '0')}';

// Set the file name to the formatted date and time string
  // final fileName = '$formattedDateTime.pdf';

// Set the directory where you want to store the file (e.g., a folder named 'pdfs' in your storage)
  // String directoryPath = '/users/' + currentUserUid + '/pdfs';

// Combine the directory path and file name to create the full storage path
  // final storagePath = '$directoryPath/$fileName';

  // SAVE IT TO FIREBASE STORE
  // final downloadUrl = await uploadData(storagePath, pdfSaved);
  //FFAppState().name= downloadUrl ?? '';

  // PRINT IT
  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}

//await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
//}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
