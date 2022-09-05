import 'package:rest_api/models/overview.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/models/technical.dart';
class RemoteService{
  Future<Overview?> getData() async{
        
        var uri=Uri.parse('https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en');
        var response= await http.get(uri);
        if(response.statusCode==200){
          var json=response.body;
          return welcomeFromJson(json);
        }
        return null;
  }
 Future<List<Technical>?>getinfo() async{
    var uri=Uri.parse('https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en');
    var response=await http.get(uri);
    if(response.statusCode==200){
      var json=response.body;
      return technicalFromJson(json);
    }
    return null;

 }
  
}