/**
 * 별점 
 */

document.addEventListener('DOMContentLoaded', () => {
    
    
    let star_score=0;
    
    function Rating(){};
        Rating.prototype.rate = 0;
        Rating.prototype.setRate = function(newrate){
    
    
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
            star_score = item.value;
        }else{
            item.checked = false;
        }
    });
    
    console.log(star_score);
}
    let rating = new Rating();//별점 인스턴스 생성

document.querySelector('.rating').addEventListener('click',function(e){
    let elem = e.target;
        if(elem.classList.contains('rate_radio')){
            rating.setRate(parseInt(elem.value));
            /*star_score = elem.value; // 별점 값을 star_score에 할당*/
    }
});

    const reviewForm = document.querySelector('#reviewForm');
    
    // 삭제 버튼을 찾아서 이벤트 리스너를 등록.
    const btnDelete = document.querySelector('#btnDelete');
    btnDelete.addEventListener('click',()=>{
        const check = confirm('정말 취소할까요?');
        if(check){
            reviewForm.action = './review';
            reviewForm.method = 'post';
            reviewForm.submit();
        }
    });
    
    // 저장 버튼을 찾아서 이벤트 리스너를 등록.
    const btnSave = document.querySelector('#btnSave');
    btnSave.addEventListener('click', ()=>{
    /*const star_score = document.querySelector('input[name="rating"]:checked').value;*/
    const content = document.querySelector('textarea#content').value;
    console.log('star_score = '+star_score);
    console.log('content = '+content);
    console.log('reviewForm = '+reviewForm);
        if(content === ''){
            alert('별점과 내용을 반드시 입력하세요.');
            return;
        }
    reviewForm.append('star_score', star_score); //star_score.title-> star_score = item.value로 받으니까 
    const check = confirm('변경 내용을 저장할까요?');
    if(check){
            reviewForm.action = './save';
            reviewForm.method = 'post';
            reviewForm.submit();
        }

    
});
    
    const btnSaveTemp = document.querySelector('#btnTemp'); //임시저장 버튼 선택
    
    btnSaveTemp.addEventListener('click', ()=> {
        const formData = new FormData(); // 폼 데이터 객체 생성
        
        /*// 별점 데이터 추가
        const starScore = document.querySelector('input[name="rating"]:checked').value;
        formData.append('star_score', starScore);
        console.log('star_score', starScore);*/
        
        //내용 데이터 추가
        const content = document.querySelector('textarea#content').value;
        formData.append('content', content);
        console.log('Content', content);
    
    //  Ajax 요청으로 임시저장 데이터 전송
    fetch('/temp_save',{
        method: 'POST',
        body: formData
    })
        .then(response => {
            if(response.ok){
                alert('임시저장이 완료되었습니다.');
            }else{
                alert('임시저장에 실패했습니다.')
            }
        })
        .catch(error =>{
            console.error('Error:',error);
        });
    });
        
//별점 데이터 value
    function getCheckboxValue(){
        const query = 'input[name = "rating"]:checked';
        const selectedEls = document.querySelectorAll(query);
        console.log(selectedEls);
        let result = '';
        selectedEls.forEach((el) => {
            result += el.value + '';
    });
    
    document.getElementById('result').innerText = result;
    console.log(result);
    
    }
});

// 체크박스 값 선택

//별점 선택한 만큼 나오기 덧셈

//텍스트에어리어값

//사진이미지

//저장버튼 눌렀을때 사진이름만 가져오기 콘솔로그 해보기


/*//상품평 작성 글자수 초과 체크 이벤트 리스너
    document.querySelector('.review_textarea').addEventListener('keydown',function(){
        //리뷰 400자 초과 안되게 자동 자름
        let review = document.querySelector('.review_textarea');
        let lengthCheckEx = /^.{10000,}$/;
        if(lengthCheckEx.test(review.value)){
            //10,000자 초과 컷
            review.value = review.value.substr(0,10000);
        }
    });*/
 
/*//저장 전송전 필드 체크 이벤트 리스너
    document.querySelector('#btnSave').addEventListener('click', function(e){
        //별점 선택 안했으면 메시지 표시
        if(rating.rate == 0){
            rating.showMessage('rate');
            return false;
        }
 });*/
 
 
 
 
 
