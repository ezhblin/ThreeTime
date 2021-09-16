trigger PetTrigger on Pet__c (after insert) {
    PetTriggerHandler.doHappy(Trigger.new);
}