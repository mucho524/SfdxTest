global class resetPasswordClass {
   @InvocableMethod(label='reset Password' description='This method is called from Flow and returns nothing')
   public static void resetPassword(List<String> userName) {
      User user = [SELECT Id FROM User WHERE Username = 'ccp1@salesforce.com'];
      System.resetPassword(user.Id, true);
   }
}