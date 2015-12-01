# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
	return head unless head.next
	hash = {}
	cur = head
	while true
		break unless cur
		if hash[cur.val]
			nxt = cur.next
			if nxt
				cur.val = nxt.val
				cur.next = nxt.next
			else
				cur = nil
			end
		else
			hash[cur.val] = 1
		end
		cur = cur.next
	end
	cur
end