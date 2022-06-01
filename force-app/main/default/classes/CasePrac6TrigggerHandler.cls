public  class CasePrac6TrigggerHandler {
    /*PART 3 – Same Record Update 
3.1. Whenever a case is created with origin as email then set status as new and Priority as Medium*/
    public  static void updateSatusAndPriority(List<Case> caseTriggerNew,
              List<Case> caseTriggerOld,
              Map<id, Case> caseTriggerNewMap,
               Map<id, Case> caseTriggerOldMap) {
for(case eachCase : caseTriggerNew) {
    if(eachCase.Origin =='Email'){
        eachCase.Status = 'New';
        eachCase.Priority = 'Medium';
    }
}


    }
}
