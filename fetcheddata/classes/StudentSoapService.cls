global class StudentSoapService
{

    webService static Student__c getStudent(STring studentId){
       Student__c student =  [SELECT Id, Student_Name__c, Phone_Number__c, School__c, Email__c FROM Student__c WHERE id = :studentId];
       return student;
    }
    
}