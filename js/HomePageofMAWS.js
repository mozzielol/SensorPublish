window.onload = function(){
    btnSearch = getObj("searchForm");
    btnSearch.addEventListener("change",function(){
        btnSearch.submit();
    },false);
}