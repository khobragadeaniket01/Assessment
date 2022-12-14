/*Assignment 1.2: Write an implementation of getElementById, which perform the basic task as that of 
actual getElementById(Don't use shortcuts like queryselector)*/

<html>
   <head> 
      <script type="text/javascript">
    // set a global var to acces the elements in the HTML document
    var doc = this;
    function testIt()
    {
        doc.blaat.innerHTML = 'It works!!';
    }

      </script> 
   </head> 
   <body> 
      <div id="blaat">
         Will this ever work..?!
      </div> 
      <button onclick="testIt()">Click me and you'll see!</button>  
   </body>
</html>

/*
For writing a code without using getElementById, we have to declaring a global variable on the top of our Javascript that 
refers to the document, which can then be used everywhere.
As my first impression when I got to 'getElemenyById()' was that it sounds like a function that will
 iterate through the DOM's element list until it finds the element you need; this must take some time. 
 With the above example, we simply access the element directly.  */