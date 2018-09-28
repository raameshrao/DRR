trigger Lead_Batch_Trigger on Lead (before insert) {

    list<Lead> lilead=new list<Lead>();
    for(lead l:Trigger.New){
        Lead_Batch_Class lbc=new Lead_Batch_Class();
        database.executeBatch(lbc);
    }
    //update lilead; -- not working
}