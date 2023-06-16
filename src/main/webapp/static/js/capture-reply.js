/**
 * 
 * capture-reply.js
 *  댓글 등록, 목록 검색, 수정, 삭제
 * /detail.jsp에 포함.
 */

 document.addEventListener('DOMContentLoaded', () => {
     //댓글 목록 표시
     const replies = document.querySelector('div#replies');
     //댓글 삭제 버튼 이벤트 리스너
     const deleteReply = (e) => {
         
         console.log(e.target);
         
         if(!confirm('정말 삭제할까요?')){
             return;
         }
         
         //삭제할 댓글 아이디
         const id = e.target.getAttribute('data-id');
         //삭제 요청 URL
         const reqURL = `/spring2/api/capturereply/${id}`;
         // 삭제 요청을 Ajax 방식으로 보냄.
        axios.delete(reqUrl)
            .then((response) => {
                console.log(response);
                alert('댓글 삭제 성공');
                getRepliesWithPostId(); // 댓글 목록 갱신.
            })
            .catch((error) => {
                console.log(error);
            });
     
    };
    
    // 댓글 수정 모달 객체 생성
    const modal = new bootstrap.Modal('div#replyUpdateModal', {backdrop: false});
    // 모달의 엘리먼트 찾기
    const modalInput = document.querySelector('input#modalReplyId');
    const modalTextarea = document.querySelector('textarea#modalReplyText');
    const modalBtnUpdate = document.querySelector('button#modalBtnUpdate');
 
 
 
 
 
 
 
 
 
  });