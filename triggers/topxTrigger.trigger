trigger topxTrigger on Top_X_Designation__c (after insert, after update) {
    topClass.topMeth(trigger.new);

}