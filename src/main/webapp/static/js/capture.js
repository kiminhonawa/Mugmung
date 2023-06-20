/**
 * capturemodify.jsp
 * 수정하기 완료/ 삭제
 * 검색
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
        
      //검색
        const searchInput = document.getElementById('input#search');
        const searchBtn = document.getElementById('button#searchBtn');
        
        searchBtn.addEventListener('click', (e) => {
           e.preventDefault();
           const val = searchInput.value;
           console.lag(val);
           showList("content",val);
       });
        
        function showList(searchCnd, keyword) {
        // 여기에 디테일 정보를 검색하고 표시하는 로직을 작성하세요.
        // searchCnd는 검색 항목, keyword는 검색어입니다.

        // 예시: 검색 항목이 "content"이고, 검색어가 "keyword"인 경우
        // 실제로는 데이터를 가져와서 검색 결과를 표시해야 합니다.
        // 여기서는 간단히 콘솔에 검색 결과를 출력하는 예시입니다.
        console.log('Search Condition:', searchCnd);
        console.log('Keyword:', keyword);

    
    }
    
    });
        
    
 
 