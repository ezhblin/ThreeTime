global with sharing class SomeOneLucky {
    global static void doLucky(String pathName) {
        List<Contact> luckyBastards = findWhoWannaBeLucky(pathName);
         
        for (Contact itemContact :  luckyBastards) {
            itemContact.Description = itemContact.Description + ' Lucky DOG!';
        }
        update luckyBastards;
    }

    public static List<Contact> findWhoWannaBeLucky(String pathName) {
        String searchKey = '%' + pathName + '%';
        return [SELECT Id, Name, Description FROM Contact WHERE Name LIKE: searchKey];
    }
}