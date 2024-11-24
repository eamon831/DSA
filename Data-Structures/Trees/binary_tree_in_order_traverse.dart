// binary node
class TreeNode {
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(int val) {
    this.val = val;
    this.left = null;
    this.right = null;
  }
}

// normal tree traversal
void inorder(TreeNode? root) {
  if (root == null) {
    return;
  }
  inorder(root.left);
  print(root.val);
  inorder(root.right);
}

// return list of tree nodes
List<int> inorderTraversal(TreeNode? root) {
  List<int> result = [];
  if (root == null) {
    return result;
  }
  List<int> left = inorderTraversal(root.left);
  List<int> right = inorderTraversal(root.right);
  result.addAll(left);
  result.add(root.val!);
  result.addAll(right);
  return result;
}

// [1,2,3,4,5,null,8,null,null,6,7,9]

// tree
//         1
//       /   \
//      2     3
//     / \     \
//    4   5     8
//       /  \    /
//      6    7  9

// binary tree
void main() {
  TreeNode root = TreeNode(1);
  root.left = TreeNode(2);
  root.right = TreeNode(3);
  root.left!.left = TreeNode(4);
  root.left!.right = TreeNode(5);
  root.right!.right = TreeNode(8);
  root.left!.right!.left = TreeNode(6);
  root.left!.right!.right = TreeNode(7);
  root.right!.right!.left = TreeNode(9);
  //inorderTraversal(root);
  inorder(root);
}
