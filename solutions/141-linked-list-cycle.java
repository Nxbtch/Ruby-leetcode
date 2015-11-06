// Ruby Submition not allowed, so copy one java solution :)

/**
 * Definition for singly-linked list.
 * class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */

public class Solution {
public boolean hasCycle(ListNode head) {
    if(head==null||head.next==null) return false;
    ListNode oneStep = head.next;
    ListNode twoStep = head.next.next;

    while(oneStep!=twoStep){
        if(oneStep==null||twoStep==null) return false;
        if(twoStep.next==null) return false;
        else{
            oneStep = oneStep.next;
            twoStep = twoStep.next.next;
        }
    }
    return true;
}
