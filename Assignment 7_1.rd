Assignment 7.1

For loop - A for loop use to efficiently write a loop that needs to execute specific number of times which we mention there.
Syntax:
for(initialization; condition; increment/decrement){
	Statements;
}
here Initialization part execute only once, condition part define the condition for the execution of code block.
All the three part of for loop are optional.

program:
class A
{
	public static void main(String[] args)
	{
		for(int i = 1;i<5;i++)
		{
			System.out.print(i+" ");
		}
	}
} 

Here the output come as 1 2 3 4 
In the above example initialization part initialize the variable i with 1, condition is i less than 5 
and at the increment place there is an increment by 1 ,so the output will be 1 to 4.


The above code can also be written as :
class A
{
 public static void main(String[] args) 
 {
  int i = 1;
  for (; i <5; ) 
  {
   System.out.println(i);
   i++;
  }
 }
}





While():
This loop gets executed until the given condition is true.
Syntax: 
	while(condition){
		Statements;
	}

Program:
	class A
{
 public static void main(String[] args) 
 {
  int x=1;
  while(x<5)
  {
   System.out.print(x+" ");
   x++;
  }
 }
}

output is: 1 2 3 4
In to above code, the body of while will execute again and again as long as variable x is less than 5.	





Continue Statement:
It is used to skip the next statement and continue the loop.
continue statement are mostly used with loops.

class A
{  
 public static void main(String[] args) 
 {
  for(int i=1;i<=5;i++)
  {
   if(i==3) 
    continue;
   else
    System.out.print(i+" ");
  }
 }
}

output is: 1 2 4 5
In to above code, it skip the print statement when i=3.





If Statement:
It is used to test the condition.
If the condition is true its body will execute otherwise does not execute.

Syntax:
if(){
	Statements;
}	

Program:
class A
{
 public static void main(String[] args) 
 {
  int x=10;
  if(x>5)
  {
      System.out.println("x is greater than 5");    
  }
 }
}
output: x is greater than 5
x > 5 is true, it will print the statement.





Else Statement:
else always come with if statement.
It is used to test the condition.
If the condition is true body of if will execute otherwise body of else execute.
Syntax:
if(condition){
	Statements;
}
else{
	Statements;
}

program:
class A
{
 public static void main(String[] args) 
 {
  int a=10,b=20;
  if(a>b)
  {
   System.out.println("a is greater");
  }
  else
  {
   System.out.println("b is greater");   
  }   
 }
}

output: b is greater
Hence, in the above code if condition is false control will go into the else part.





Switch Statement:
Switch statement allows us to execute one statement from many statement and the statements are called case.
Inside the body of switch there are a number of cases and there is a single number is passed at the place of 
parameter to select and execute a case.

Syntax: 
switch()
{
case 1:
	statement 1;
	break;
case 2:
	sttement 2;
	break;
	'
	'
	'
	'
case n:
	statement n
	break;
default:
	default statement;
}

program: 
class A
{
 public static void main(String[] args) 
 {
  int day=2;
  switch(day)
  {
   case 1:
    System.out.println("Monday");
    break;
   case 2:
    System.out.println("Tuesday");
    break; 
   case 3:
    System.out.println("Wednesday");
    break;
   case 4:
    System.out.println("Thrusday");
    break;
   case 5:
    System.out.println("Friday");
    break;
   case 6:
    System.out.println("Saturday");
    break;
   case 7:
    System.out.println("Sunday");
    break;
   default:
    System.out.println("No case matched");
  }
 }
}

output: Tuesday
because day is equal to 2 and it matches with
case 2 so the output is Tuesday





Recursion:
Recursion is like when a function call itself. By using this technique we just break down a complicatd problem 
into a simple problem which is quiet easy to solve.cursion may be a bit difficult to understand. 
The best way to figure out how it works is to experiment with it.

program:
public class Recursion
{   
	static int factorial(int no) 
	{
   		if (no >= 1)
    	return no * factorial(no - 1); //here fact method is calling itself with desreasing value.
   		else
    	return 1;
	}
 	public static void main(String[] args) 
 	{
    	 int no=5;
    	 System.out.println("Factorial of 5 is "+factorial(no));
 	}
}
output: Factorial of 5 is 120

In the above code, factorial method is called from main method, lets say we pass 5 then in if statement 
it check weather the number is greater than 1 or not. As it is greater it goes into next line 
i.e (return no * factorial(no - 1);) . 
here we can see that the factorial method is calling itself in a decreasing manner which is recursion 
basically and gets stop when the number becomes 1. As there is  a if condition that the number should be 
greater than or equal to 1. So, eventually the expression becomes (5 * 4 * 3 * 2 * 1) which results as 120.





Binary Search Tree:
A binary search tree is a binary tree that additionally satisfies the binary search property which are as follows:
The left subtree of a node contains only nodes with keys lesser than the node’s key.
The right subtree of a node contains only nodes with keys greater than the node’s key.
The left and right subtree each must also be a binary search tree. 
There must be no duplicate nodes.
It is a data structure that quickly allows us to maintain a sorted list of numbers.
It is called a binary tree because each tree node has a maximum of two children.
It is called a search tree because it can be used to search for the presence of a number in O(log(n)) time.

