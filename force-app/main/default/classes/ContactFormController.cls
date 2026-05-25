public with sharing class ContactFormController {
    @AuraEnabled
    public static void createCaseRecord(String name, String email, String message) {
        Case newCase = new Case();
        newCase.Subject = 'お問い合わせ';
        newCase.Description = message;
        newCase.Origin = 'Web';

        // ケースに必要なフィールドを設定

        try {
            insert newCase;
        } catch (Exception e) {
            throw new AuraHandledException('ケースの作成中にエラーが発生しました');
        }
    }
}