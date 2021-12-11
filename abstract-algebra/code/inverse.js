
let count = 0;

function gcd(a,b){
  let A = Math.max(a,b);
  let B = Math.min(a,b);
  while(B != 0){
    count += 1;
    return gcd(A%B, B);
  }

  
  console.log(A);
}

function U(n){
  let arr = [1];
  for (let i=2; i<n; i++){
    if(gcd(n,i)==1){arr.push(i);}
  }
  return arr;
}

gcd(10012312, 9981);
console.log(count);
