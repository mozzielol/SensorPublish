window.onload = function(){
    var arrID = ["sensorName","sensorID","sensorType","sensorLocation","sensorLink"];
   
    for(i=0;i<arrID.length;i++){
          setEmptyEvent(getObj(arrID[i]));
    }
    
    
    document.getElementById("btnSubmit").addEventListener("click",function(e){
          
            for(i=0;i<arrID.length;i++){
                if(!emptyCheck(arrID[i])){
                    stopSubmit(e); 
                }
            }
          }
    ,false);
    
    
   
}

