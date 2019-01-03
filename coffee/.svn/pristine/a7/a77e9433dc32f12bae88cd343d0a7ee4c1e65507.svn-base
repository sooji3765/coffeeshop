/**
 * contact form check 
 */

function contact_check() {
	var email = $("#email").val()
	var name = $("#name").val()
	var content = $("#content").val()
	
	if(email==""){
		alert("이메일을 입력해주세요");
		$("#email").focus();
		return ;
		
	}
	
	if(name==""){
		alert("이름 입력해주세요");
		$("#name").focus();
		return ;
		
	}
	
	if(content==""){
		alert("내용을 입력해주세요");
		$("#content").focus();
		return ;
		
	}
	
	document.form1.action="${path}/contact_insert.do";
	document.form1.submit;
		
}