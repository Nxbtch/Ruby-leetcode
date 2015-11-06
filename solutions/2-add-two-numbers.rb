# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  to_list(to_num(l1) + to_num(l2))
end

def to_list(num)
  num = num.to_s.split('')
  root = nil
  cur = nil
  num.each do |n|
    ele = ListNode.new(n)
    if root == nil
      root = ele
    else
      cur.next = ele
    end
    cur = ele
  end
end

def to_num(list)
  cur = list
  str = []
  while cur != nil do
    str << cur.val.to_s
    cur = cur.next
  end
  str.join.to_i
end
