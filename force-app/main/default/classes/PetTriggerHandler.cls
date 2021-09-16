public with sharing class PetTriggerHandler {
    public static void doHappy(List<Pet__c> pets) {
        Set<Id> masters = new Set<Id>();
        
        for (Pet__c itemPet : pets) {
            masters.add(itemPet.Master__c);
        }

        List<Contact> mastersWithPets = [SELECT Description FROM Contact WHERE Id IN: masters];
        for (Contact master : mastersWithPets) {
            master.Description = master.Description + ' HAPPY NOW!';
        }

        update mastersWithPets;
    }   
}