import 'package:get/get.dart';
import 'package:wincomfunctions/screens/services/firebase_storage.dart';

class QuestionPaperController extends GetxController{
  final allPaperImages=<String>[].obs;

  @override
  void onReady(){
    getAllPapers();
    super.onReady();
  }
Future<void>getAllPapers()async{
    List<String>imgName=["1", "2", "3","4","5","6","7"];

    try{
      for(var img in imgName){
     final imgUrl= await  Get.find<FirebaseStorageService>().getImage(img);
     allPaperImages.add(imgUrl!);
      }

    }catch(e){
      print(e);
    }
}
}