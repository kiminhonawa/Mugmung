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
            
    try {
         const response = await axios.get('/mugmung/bookmark/bookmarkAdd', {  
           params: {      
                 restaurant_id: restaurant_id,
                 username: username,
                 }
                 
             });
             console.log(response);
         }  catch (error) {
             console.log(error);
         } 
         // 북마크 해제
        } else {
            btnToggleBookmark.src = '../static/assets/icons/bookmarkOff.png';
            btnToggleBookmark.alt = 'bookmark-off';
        }
    });

 });