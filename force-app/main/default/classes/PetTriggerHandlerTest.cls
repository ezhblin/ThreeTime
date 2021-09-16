@isTest
public with sharing class PetTriggerHandlerTest {
    @isTest
    public static void doHappyTest() {
        Contact master = [SELECT Id, Description FROM Contact][0];

        Pet__c pet = new Pet__c(Name = 'shl9pa', Master__c = master.Id);
        insert pet;

        System.equals(' HAPPY NOW!', master.Description);
    }

    @TestSetup
    static void makeData(){
        Contact master = new Contact(LastName = 'Kabal', FirstName = 'Don');
        insert master;
    }
}