import 'package:mobx/mobx.dart';

part 'myapp_store.g.dart';

class MyappStore = _MyappStore with _$MyappStore;

abstract class _MyappStore with Store {
  @observable
  bool isLoading = false;

  @action
  void setLoading(bool value) => isLoading = value;

  @observable
  String newText;

  @action
  void setNewText(String value) {
    newText = value;
  }

  @observable
  String fieldText = '';

  @action
  void setFieldtext(String value) {
    fieldText = value;
  }

  Future<void> buscarCEP() async{
    setLoading(true);
    await Future.delayed(Duration(milliseconds: 500));
    setFieldtext(newText);
    setNewText('');
    setLoading(false);
  }

}
