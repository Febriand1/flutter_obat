//DIGUNAKAN UNTUK GET ALL DATA
import 'package:dio/dio.dart';

class RSModel {
  final String id;
  final String namaRS;
  final String noTelp;
  final String alamat;
  final String latitude;
  final String longitude;
  final String gambar;
  // final String namaObat;

  RSModel({
    required this.id,
    required this.namaRS,
    required this.noTelp,
    required this.alamat,
    required this.latitude,
    required this.longitude,
    required this.gambar,
    // required this.namaObat,
  });

  factory RSModel.fromJson(Map<String, dynamic> json) => RSModel(
        id: json["_id"],
        namaRS: json["nama_rs"],
        noTelp: json["no_telp"],
        alamat: json["alamat"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        gambar: json["gambar"],
        // namaObat: json["obat"]["nama_obat"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "nama_rs": namaRS,
        "no_telp": noTelp,
        "alamat": alamat,
        "latitude": latitude,
        "longitude": longitude,
        "gambar": gambar,
        // "nama_obat": namaObat,
      };
}

//DIGUNAKAN UNTUK FORM INPUT
class RSInput {
  final String namaRS;
  final String noTelp;
  final String alamat;
  final String latitude;
  final String longitude;
  final String imagePath;
  final String imageName;
  // final String namaObat;

  RSInput({
    required this.namaRS,
    required this.noTelp,
    required this.alamat,
    required this.latitude,
    required this.longitude,
    required this.imagePath,
    required this.imageName,
    // required this.namaObat,
  });

  FormData formData() => FormData.fromMap({
        "nama_rs": namaRS,
        "no_telp": noTelp,
        "alamat": alamat,
        "latitude": latitude,
        "longitude": longitude,
        "file": MultipartFile.fromFileSync(imagePath, filename: imageName),
        // "nama_obat": namaObat,
      });
}

//DIGUNAKAN UNTUK RESPONSE
class RSResponse {
  final String? insertedId;
  final String message;
  final int status;

  RSResponse({
    this.insertedId,
    required this.message,
    required this.status,
  });

  factory RSResponse.fromJson(Map<String, dynamic> json) => RSResponse(
        insertedId: json["inserted_id"],
        message: json["message"],
        status: json["status"],
      );
}
