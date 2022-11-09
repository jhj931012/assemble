/**
 * board.js
 */
 
 function check(){
 	$board_title=$.trim($('#board_title').val()); // trim()함수는 양쪽 공백을 제거
 	if($board_title.length == 0){ // length속성은 문자 길이를 반환한다.
 		alert('제목을 입력하세요');
 		$('#board_title').val(''); // 글쓴이 입력박스 초기화
 		$('#board_title').focus(); // 글쓴이 입력박스로 포커스 이동
 		return false;
 	}
 	
 	if($.trim($('#board_cont').val()).length == 0){
 		alert('내용을 입력하세요');
 		$('#board_cont').val('').focus();
 		return false;
 	}
 }// check()