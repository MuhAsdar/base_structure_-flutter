import 'package:rxdart/rxdart.dart';
import 'package:flutterbasestructure/models/KontakModels.dart';
import 'package:flutterbasestructure/repository/KontakRepository.dart';

class GetAllKontakDataBloc {
  KontakRepository _kontakRepository = KontakRepository();
  PublishSubject<KontakDataModel> _getKontakDataFetcher = PublishSubject<KontakDataModel>();

  Stream<KontakDataModel> get kontakData => _getKontakDataFetcher.stream;

  getProfileData() async {
    _getKontakDataFetcher.sink.add(await _kontakRepository.getProfileData());
  }

  @override
  dispose() {
    _getKontakDataFetcher.close();
  }
}
