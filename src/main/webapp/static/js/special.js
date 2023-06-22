/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
	
	const headingBtn = document.querySelector('h2#panelsStayOpen-headingOne');
	
	const cityMsg = document.querySelector('p#cityMsg');
	
const makeMsgElements = (reply) => {
        
     console.log('asd : '+ reply);
        cityMsg.innerHTML = ''; // <div>의 컨텐트를 지움.
        
        let htmlStr = '';
        // for (let i = 0; i < data.length; i++) {}
        // for (let x in data) {} -> 인덱스 iteration
        
            console.log(reply);
            console.log(reply[0].users);
            
            // 댓글 1개를 표시할 HTML 코드:
            htmlStr += `
            <p class="pb-3 mb-0 small lh-sm border-bottom" id="cityMsg">
        		<strong class="d-block text-gray-dark">${reply[0].users}</strong>
        		${reply[0].content}
      		</p>
            `;
            
        
        
        // 작성된 HTML 코드를 replies <div> 영역 안에 포함.
        cityMsg.innerHTML = htmlStr;
        
        // 모든 삭제 버튼들을 찾아서 클릭 이벤트 리스너를 등록:
        const deleteButtons = document.querySelectorAll('button.btnDelete');
        for (let btn of deleteButtons) {
            btn.addEventListener('click', deleteReply);
        }
        
        // 모든 수정 버튼들을 찾아서 클릭 이벤트 리스너를 등록:
        const modifyButtons = document.querySelectorAll('button.btnModify');
        for (let btn of modifyButtons) {
            btn.addEventListener('click', showUpdateModal);
        }
        
    };
    	
	const getListById = async () => {
        // 댓글 목록을 요청하기 위한 포스트 번호(아이디)
        const id = document.querySelector('button#aco1').value;
        console.log('id : '+ id);
        // 댓글 목록을 요청할 URL
        const reqUrl = `/mugmung/api/special/all/${id}`;
        console.log('reqUrl : '+reqUrl);
        // Ajax 요청을 보내고 응답을 기다림.
        try {
            const response = await axios.get(reqUrl);
            console.log(response);
            // 댓글 개수 업데이트 & 댓글 목록 보여주기
            makeMsgElements(response.data);
        } catch (error) {
            console.log(error);
        }
    };
	
	headingBtn.addEventListener('click', () => {
        
       /* const id = document.querySelector('button#aco1').value;
        console.log('id : '+ id);*/
        
       getListById(); 
        
        
        
    });

});