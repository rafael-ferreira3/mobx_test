import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_test/myapp_store.dart';

class MyApp extends StatelessWidget {
  final MyappStore store = MyappStore();

  final fieldTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if(store.isLoading) {
            return loadingScreen();
          }
          return appBody();
        },
      ),
    );
  }

  Widget _formField({String label, String initialValue, Function onChanged, TextEditingController controller}) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      initialValue: initialValue,
      onChanged: onChanged,
      controller: controller,
    );
  }

  Widget loadingScreen() {
    return Center(child: CircularProgressIndicator());
  }

  Widget appBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: _formField(
                    label: 'CEP',
                    onChanged: store.setNewText,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RaisedButton(
                    child: Text('Buscar CEP'),
                    onPressed: () {
                      store.buscarCEP();
                    },
                  ),
                )
              ],
            ),
            Observer(
              builder: (_) {
                fieldTextController.value = TextEditingValue(
                    text: store.fieldText ?? '',
                    selection: TextSelection.collapsed(offset: store.fieldText.length ?? 0)
                );
                return _formField(
                    label: 'Text Campo',
                    onChanged: store.setFieldtext,
                    controller: fieldTextController);
              },
            ),
            SizedBox(height: 50.0,),
            Observer(
              builder: (_) {
                return Text('Variavel MOBX CEP -> ${store.newText}');
              },
            ),
            SizedBox(height: 20.0,),
            Observer(
              builder: (_) {
                return Text('Variavel MOBX TEXT CAMPO -> ${store.fieldText}');
              },
            )
          ],
        ),
      ),
    );
  }

}
