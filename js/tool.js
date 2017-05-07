function emptyInput(eleID){
    var obj = document.getElementById(eleID);
    var msg="The " +obj.id +" is empty";
    if(obj!=null){
        if(obj.value==""){
            setFailStyle(obj,msg);
            return false;
        }
        else{
            corInput(eleID);
            return true;
        }
    }
    return false;
}

function getObj(eleID){
    return obj = document.getElementById(eleID);
}

function setEmptyEvent(obj){
    obj.addEventListener("blur",function(){
        emptyCheck(obj.id);
    },false);
}

function emptyCheck(eleID){
    return emptyInput(eleID);
}

function corInput(eleID){
    var obj = document.getElementById(eleID);
    var msg = eleID + " Input Correctly";
        if(obj.value!=""){
            setSuccessStyle(obj,msg);
            return true;
        }
        return false;

}

function setSuccessStyle(obj,msg){
     obj.className="success";
     var objSpan = document.getElementById("errorMessage");
     objSpan.innerHTML = "<font color = 'green'>"+msg+"</font>";
}

function setFailStyle(obj,msg){
     obj.className="failure";
     var objSpan = document.getElementById("errorMessage");
     objSpan.innerHTML = "<font color='red'>Error msg : "+msg+"</font>";
}

function stopSubmit(e){
    if(e&&e.preventDefault){
        e.preventDefault();
    }
    else{
        window.event.returnValue=false;
    }
}

function getPath(obj)    
{    
  if(obj)    
    {    
   
    if (window.navigator.userAgent.indexOf("MSIE")>=1)    
      {    
        obj.select();    
   
      return document.selection.createRange().text;    
      }    
   
    else if(window.navigator.userAgent.indexOf("Firefox")>=1)    
      {    
      if(obj.files)    
        {    
   
        return obj.files.item(0).getAsDataURL();    
        }    
      return obj.value;    
      }    
    return obj.value;    
    }    
}    
