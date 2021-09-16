@isTest
public with sharing class SomeOneLuckyTest {
    @isTest
    public static void doLuckyTest() {
        SomeOneLucky.doLucky('aba');
        String searchKey = '%aba%';
        Contact contact = [SELECT Id, Description FROM Contact WHERE Name LIKE: searchKey][0];

        System.equals(' Lucky DOG!', contact.Description);
    }

    @TestSetup
    static void makeData(){
        Contact contact = new Contact(LastName = 'Kabal', FirstName = 'Don');
        insert contact;
    }

}