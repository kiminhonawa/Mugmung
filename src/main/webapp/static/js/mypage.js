/**
 * post-modify.js
 * /post/modify.jsp 에서 사용.
 */

document.addEventListener('DOMContentLoaded', () => {
	
var path = document.querySelector('input#mymyImage').value; 
var filename = path.split("\\").pop();

console.log("pop"+filename);

if(filename == ""){
	console.log("nullasdf"+filename);
	var myimgurl = '../static/img/user_login_default_img.png';

console.log('myimgurl : '+myimgurl);

document.getElementById("myImgUrl").src = myimgurl;	
} else {
	console.log(filename);
	var myimgurl = '../static/img/'+filename;

console.log('myimgurl : '+myimgurl);

document.getElementById("myImgUrl").src = myimgurl;	
}

	
const settingInfoBtn = document.querySelector('buttton#settingInfoBtn');

const tableHead = document.querySelector('thead#tableHead');
const tableLists = document.querySelector('tbody#tableLists');

const showDetail = (e) =>{
	const id = e.target.getAttribute('data-id');
	location.href = '/mugmung/detail/detail?id='+id;
}; 

const makeSetImgElements = (data) => {
        // 댓글 개수 업데이트
        /*replyCountSpan.innerHTML = data.length; // 배열 길이(원소 개수)*/
        
        tableLists.innerHTML = ''; // <div>의 컨텐트를 지움.
        tableHead.innerHTML = '';
        let headStr = '';
        let htmlStr = '';
        
        headStr = `
        	
        `;
        
        // for (let i = 0; i < data.length; i++) {}
        // for (let x in data) {} -> 인덱스 iteration
        for (let reply of data) {
            console.log('asdf : '+reply.id);
            
            // Timestamp 타입 값을 날짜/시간 타입 문자열로 변환:
            const modified = new Date(reply.modifiedTime).toLocaleString();
            
            // 댓글 1개를 표시할 HTML 코드:
            htmlStr += `
                <c:url value="/upload/imgUpload" var="upload"></c:url>
			<form id="signUploadForm" action="${upload}" method="post" enctype="multipart/form-data">
    <input type="file" class="myfile" id="file" name="file" />
    <input type="button" id="btnUpload" value="Upload" />
</form> 
            `;
            tableLists.innerHTML = htmlStr;
            tableHead.innerHTML = headStr;
        }
        
};
const makeStarscoreElements = (data) => {
        // 댓글 개수 업데이트
        /*replyCountSpan.innerHTML = data.length; // 배열 길이(원소 개수)*/
        
        tableLists.innerHTML = ''; // <div>의 컨텐트를 지움.
        tableHead.innerHTML = '';
        let headStr = '';
        let htmlStr = '';
        
        headStr = `
        	<tr style="border: 1px black " >
                            <th>상호명</th>
                            <th rowspan="2">리뷰 내용</th>
                            <th >별점 점수</th>
                        </tr>
        `;
        
        // for (let i = 0; i < data.length; i++) {}
        // for (let x in data) {} -> 인덱스 iteration
        for (let reply of data) {
            console.log('asdf : '+reply.id);
            
            // Timestamp 타입 값을 날짜/시간 타입 문자열로 변환:
            const modified = new Date(reply.modifiedTime).toLocaleString();
            
            // 댓글 1개를 표시할 HTML 코드:
            htmlStr += `
                 <tr>
                <td>${reply.name}</td>
                <td>
                    ${reply.reply_text} 
                </td>
                <td>
                   ${reply.star_score}
                </td>
            </tr>
            `;
            tableLists.innerHTML = htmlStr;
            tableHead.innerHTML = headStr;
        }
        
};
// 댓글 목록 HTML을 작성하고 replies 영역에 추가하는 함수.
    // argument data: Ajax 요청의 응답으로 전달받은 데이터.
    const makeBookmarkElements = (data) => {
		
		console.log('makeBookmarkElements 1');
        // 댓글 개수 업데이트
        /*replyCountSpan.innerHTML = data.length; // 배열 길이(원소 개수)*/
        
       tableLists.innerHTML = ''; // <div>의 컨텐트를 지움.
        tableHead.innerHTML = '';
        let headStr ='';
        let htmlStr = '';
        
        headStr =`
        	<tr style="border: 1px black " >
                <th>상호명</th>
                    <th rowspan="2">가게 정보</th>
                    <th >맛집 이동</th>
                </tr>
        `;
        
        // for (let i = 0; i < data.length; i++) {}
        // for (let x in data) {} -> 인덱스 iteration
        for (let reply of data) {
			console.log('makeBookmarkElements 1');
            console.log('asdf : '+reply.id);
            
            // Timestamp 타입 값을 날짜/시간 타입 문자열로 변환:
            const modified = new Date(reply.modifiedTime).toLocaleString();
            
            // 댓글 1개를 표시할 HTML 코드:
            htmlStr += `
                 <tr>
                <td>${reply.name}</td>
                <td>
                    ${reply.name_info} 
                </td>
                <td>
                   <button class="btnModify btnDetail btn btn-outline-success" data-id="${reply.id}">
                        북마크 이동
                    </button> 
                </td>
            </tr>
            `;
        }
            tableHead.innerHTML = headStr;
tableLists.innerHTML = htmlStr;
        
};

	// 댓글 목록 HTML을 작성하고 replies 영역에 추가하는 함수.
    // argument data: Ajax 요청의 응답으로 전달받은 데이터.
    const makePurchasedElements = (data) => {
        // 댓글 개수 업데이트
        /*replyCountSpan.innerHTML = data.length; // 배열 길이(원소 개수)*/
        
        tableLists.innerHTML = ''; // <div>의 컨텐트를 지움.
        tableHead.innerHTML = '';
        let headStr ='';
        let htmlStr = '';
        
        headStr =`
        	<tr style="border: 1px black " >
                <th>상호명</th>
                    <th rowspan="2">가게 정보</th>
                    <th >맛집 이동</th>
                </tr>
        `;
        
        // for (let i = 0; i < data.length; i++) {}
        // for (let x in data) {} -> 인덱스 iteration
        for (let reply of data) {
            console.log(reply);
            
            // Timestamp 타입 값을 날짜/시간 타입 문자열로 변환:
            const modified = new Date(reply.modifiedTime).toLocaleString();
            
            // 댓글 1개를 표시할 HTML 코드:
            htmlStr += `
                 <tr>
                <td>${reply.name}</td>
                <td>
                    ${reply.name_info}
                </td>
                <td>
                   <button class="btnModify btnDetail btn btn-outline-success" data-id="${reply.id}">
                        맛집 이동
                    </button> 
                </td>
            </tr>
            `;
            
        }
        
        // 작성된 HTML 코드를 replies <div> 영역 안에 포함.
        tableHead.innerHTML = headStr;
        tableLists.innerHTML = htmlStr;
        
/*        // 모든 삭제 버튼들을 찾아서 클릭 이벤트 리스너를 등록:
        const deleteButtons = document.querySelectorAll('button.btnDelete');
        for (let btn of deleteButtons) {
            btn.addEventListener('click', deleteReply);
        }
*/        
        // 모든 수정 버튼들을 찾아서 클릭 이벤트 리스너를 등록:
        const detailButtons = document.querySelectorAll('button.btnDetail');
        for (let btn of detailButtons) {
            btn.addEventListener('click', showDetail);
        }
        
    };
    const detailButtons = document.querySelectorAll('button.btnDetail');
        for (let btn of detailButtons) {
            btn.addEventListener('click', showDetail);
        }

    // 댓글 목록 HTML을 작성하고 replies 영역에 추가하는 함수.
    // argument data: Ajax 요청의 응답으로 전달받은 데이터.
    const makeReviewElements = (data) => {
        // 댓글 개수 업데이트
        /*replyCountSpan.innerHTML = data.length; // 배열 길이(원소 개수)*/
        
        tableLists.innerHTML = ''; // <div>의 컨텐트를 지움.
        tableHead.innerHTML = '';
        let headStr = '';
        let htmlStr = '';
        
        headStr = `
        	<tr style="border: 1px black " >
                            <th>상호명</th>
                            <th rowspan="2">리뷰 내용</th>
                            <th >리뷰 이동</th>
                        </tr>
        `;
        
        // for (let i = 0; i < data.length; i++) {}
        // for (let x in data) {} -> 인덱스 iteration
        for (let reply of data) {
            console.log(reply);
            
            // Timestamp 타입 값을 날짜/시간 타입 문자열로 변환:
            const modified = new Date(reply.modifiedTime).toLocaleString();
            
            // 댓글 1개를 표시할 HTML 코드:
            htmlStr += `
                 <tr>
                <td>${reply.name}</td>
                <td>
                    ${reply.reply_text}
                </td>
                <td>
                   <button class="btnModify btnDetail btn btn-outline-success" data-id="${reply.id}">
                        리뷰 이동
                    </button> 
                </td>
            </tr>
            `;
            
        }
        
        // 작성된 HTML 코드를 replies <div> 영역 안에 포함.
        tableLists.innerHTML = htmlStr;
        tableHead.innerHTML = headStr;
        
/*        // 모든 삭제 버튼들을 찾아서 클릭 이벤트 리스너를 등록:
        const deleteButtons = document.querySelectorAll('button.btnDelete');
        for (let btn of deleteButtons) {
            btn.addEventListener('click', deleteReply);
        }
        
        // 모든 수정 버튼들을 찾아서 클릭 이벤트 리스너를 등록:
        const modifyButtons = document.querySelectorAll('button.btnModify');
        for (let btn of modifyButtons) {
            btn.addEventListener('click', showUpdateModal);
        }*/
        
    };

const getPurchased = async () => {	    
	      
        // 댓글 목록을 요청할 URL /mypage/api/reviewed
        const reqUrl = `/mugmung/mypage/api/purchased`;
        console.log('reqUrl : '+reqUrl);
        // Ajax 요청을 보내고 응답을 기다림.
        try {
            const response = await axios.get(reqUrl);
            console.log(response);
            // 댓글 개수 업데이트 & 댓글 목록 보여주기
            makePurchasedElements(response.data);
        } catch (error) {
            console.log(error);
        }
    }; 

const purchased = document.querySelector('a#purchased');

purchased.addEventListener('click', (e) => {
	e.preventDefault();
        
     // 기존에 활성화된 링크의 'active' 클래스를 제거합니다.
    const activeLink = document.querySelector('.nav-item a.active');
    if (activeLink) {
      activeLink.classList.remove('active');
      activeLink.removeAttribute('aria-current');
    }
     
    // 클릭한 링크에 'active' 클래스를 추가하고, aria-current="page" 속성을 적용합니다.
    purchased.classList.add('active');
    purchased.setAttribute('aria-current', 'page'); 
    
    getPurchased();
     
});

const getReviewed = async () => {	    
	      
        // 댓글 목록을 요청할 URL /mypage/api/reviewed
        const reqUrl = `/mugmung/mypage/api/reviewed`;
        console.log('reqUrl : '+reqUrl);
        // Ajax 요청을 보내고 응답을 기다림.
        try {
            const response = await axios.get(reqUrl);
            console.log(response);
            // 댓글 개수 업데이트 & 댓글 목록 보여주기
            makeReviewElements(response.data);
        } catch (error) {
            console.log(error);
        }
    }; 

const reviewed = document.querySelector('a#reviewed');

reviewed.addEventListener('click', (e) => {
	e.preventDefault();
        console.log('reviewed clicked');
     // 기존에 활성화된 링크의 'active' 클래스를 제거합니다.
    const activeLink = document.querySelector('.nav-item a.active');
    if (activeLink) {
      activeLink.classList.remove('active');
      activeLink.removeAttribute('aria-current');
    }
     
    // 클릭한 링크에 'active' 클래스를 추가하고, aria-current="page" 속성을 적용합니다.
    reviewed.classList.add('active');
    reviewed.setAttribute('aria-current', 'page'); 
    

    getReviewed();
    
     
});//addEventListener end


const getBookmarked = async () => {	    
	      
        const reqUrl = `/mugmung/mypage/api/bookmarked`;
        console.log('reqUrl : '+reqUrl);
        // Ajax 요청을 보내고 응답을 기다림.
        try {
            const response = await axios.get(reqUrl);
            console.log(response);
            // 댓글 개수 업데이트 & 댓글 목록 보여주기
            makeBookmarkElements(response.data);
        } catch (error) {
            console.log(error);
        }
    }; 

const bookmarked = document.querySelector('a#bookmarked');

bookmarked.addEventListener('click', (e) => {
	e.preventDefault();
        
     // 기존에 활성화된 링크의 'active' 클래스를 제거합니다.
    const activeLink = document.querySelector('.nav-item a.active');
    if (activeLink) {
      activeLink.classList.remove('active');
      activeLink.removeAttribute('aria-current');
    }
     
    // 클릭한 링크에 'active' 클래스를 추가하고, aria-current="page" 속성을 적용합니다.
    bookmarked.classList.add('active');
    bookmarked.setAttribute('aria-current', 'page'); 
    
    getBookmarked();
     
});

const getStarscore = async () => {	    
	      
        const reqUrl = `/mugmung/mypage/api/starscore`;
        console.log('reqUrl : '+reqUrl);
        // Ajax 요청을 보내고 응답을 기다림.
        try {
            const response = await axios.get(reqUrl);
            console.log(response);
            // 댓글 개수 업데이트 & 댓글 목록 보여주기
            makeStarscoreElements(response.data);
        } catch (error) {
            console.log(error);
        }
    };
const getSetImg = async () => {	    
	      
        const reqUrl = `/mugmung/mypage/api/setImg`;
        console.log('reqUrl : '+reqUrl);
        // Ajax 요청을 보내고 응답을 기다림.
        try {
            const response = await axios.get(reqUrl);
            console.log(response);
            // 댓글 개수 업데이트 & 댓글 목록 보여주기
            makeSetImgElements(response.data);
        } catch (error) {
            console.log(error);
        }
    };     

const starscore = document.querySelector('a#starscore');

starscore.addEventListener('click', (e) => {
	e.preventDefault();
        
     // 기존에 활성화된 링크의 'active' 클래스를 제거합니다.
    const activeLink = document.querySelector('.nav-item a.active');
    if (activeLink) {
      activeLink.classList.remove('active');
      activeLink.removeAttribute('aria-current');
    }
     
    // 클릭한 링크에 'active' 클래스를 추가하고, aria-current="page" 속성을 적용합니다.
    starscore.classList.add('active');
    starscore.setAttribute('aria-current', 'page'); 
    
    getStarscore();
     
});


const setImg = document.querySelector('a#setImg');
setImg.addEventListener('click', (e) => {
	e.preventDefault();
        
     // 기존에 활성화된 링크의 'active' 클래스를 제거합니다.
    const activeLink = document.querySelector('.nav-item a.active');
    if (activeLink) {
      activeLink.classList.remove('active');
      activeLink.removeAttribute('aria-current');
    }
     
    // 클릭한 링크에 'active' 클래스를 추가하고, aria-current="page" 속성을 적용합니다.
    setImg.classList.add('active');
    setImg.setAttribute('aria-current', 'page'); 
    
    getSetImg();
     
});

    
});
