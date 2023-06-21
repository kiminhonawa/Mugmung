/**
 * 
 */

document.addEventListener('DOMContentLoaded', () => {
    
    const bookmarkBtn = document.querySelector('button#bookmarkBtn');
    const btnToggleBookmark = document.querySelector('img#btnToggleBookmark');
    const restaurant_id = document.querySelector('input#restaurant_id').value;
    const username =  '사용자명';
    
    bookmarkBtn.addEventListener('click', async() => {
        console.log('button click');
        
        // 북마크 시도
        if(btnToggleBookmark.alt === 'bookmark-off') {
            btnToggleBookmark.src = '../static/assets/icons/bookmarkOn.png';
            btnToggleBookmark.alt = 'bookmark-on';
    
    	const username = document.querySelector('input#username').value;
        const restaurant_id = document.querySelector('input#restaurant_id').value;
            
    	const data = { username, restaurant_id};
        
        axios.post('/mugmung/api/detail', data) // POST 방식의 Ajax 요청 보냄.
            .then((response) => {
				
                alert(`북마크 등록(${response.data})`);
                
            }) // 성공 응답이 왔을 때 실행할 콜백 함수 등록
            .catch((error) => {
                console.log(error);
            }); // 에러 응답이 왔을 때 실행할 콜백 함수 등록
        } else {
            btnToggleBookmark.src = '../static/assets/icons/bookmarkOff.png';
            btnToggleBookmark.alt = 'bookmark-off';
            
        const id = document.querySelector('input#restaurant_id').value;
        const restaurant_id = document.querySelector('input#restaurant_id').value;
		const username = document.querySelector('input#username').value;            
    	const reqUrl = `/mugmung/api/detail/${id}/${username}`;
    	
        
        axios.delete(reqUrl) // POST 방식의 Ajax 요청 보냄.
            .then((response) => {
				
                console.log(response);
                alert('북마크 해제');
                
            }) // 성공 응답이 왔을 때 실행할 콜백 함수 등록
            .catch((error) => {
                console.log(error);
            }); // 에러 응답이 왔을 때 실행할 콜백 함수 등록
        }
    });

 });