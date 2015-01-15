function getContextPath() {
    var pathName = document.location.pathname;
    var index = pathName.substr(1).indexOf("/");
    var result = pathName.substr(0,index+1);
    return result;
}
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}
var Sidebar = function(){
	return {
		init : function(){
			var root = getContextPath();
			if(root == "/forword"){
				root = "";
			}
			var ajaxObj = {
					url :root + "/modular?token="+getQueryString("token"),
					type : "GET",
					success : function(data){
						
						$("#sidebar").html(data);
					} 
			};
			$.ajax(ajaxObj);
		}
	}
}();