Searching operation on binary search tree
we begin by looking at root node. if the tree is null, the key we are searching for does not exist in the tree.
If the key equals that of the root, the search is successful and we return the node.
If the key is less than that of root, we search the left subtree. Similarly, if the key is greater than that of root, 
we search the right subtree.
This process is repeated until the key is found or the remaining subtree is null.
If the searched key is not found after a null subtree is reached, then the key is not present in the tree.

Insertion operation on binary search tree
To insert a key we follow the binary serch property ans inset accordingly.
Compare the key with root key.
if the key is lesser than the root value, we return the left subtree of the node.
if the key is greater than the root value, we return the right subtree of the node.
this process is continued until we hit a leaf node.the node is inserted to this location as a new node.

Deletin operation on binary search tree
while deleting a node, it is necessary to maintain a in-order sequence of node.
there are three possible cases
Deleting a node with no children, simply remove the node from the tree.
Deletion a node with one child, remove the node and replace it with its child.
Deleting a node with two children. First we find the in-order successor of the node. then the content of this 
in-order successor are copied to the node to be deleted. Finally, the in-order successor is deleted.

For searching, insertion and deletion the average time complexity will be O(log n).

program:

class BinarySearchTree {
  class Node {
    int key;
    Node left, right;

    public Node(int item) {
      key = item;
      left = right = null;
    }
  }

  Node root;

  BinarySearchTree() {
    root = null;
  }

  void insert(int key) {
    root = insertKey(root, key);
  }

    Node insertKey(Node root, int key) {     // this is insertion block and it return node if tree is empty
    	    if (root == null) {
      root = new Node(key);
      return root;
    }

        if (key < root.key)                   // here traversing is happening depending on the key value
      root.left = insertKey(root.left, key);
    else if (key > root.key)
      root.right = insertKey(root.right, key);

    return root;
  }

    void inorder() {
    inorderRec(root);
  }

    void inorderRec(Node root) {               // This is an inorder traversal block
    if (root != null) {
      inorderRec(root.left);
      System.out.print(root.key + " -> ");
      inorderRec(root.right);
    }
  }

    void deleteKey(int key) {
    root = deleteRec(root, key);
  }

  Node deleteRec(Node root, int key) {         //This is delete method and it return root if tree is empty

  	if (root == null)
      return root;

          if (key < root.key)                  //This block delete value depending on key value 
      root.left = deleteRec(root.left, key);
    else if (key > root.key)
      root.right = deleteRec(root.right, key);
    else {

    	      if (root.left == null)
        return root.right;
      else if (root.right == null)
        return root.left;


        root.key = minValue(root.right);       // If the node has two children then Place the inorder successor in 
                                               // position of the node to be deleted


        root.right = deleteRec(root.right, root.key);
    }

    return root;
  }

    int minValue(Node root) {                  //This block is for finding inorder successor
    int minv = root.key;
    while (root.left != null) {
      minv = root.left.key;
      root = root.left;
    }
    return minv;
  }


    public static void main(String[] args) {
    BinarySearchTree tree = new BinarySearchTree();

    tree.insert(8);
    tree.insert(3);
    tree.insert(1);
    tree.insert(6);
    tree.insert(7);
    tree.insert(10);
    tree.insert(14);
    tree.insert(4);

    System.out.print("Inorder traversal: ");
    tree.inorder();

    System.out.println("\n\nAfter deleting 10");
    tree.deleteKey(10);
    System.out.print("Inorder traversal: ");
    tree.inorder();
  }
}





Closure:
Closures are created whenever a variable that is defined outside the current scope is accessed from within some inner scope. 
It gives you access to an outer functions scope from an inner function. 
In JavaScript, closures are created every time a function is created. 
To use a closure, simply define a function inside another function and expose it.
A closure has three scopes which are as follows:
Access its own scope.
Access  to the variable of the outer function.
Access to te global variables.


{
    var foo = "bar";
}
console.log(foo);

In the example above, variable foo is defined with the keyword "var" inside a block. 
When we print to the console outside the block, we can still access the variable foo without any trouble. 
The reason that this works is to do with the nature of the "var" keyword. the scope of a variable declared with var is its 
current execution context, which is either the enclosing function or, for variables declared outside any function i.e global. 
In our case, variable foo is not wrapped up in a function so that means that it's going to be available to the global scope. 
It doesn't matter if it's nested fifty blocks deep, it's still going to be accessible anywhere in our JavaScript program.

We'll get to the "execution context of the enclosing function" stuff a bit later. Lets take another example.

{
    let foo = "bar";
}
console.log(foo); // it gives an error as foo is not defined
Obviously, the "let" keyword is changing the situation a bit. Our foo variable is no longer accessible outside the block. 
let allows you to declare variables that are limited in scope to the block, statement, or expression on which it is used. 
So our foo variable is now "closed" inside the block scope and private to the block.

So if we take this example one step further, we can create a simple closure. Let's take a look.

var getFoo;
{
    let foo = "bar";
    getFoo = function(){
        return foo;
    }
}
getFoo(); // output is "foo"
We know that the function inside the block will have access to foo becuase it's in the same block. 
Variable foo is private to the block because it was declared with the "let" keywork, 
but at the same time we have give access to foo from outside the block with a function getFoo. 
This is now a simple closure in JavaScript.