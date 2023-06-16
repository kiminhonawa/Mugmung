/**
 * capturemodify.jsp
 * 수정하기 완료/ 삭제
 */
document.addEventListener('DOMContentLoaded', function(){
    
    console.log("js in");
    
    //form의 요소를 찾음
    const form = document.querySelector('#modifyForm');
    
    //input#id 요소를 찾음
    const inputId = document.querySelector('input#id');
        
    //textarea#content 요소를 찾음
    const textareaContent = document.querySelector('textarea#content');
    
    //수정완료/삭제 버튼 찾음
    const btnDelete = document.querySelector('#btnDelete'); 
    const btnUpdate = document.querySelector('#btnUpdate');
    
    btnDelete.addEventListener('click', (e) => {
        console.log('del')
        e.preventDefault();
        
        const id = inputId.value;
        const result = confirm(`NO.${id} 정말 삭제할까요?`);
        console.log(`삭제 확인 결과 = ${result}`);
        
        //confirm창에서 확인 클릭
        if(result) {
            form.action = 'delete';
            form.method = 'post';
            form.submit();
        }
    });    
        
       btnUpdate.addEventListener('click', (e) => {
           console.log("update");
           e.preventDefault();
           
           
           const id = inputId.value;
           const content = textareaContent.value;
           
           if(content === ''){
            alert('내용은 반드시 입력해야 합니다.');
            return;
        }
        
        const result = confirm('NO.${id} 포스트를 업데이트 할까요?');
        if(result) {
            form.action = 'update';
            form.method = 'post';
            form.submit();
        }
           
       }); 
        
        
    });
    
    

 
 
 
 
 
 
 
 
 
 
 