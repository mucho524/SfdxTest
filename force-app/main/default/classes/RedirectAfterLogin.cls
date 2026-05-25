public class RedirectAfterLogin {
       @InvocableMethod
       public static void redirectToPage(List<String> params) {
           // リダイレクト先のURLを設定
           String redirectUrl = 'https://www.yahoo.co.jp';
           // リダイレクトを実行
           ApexPages.currentPage().getHeaders().put('Location', redirectUrl);
           ApexPages.currentPage().setRedirect(true);
       }
   }