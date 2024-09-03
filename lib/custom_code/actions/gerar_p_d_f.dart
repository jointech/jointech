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

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> gerarPDF(
  String? email,
  String? nome,
  String? telefone,
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
  String? horometro,
  String? tipo, // Adiciona o parâmetro tipo para escolher o layout
) async {
  final pdf = pw.Document();
  final netImage = await networkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXo0CJ4OvJxuOPz28Y3kSjIjhLWM6nZjTmFA&s');
  if (tipo == 'Informe') {
    await _addInvoicePageContent(
        pdf,
        email,
        nome,
        telefone,
        Fecha,
        Tecnico,
        OT,
        Cliente,
        Direccion,
        ciudad,
        Faena,
        Patente,
        Marca,
        Modelo,
        kilometraje,
        vin,
        detalleTrabajo,
        kilometroSalida,
        fechaControlTecnico,
        horaInicio,
        horaFin,
        trabajoFin,
        descripcionDiagnostico,
        nombreClienteFaena,
        horometro,
        nombreTecnicoFaena);
  } else if (tipo == 'documento') {
    await _addDocumentoPageContent(
        pdf,
        email,
        nome,
        telefone,
        Fecha,
        Tecnico,
        OT,
        Cliente,
        Direccion,
        ciudad,
        Faena,
        Patente,
        Marca,
        Modelo,
        kilometraje,
        vin,
        detalleTrabajo,
        kilometroSalida,
        fechaControlTecnico,
        horaInicio,
        horaFin,
        trabajoFin,
        descripcionDiagnostico,
        nombreClienteFaena,
        nombreTecnicoFaena,
        horometro,
        tipo);
  } else if (tipo == 'carta') {
    await _addCartaPageContent(
      pdf,
      email,
      nome,
      telefone,
      Fecha,
      Tecnico,
      OT,
      Cliente,
      Direccion,
      ciudad,
      Faena,
      Patente,
      Marca,
      Modelo,
      kilometraje,
      vin,
      detalleTrabajo,
      kilometroSalida,
      fechaControlTecnico,
      horaInicio,
      horaFin,
      trabajoFin,
      descripcionDiagnostico,
      nombreClienteFaena,
      nombreTecnicoFaena,
      horometro,
      tipo,
    );
  } else {
    throw ArgumentError('Tipo inválido: $tipo');
  }

  final pdfSaved = await pdf.save();

  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}

//edite o layout1 para o Invoice
Future<void> _addInvoicePageContent(
    pw.Document pdf,
    String? email,
    String? nome,
    String? telefone,
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
    String? horometro) async {
  final netImage = await networkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXo0CJ4OvJxuOPz28Y3kSjIjhLWM6nZjTmFA&s');
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a3,
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
                pw.Text('Horómetro: '),
                pw.Text(horometro!),
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
              ['Fecha LLegada:', Fecha],
              ['Hora llegada Faena:', horaInicio!],
              ['Hora salida Faena:', horaFin!],
              ['Hora Trabajo Inicio:', horaInicio],
              ['Hora Trabajo Fin', trabajoFin!],
            ]),
            pw.SizedBox(height: 8),
            pw.Divider(thickness: 3),
            pw.TableHelper.fromTextArray(context: context, data: [
              ['ALCANCE O SINTOMA DEL TRABAJO'],
              [detalleTrabajo!],
            ]),
            pw.SizedBox(height: 8),
            pw.Divider(thickness: 3),
            pw.TableHelper.fromTextArray(context: context, data: [
              ['DETALLE DEL TRABAJO REALIZADO'],
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
          ],
        );
        //  ],
        // );
      },
    ),
  );
}

//layout novo
Future<void> _addCartaPageContent(
  pw.Document pdf,
  String? email,
  String? nome,
  String? telefone,
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
  String? Horometro,
) async {
  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.SizedBox(height: 20),
            pw.Text('Nome da Sua Empresa',
                style:
                    pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text('Endereço da Sua Empresa'),
            pw.Text('Cidade - Estado - CEP'),
            pw.Text('Telefone: (00) 0000-0000'),
            pw.SizedBox(height: 20),
            pw.Text('Local e Data: ${DateTime.now().toIso8601String()}'),
            pw.SizedBox(height: 20),
            pw.Text('Prezado(a) ' + nome! + ','),
            pw.SizedBox(height: 20),
            pw.Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod ultrices posuere. Integer eleifend velit nec metus fermentum, sit amet viverra velit tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;'),
            pw.SizedBox(height: 20),
            pw.Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod ultrices posuere. Integer eleifend velit nec metus fermentum, sit amet viverra velit tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;'),
            pw.SizedBox(height: 20),
            pw.Text('Atenciosamente,'),
            pw.SizedBox(height: 20),
            pw.Text('Nome do Responsável'),
            pw.Text(nome!),
            pw.Text('Cargo'),
            pw.Text('Telefone para Contato'),
            pw.SizedBox(height: 20),
            pw.Text('CNPJ: 00.000.000/0000-00'),
            pw.Text('Inscrição Estadual: 00000000'),
            pw.Text(email!),
          ],
        );
      },
    ),
  );
}

