public with sharing class Account_Batchable implements Database.Batchable<sObject> {
    
    public Account_Batchable() {
        System.debug('コンストラクタ');
    }
    
    public Database.QueryLocator start(Database.BatchableContext BC) {
        System.debug('start');
        String query = 'SELECT Id, Name from Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext BC, List<Account> scope) {
        System.debug('execute');
        for(Account acc : scope) {
            acc.Name = acc.Name + 'BatchTest';
        }
    }
    
    public void finish(Database.BatchableContext BC) {
        System.debug('finish');
    }
    
}