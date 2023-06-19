/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
	
	 const bsCollapse = new bootstrap.Collapse('div#panelsStayOpen', {toggle: false});
    
    
    // 댓글 등록/목록 보이기/숨기기 토글 버튼에 이벤트 리스너를 등록
    const panelsStayOpen = document.querySelector('div#panelsStayOpen');
    panelsStayOpen.addEventListener('click', () => {
        bsCollapse.toggle();
        
        if (panelsStayOpen.alt === 'toggle-off') {
             panelsStayOpen.alt = 'toggle-on';
             
           
          
        } else {
            
            panelsStayOpen.alt = 'toggle-off';
          
        }
    });
});
 