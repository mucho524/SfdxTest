public class ChatterPostHelper {
    public static void postToChatterGroup(Case c) {
        // 内部グループのIDを指定します
        Id groupId = '0F9J3000000KzM9KAK';
        
        // Chatter投稿を作成します
        FeedItem feedItem = new FeedItem();
        feedItem.ParentId = groupId;
        feedItem.Body = '新しいケースが作成されました: ' + c.Subject;
        feedItem.LinkUrl = '/' + c.Id; // ケースレコードへのリンクを追加
        
        // Chatterグループに投稿します
        insert feedItem;
    }
}