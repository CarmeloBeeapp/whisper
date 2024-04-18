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
import "dart:io";

import "package:whisper_dart/scheme/scheme.dart";
import "package:whisper_dart/whisper_dart.dart";

void main(List<String> args) async {
  Whisper whisper = Whisper(whisperLib: "./path_library_shared_whisper");
  Version whisperVersion = await whisper.getVersion();
  print(whisperVersion);

  Transcribe transcribe = await whisper.transcribe(
    audio: "./path_file_audio_wav_16_bit",
    model: "./path_model_whisper_bin",
    language: "id", // language
  );
  print(transcribe);

  /// auto convert any fideo
  Transcribe transcribeAnyAudio = await whisper.transcribe(
    audio: WhisperAudioconvert.convert(
      audioInput: File("./path_audio_any_format"),
      audioOutput: File("./path_audio_convert.wav"),
    ).path,
    model: "./path_model_whisper_bin",
    language: "id", // language
  );
  print(transcribeAnyAudio);
}
