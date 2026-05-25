trigger CaseUpsertTrigger on Case (Before insert, Before update) {
    integer txtMaxStringNum;
    txtMaxStringNum = 255; //テキストへ格納するため、255文字まで。

    for(Case case_c : Trigger.new){
        case_c.OwnerId = '0055i000006ifZj';
    }
}