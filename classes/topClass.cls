public class topClass {
    public static void topMeth(List<Top_X_Designation__c> topList){
  List<Opportunity> oppList = new List<Opportunity>();
        for(Top_X_Designation__c top : topList) {
            if(top.Type__c == 'Handoff' && top.Document_Attached__c==true) {
                Opportunity opp = new Opportunity();
                opp.Id = top.Opportunity__c;
                opp.Handoff_Attached__c = 'Yes';
                oppList.add(opp);
            } else {
                Opportunity opp = new Opportunity();
                opp.Id = top.Opportunity__c;
                opp.Handoff_Attached__c = 'No';
                oppList.add(opp);
            }
        }
        update oppList;
    }
}