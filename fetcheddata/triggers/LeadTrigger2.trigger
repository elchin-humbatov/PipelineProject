trigger LeadTrigger2 on Lead (before insert) {
    for(Lead leadRecord : Trigger.new){
        if(String.isBlank(leadRecord.Rating)){
            leadRecord.Rating = 'Warm';
        }
    }
}