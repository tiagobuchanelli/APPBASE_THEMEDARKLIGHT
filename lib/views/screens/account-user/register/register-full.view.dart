import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

class RegisterFullView extends StatefulWidget {
  @override
  _RegisterFullViewState createState() => _RegisterFullViewState();
}

class _RegisterFullViewState extends State<RegisterFullView> {
  TextEditingController _numCreditCardCtrl = TextEditingController();
  TextEditingController _dtValCtrl = TextEditingController();
  TextEditingController _nameCtrl = TextEditingController();

  TextEditingController _passCtrl = TextEditingController();

  FocusNode myFocusNode = FocusNode();
  bool _isHidePass = true;

  _alterVisibility() {
    setState(() {
      _isHidePass = !_isHidePass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: "Cadastro Complementar",
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            _buildDetaisCard(),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              width: 300,
              child: RaisedButton(
                child: Text("Cadastrar",
                    style: AppTheme().textTheme.headline2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal)),
                color: Theme.of(context).primaryColor,
                elevation: 0,
                padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetaisCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Center(
              child: Text(
                "Endereço",
                style: AppTheme().textTheme.headline2.copyWith(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Rua/Avenida",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _dtValCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Bairro",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40, top: 0),
            child: TextField(
              controller: _nameCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Numero ",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Center(
              child: Text(
                "Financeiro",
                style: AppTheme().textTheme.headline2.copyWith(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.number,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Remuneração Atual",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.number,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Melhor dia Pagamento",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Emprego Atual",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Center(
              child: Text(
                "Dados Bancários",
                style: AppTheme().textTheme.headline2.copyWith(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Banco",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Agencia/Conta",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Center(
              child: Text(
                "Outras Informações",
                style: AppTheme().textTheme.headline2.copyWith(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "CPF",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Nome Mãe",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 0),
            child: TextField(
              controller: _numCreditCardCtrl,
              autofocus: false,
              keyboardType: TextInputType.text,
              style: AppTheme().textTheme.headline2.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                  hintText: "Nome Pai",
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          //color: Theme.of(context).primaryColor, width: 2)),
                          color: Colors.grey[300],
                          width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1))),
            ),
          ),
        ],
      ),
    );
  }
}
