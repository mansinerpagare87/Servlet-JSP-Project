function searchByName(str){
 	let xhttp=new XMLHttpRequest();
 	console.log("Hellon from outside");
 	xhttp.onreadystatechange=function(){
 		if(this.readyState==4 && this.status==200){
	console.log("Hello");
 			document.getElementById("d").innerHTML=this.responseText;
 		}
 	};
 	xhttp.open("GET","searchbyname.jsp?n="+str,true)
 	xhttp.send();
 }