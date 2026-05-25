trigger TestTrigger on Product2 (before update) {
   System.debug('***SFDC: Trigger.old is: ' + Trigger.old);
   System.debug('***SFDC: Trigger.new is: ' + Trigger.new);
   
   //CustomObjectA__c cusA = new CustomObjectA__c(Name='trigger');
   
   //insert cusA;
   
   Product2 p2 = new Product2(Name = 'triggerProduct2');
   //p2.CustomObjectA__c = cusA.Id;
   
   //System.debug('***SFDC: new Product2 is: ' + p2);
}