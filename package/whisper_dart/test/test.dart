/* <!-- START LICENSE -->


Program Ini Di buat Oleh DEVELOPER Dari PERUSAHAAN GLOBAL CORPORATION 
Social Media: 

- Youtube: https://youtube.com/@Global_Corporation 
- Github: https://github.com/globalcorporation
- TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

Seluruh kode disini di buat 100% murni tanpa jiplak / mencuri kode lain jika ada akan ada link komment di baris code

Jika anda mau mengedit pastikan kredit ini tidak di hapus / di ganti!

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names

import 'package:universal_io/io.dart';
import 'package:whisper_dart/whisper_dart.dart';

void main(List<String> arguments) async {
  // DateTime time = DateTime.now();
  // print(res);
  Whisper whisper = Whisper(
    whisperLib:
        "/home/hexaminate/Documents/HEXAMINATE/app/ai/whisper_dart/native_lib/build/libwhisper_new.so",
  );
  var version = await whisper.getVersion();
  print(version.message);
  var res = await whisper.transcribe(
    audio: File(
            "/home/hexaminate/Documents/HEXAMINATE/app/ai/whisper_dart/samples/output.wav")
        .path,
    model: File(
            "/home/hexaminate/Documents/HEXAMINATE/app/ai/whisper_dart/samples/ggml-model-whisper-small.bin")
        .path,
    language: "id",
  );
  print(res.toString());
}
