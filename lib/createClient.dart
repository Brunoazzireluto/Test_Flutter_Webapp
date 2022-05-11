import 'package:flutter/material.dart';
import "NavBar.dart";
import 'form_camp.dart';
import 'Buttons.dart';

class createForm extends StatelessWidget {
  const createForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Teste ERP Cliente - Cadastrar Cliente"),
          actions: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        drawer: NavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Cadastro de Clientes"),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: FormCamp(
                                    label: "CNPJ",
                                    MaxLength: 15,
                                    Enable: true,
                                  )),
                              const Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 25, left: 10),
                                    child: TxtButton(
                                      label: "Buscar CNPJ",
                                      icon: Icon(Icons.find_in_page),
                                    ),
                                  ))
                            ],
                          ),
                          FormCamp(label: "Nome Fantasia"),
                          FormCamp(label: "Razão Social"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: FormCamp(label: "Inscrição Estadual"),
                              ),
                              Expanded(
                                flex: 1,
                                child: Checkbox(
                                  onChanged: (bool? value) {},
                                  value: true,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: FormCamp(label: "Inscrição Estadual"),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 20, left: 10),
                                    child: ButtonTxt()),
                              )
                            ],
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 2,
                                child: FormCamp(label: "Endereço"),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: FormCamp(
                                      label: "Número",
                                      MaxLength: 30,
                                    ),
                                  ))
                            ],
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 1,
                                child: FormCamp(
                                  label: "CEP",
                                  MaxLength: 9,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextCamp(label: "Complemento"),
                                ),
                              )
                            ],
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 2,
                                child: FormCamp(
                                  label: "Bairro",
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: FormCamp(
                                      label: "Cidade",
                                    ),
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: FormCamp(
                                    label: "Estado",
                                    MaxLength: 2,
                                  ),
                                ),
                              )
                            ],
                          ),
                          TextCamp(label: "Observações"),
                          TextCamp(label: "Observações de Faturamento"),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: TxtButton(
                                icon: Icon(Icons.check_box_outline_blank),
                                label: "Inativo",
                              ),
                            ),
                          ),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ExtendFloat(
                                  label: "Cadastrar",
                                  icon: Icon(Icons.save_rounded)),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FloatingActionButton(
                              onPressed: () {},
                              tooltip: "Voltar",
                              child: Icon(Icons.arrow_back),
                              splashColor: Colors.black)
                        ],
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
