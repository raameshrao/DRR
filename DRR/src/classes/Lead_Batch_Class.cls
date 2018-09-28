global class Lead_Batch_Class implements database.Batchable<sObject>  {
	
    global database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator('select id,status,LastName from lead');
    } 
    
    global void execute(database.BatchableContext bc,list<lead> scope){
        list<lead> lilead = new list<lead>();
        for(lead l:scope)
        {
            l.LastName ='lead..'+l.LastName;
            lilead.add(l);
            system.debug('------l------'+l.LastName);
        }
        update lilead; // working
    }
        
    global void finish(database.BatchableContext bc){
        
    }
    //to run in Open Execute Anonymous window
    //lead_batch_class bcls=new lead_batch_class();
	//id jobid=database.executeBatch(bcls);
    
    
}