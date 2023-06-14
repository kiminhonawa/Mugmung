/**
 * 캡처 저장 버튼
 */

 document.addEventListener('DOMContentLoaded',() => {
     
     
     const btnComplete = document.querySelector('button#btnComplete');
     
     const createCapture = (e) => {
         const id = document.querySelector('input#id').value;
         const reply_text = document.querySelector('textarea#reply_text').value;
         const writer = document.querySelector('input#writer').value;
         
         if (reply_text === '') {
             alert('내용을 입력하세요.');
             return;
         }
     }
     
     
     
 });
 
 
 
 
 
 
 
 
 
 
 
 