import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class formui extends StatefulWidget {
  @override
  State<formui> createState() => _formuiState();
}

class _formuiState extends State<formui> {
  TextEditingController controller1 = TextEditingController();

  TextEditingController controller2 = TextEditingController();

  bool value = false;
  bool obsure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOrmUI'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller1,
            onEditingComplete: () {},
          ),
          TextField(
            obscureText: this.obsure,
            controller: controller2,
            onEditingComplete: () {},
            decoration: InputDecoration(
              suffix: IconButton(onPressed: (){
                this.obsure = !this.obsure;
                setState(() {

                });
              }, icon:Icon( Icons.remove_red_eye)),

            ),
          ),
          Checkbox(value: value, onChanged: (value){
            this.value = value!;
            setState(() {

            });
          }),

          ElevatedButton(onPressed: () {
            if(this.value== true){
               print(controller1.text.toString() + controller2.text.toString());
            }else{
              print('nooo');
            }

          }, child: Text('on press'))
        ],
      ),
    );
  }
}
class TextFiled extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return Container(
        child: TextField(

        ),
      );
  }

}