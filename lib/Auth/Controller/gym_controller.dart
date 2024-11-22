import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gym_system/API Service/api_service.dart';
import 'package:gym_system/Auth/Model/gym_model.dart';

class GymController extends GetxController{
  RxBool isLoading = false.obs;
  var response = GymModel().obs;
  TextEditingController nameCTC = TextEditingController();
  TextEditingController emailCTC = TextEditingController();
  TextEditingController passCTC = TextEditingController();

  Future<void> registerCont()async{
    try{
      isLoading(true);
      final respo = await ApiService().register(
          nameCTC.text,
          emailCTC.text,
          passCTC.text
      );
      if(respo.responseCode=='1'){
        response = respo.obs;
        print("${response.value.message}");
      }
    }catch(e){
      print("Register Error $e");
    }
    finally{
      isLoading(false);
    }
  }
  Future<void> loginCont()async{
    try{
      isLoading(true);
      final respo = await ApiService().login(
          emailCTC.text,
          passCTC.text
      );
      if(respo.responseCode=='1'){
        response = respo.obs;
        print("${response.value.message}");
      }
    }catch(e){
      print("Register Error $e");
    }
    finally{
      isLoading(false);
    }
  }
}