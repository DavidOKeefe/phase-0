function sum(numberCollection1, numberCollection2){
  var sum = 0;
  for(i=0; i < numberCollection1.length; i++){
    sum += numberCollection1[i];
  }
  for(i=0; i < numberCollection2.length; i++){
    sum += numberCollection2[i];
  }
  return sum;
}

function mean(numberCollection1, numberCollection2){
  var total = sum(numberCollection1, numberCollection2);

  return total / (numberCollection1.length + numberCollection2.length);
}

function median(numberCollection1, numberCollection2){
  var combinedCollection = numberCollection1.concat(numberCollection2);
  combinedCollection.sort();
  if(combinedCollection.length % 2 != 0){
    return combinedCollection[Math.floor(combinedCollection.length / 2)]
  } else {
    return (combinedCollection[(combinedCollection.length / 2) - 1] + combinedCollection[(combinedCollection.length / 2)]) / 2;
  }
}
