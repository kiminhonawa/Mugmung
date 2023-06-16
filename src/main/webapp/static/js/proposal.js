/**
 * 
 */

 document.addEventListener('DOMContentLoaded', () => {
     const btnSuggest = document.querySelector('#btnSuggest');
     btnSuggest.addEventListener('click', () => {
         if(confirm("제안하시겠습니까?") == true) {
             alert("완료되었습니다.");
             location.href = '/mugmung/main';
         } else {
             
         }
     })
     
     const btnCancel = document.querySelector('#btnCancel');
     btnCancel.addEventListener('click', () => {
       if(confirm("취소하시면 메인페이지로 넘어갑니다. 취소하시겠습니까?") == true) {
           alert("취소되었습니다.");
           location.href = '/mugmung/main';
       } else {
           
       } 
     })
 });
 