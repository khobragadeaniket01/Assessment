/*
Assignment 8.2: Given a number x, Find out if it is prime number or not, use javascript and find out the difference between next prime number after x and x
*/


const n = 23
function test_prime(n)
{

  if (n===1)
  {
    return false;
  }
  else if(n === 2)
  {
    return true;
  }else
  {
    for(var x = 2; x < n; x++)
    {
      if(n % x === 0)
      {
        return false;
      }
    }
    return true;  
  }
}
if(test_prime(n))
{
    console.log("This is prime number")
    const nextPrime = (n = 1) =>
    {
        while(!test_prime(++n))
        {
        };
        return n;
    };
    const p = (nextPrime(n))
    console.log("The difference between n and next prime number "+(p-n));
}else
{
    console.log("This is not prime")
    const nextPrime = (n = 1) =>
    {
        while(!test_prime(++n))
        {
        };
        return n;
    };
    const p = (nextPrime(n))
    console.log("The difference between n and next prime number "+(p-n));
}

/*
output: This is prime number
The difference between n and next prime number 6

The above program finds out weather the number is prime number of not and also find out the difference between the next prime number.
*/
