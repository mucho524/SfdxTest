trigger CaseTrigger on Case (after insert) {
    for (Case c : Trigger.new) {
        ChatterPostHelper.postToChatterGroup(c);
    }
}