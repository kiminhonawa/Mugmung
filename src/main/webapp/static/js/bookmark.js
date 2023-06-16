/**
 * 
 */

document.addEventListener('DOMContentLoaded', () => {
    // 북마크 개수 표시 영역(span)
    const bookmarkCountSpan = document.querySelector('span#bookmarkCount');
    // 북마크 목록 표시 영역(div)
    const list = document.querySelector('div#list');
    


// bookmark 목록 list 영역에 추가하는 함수
const makeBookmarkElements = (data) => {
    bookmarkCountSpan.innerHTML = data.length; // 댓글 개수 업데이트
    list.innerHTML = '';
    let htmlStr = '';
    for (let list of data) {
        console.log(list);
        
    }
}


const getBookmarkrestaurantId = async () => {
    const restaurantId = document.querySelector('input#id').value;
    const reqUrl = `/spring2/api/post/all/${restaurant_id}`;
    
    try {
        const response = await axios.get(reqUrl);
        console.log(response);
        makeBookmarkElements(response.data);         
    } catch (error) {
        console.log(error);
    }
    
   
};



 // 즐겨찾기 토글 처리
 
 const bookmarkBtn = document.querySelector('img#bookmarkBtn');
 
 const btnToggelBookmark = document.querySelector('button#btnToggelBookmark');
 btnToggelBookmark.addEventListener('click', () => {

     if(bookmarkBtn.alt === 'bookmark-off') {
         bookmarkBtn.src = '../static/assets/icons/bookmarkOn.png';
         bookmarkBtn.alt = 'bookmark-on';
         
         // 즐겨찾기 목록 서버에 요청하고, 응답이 오면 화면 갱신.
        getBookmarkrestaurantId();
     } else {
         bookmarkBtn.src = '../static/assets/icons/bookmarkOff.png';
         bookmarkBtn.alt = 'bookmark-off';
     }
 });
 
 });