/**
 * 
 */

document.addEventListener('DOMContentLoaded', () => {
    
    const bookmarkBtn = document.querySelector('button#bookmarkBtn');
    const btnToggelBookmark = document.querySelector('img#btnToggelBookmark');
    //const restaurant_id = document.querySelector('input#id').value;
    //const username =  '사용자명';
    
    bookmarkBtn.addEventListener('click', () => {
        console.log('button click');
        if(btnToggelBookmark.alt === 'bookmark-off') {
            btnToggelBookmark.src = '../static/assets/icons/bookmarkOn.png';
            btnToggelBookmark.alt = 'bookmark-on';
            
    /*try {
         const response = await axios.post('/mugmung/api/bookmark', {  
                 restaurant_id: restaurant_id,
                 username: username,
             });
             console.log(response);
         }  catch (error) {
             console.log(error);
         }*/ 
        } else {
            btnToggelBookmark.src = '../static/assets/icons/bookmarkOff.png';
            btnToggelBookmark.alt = 'bookmark-off';
        }
    });

 });