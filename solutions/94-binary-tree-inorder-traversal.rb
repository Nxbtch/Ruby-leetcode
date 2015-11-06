# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    result = []
    if root != nil
       result <<  inorder_traversal(root.left)
       result << root.val
       result <<  inorder_traversal(root.right)
    end

    result.flatten
end