// layout 02 contrato de locação
Future<void> _addDocumentoPageContent(
  pw.Document pdf,
  String? email,
  String? nome,
  String? telefone,
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
  String? horometro,
) async {
  //final response =
  //await http.get(Uri.parse('https://placehold.co/300x120?text=Logomarca'));
  //final Uint8List imagen = response.bodyBytes;

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a3,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            //pw.Image(pw.MemoryImage(imageData)),
            pw.Text('Contrato de Locação', style: pw.TextStyle(fontSize: 24)),
            pw.SizedBox(height: 20),
            pw.Text('Pelo presente instrumento particular, de um lado'),
            pw.Text('como LOCADOR(A): _________________________________'),
            pw.Text('e de outro lado, como LOCATÁRIO(A): ' +
                nome! +
                ' ___________________________'),
            pw.Text(
                'têm entre si, justo e contratado, a locação do imóvel situado à'),
            pw.Text(
                '_________________________________________________________'),
            pw.Text(
                'para os fins residenciais, tendo como fiador(es) solidário(s)'),
            pw.Text('o(s) senhor(es) ____________________________'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA PRIMEIRA: DO OBJETO'),
            pw.Text(
                'O objeto deste contrato é a locação do imóvel acima mencionado,'),
            pw.Text('o qual o LOCADOR(A) se declara legítimo possuidor,'),
            pw.Text('livre de quaisquer ônus que impeçam a presente locação.'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA SEGUNDA: DO PRAZO'),
            pw.Text(
                'O prazo de locação é de __________________ (__________________) meses,'),
            pw.Text(
                'iniciando-se em ___/___/____ e com término em ___/___/____,'),
            pw.Text('podendo ser prorrogado mediante acordo entre as partes.'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA TERCEIRA: DO VALOR'),
            pw.Text(
                'O valor mensal do aluguel é de ___________ (________________),'),
            pw.Text('devendo ser pago até o dia ________ de cada mês.'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA QUARTA: DAS OBRIGAÇÕES DO LOCATÁRIO'),
            pw.Text(
                'O LOCATÁRIO se compromete a utilizar o imóvel apenas para fins residenciais,'),
            pw.Text(
                'a cuidar da conservação do mesmo e a permitir vistorias periódicas pelo LOCADOR(A).'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA QUINTA: DAS OBRIGAÇÕES DO LOCADOR(A)'),
            pw.Text(
                'O LOCADOR(A) se compromete a entregar o imóvel em boas condições de uso,'),
            pw.Text(
                'a realizar os reparos necessários e a respeitar o direito de sossego do LOCATÁRIO.'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA SEXTA: DA RESCISÃO'),
            pw.Text(
                'O contrato poderá ser rescindido antes do prazo estipulado,'),
            pw.Text(
                'mediante acordo entre as partes ou por descumprimento de alguma cláusula.'),
            pw.SizedBox(height: 20),
            pw.Text('CLÁUSULA SÉTIMA: DO FORO'),
            pw.Text(
                'Para dirimir quaisquer controvérsias oriundas deste contrato,'),
            pw.Text(
                'as partes elegem o foro da cidade de ________________________.'),
            pw.SizedBox(height: 20),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.end,
              children: [
                pw.Text('Local e Data: ${DateTime.now().toIso8601String()}'),
              ],
            ),
            pw.SizedBox(height: 20),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.end,
              children: [
                pw.Text('LOCADOR(A): ________' +
                    nome! +
                    '_________e E-mail:' +
                    email! +
                    '_______'),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.end,
              children: [
                pw.Text('LOCATÁRIO(A): ________________________'),
              ],
            ),
          ],
        );
      },
    ),
  );
}
