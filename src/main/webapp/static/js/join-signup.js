

document.addEventListener('DOMContentLoaded', () => {
    
    const signupForm = document.querySelector('#signupForm');
    
    // signup 버튼을 찾아서 이벤트 리스너를 등록.
    const btnSignup = document.querySelector('#btnSignup');
    
    const signUploadForm = document.querySelector('#signUploadForm');
    const btnUpload = document.querySelector('#btnUpload');
    const fileInput = document.querySelector('#file');
    
    
    btnUpload.addEventListener('click', (e) => {
		e.preventDefault();
		console.log('btnUpload in');
		/*e.preventDefault();*/
		const file = fileInput.files[0].name;
        console.log("file : "+file);
        const img_loc = document.querySelector('#user_image');
        img_loc.value = file;
        const img_loc_value = img_loc.value;
		console.log('img_loc_value'+img_loc_value);
			
            /*signUploadForm.action = '/api/join/imgUpload'; // 폼 요청 주소
            signUploadForm.method = 'post'; // 폼 요청 방식
            signUploadForm.submit();*/
        // 삭제 요청 URL
        const data = { img_loc_value };
        
    var formData = new FormData();
    formData.append('file', document.getElementById('file').files[0]);

    axios.post('/mugmung/api/join/imgUpload', formData)
        .then((response) => {
            alert(`프로필 사진 업로드 성공(${response.data})`);
        })
        .catch((error) => {
            console.log(error);
        });
        
    });
    
    // form의 각 항목 select
    const usernameInput = document.querySelector('input#username')
    const username = document.querySelector('input#username').value; // input에 입력된 값.
    const usernameConfirmLabel = document.querySelector('#usernameConfirmLabel');
    const password = document.querySelector('input#password').value; // input에 입력된 값.
    const passwordConfirm = document.querySelector('input#passwordConfirm').value; // input에 입력된 값.
    const email = document.querySelector('input#email').value; // input에 입력된 값.
        
	const confirmInput = document.querySelector('input#passwordConfirm');
	const pwconfirmLabel = document.querySelector('#pwconfirmLabel');
	
	const confirmUsername = (e) =>{
		
		
		const usernameInput = document.querySelector('input#username')
		console.log('username focusout');
		console.log('username ='+usernameInput.value);
		
		const username = document.querySelector('input#username').value;
		console.log('asdfasdf'+username);
        // 수정할 댓글 내용
        const reqUrl = '/mugmung/api/join/confirm/'+username;
        console.log('reqUrl : '+reqUrl);
		// 서버로 GET 방식의 Ajax 요청을 보냄
		axios.get(reqUrl) 
            .then((response) => {
				usernameConfirmLabel.innerText = '';
                // reponse에 포함된 data 객체에서 id, replyText 값을 찾음.
                /*const { id, replyText } = response.data;*/
                console.log('response : '+response);
                console.log('response.data : '+response.data);
                console.log('response.data.username : '+response.data.username);
                if(response.data.username === username){
					console.log('완성!');
					usernameConfirmLabel.innerText = '중복된 아이디 입니다.';
					return;
				}
                
            }) // 성공 응답이 왔을 때 실행할 콜백을 등록
            .catch((error) => console.log(error));		      		
	};
	
	
	//아이디 중복 체크
	usernameInput.addEventListener('focusout', confirmUsername);
	
	// 비밀번호 영역이 비밀번호 확인 영역과 같은지 체크
	confirmInput.addEventListener('focusout', function () {
		
	    /*const item = `<li>${itemInput2.value}</li>`;*/
	    const password = document.querySelector('input#password').value; // input에 입력된 값.
    	const passwordConfirm = document.querySelector('input#passwordConfirm').value; // input에 입력된 값.
	    console.log('focusout');
	    
	    console.log('비번'+password);
	    console.log('비번 확인'+passwordConfirm);
	    
	    if (!(password === passwordConfirm)) {
            console.log('같지 않아!'+pwconfirmLabel.innerText);
	    	pwconfirmLabel.innerText   = '비밀번호가 일치하지 않습니다. 다시 확인 해 주세요.';
            return; // 함수 종료
        }
        
        if (password === passwordConfirm) {
            console.log('같아!'+pwconfirmLabel.innerText);
	    	pwconfirmLabel.innerText   = '';
            return; // 함수 종료
        }
	    
	});
        
    btnSignup.addEventListener('click', (e) => {
		e.preventDefault();
      const username = document.querySelector('input#username').value;  
        // 8자 이상인지 확인
      if (username.length < 8) {
        alert('id는 8자 이상 입력해야 합니다');
        return;
      }
        // "admin" 단어 포함되는지 확인
      /*if (username.includes('admin')) {
        alert('id에 "admin"은 사용할 수 없습니다.');
        return;
      }*/

      // 연속되는 숫자 확인
      /*if (/(\d)\1/.test(username)) {
        alert('연속되는 숫자는 사용할 수 없습니다.');
        return;
      }*/

      // 특수문자 확인
      if (/[!@#$%^&*(),.?":{}|<>]/.test(username)) {
        alert('특수문자는 사용할 수 없습니다.');
        return;
      }

      // 공백 확인
      if (username.includes(' ')) {
        alert('공백은 사용할 수 없습니다.');
        return;
      } 
        const check = confirm('회원가입을 완료 하시겠습니까?');
        if (check) {
            signupForm.action = './signup'; // 폼 요청 주소
            signupForm.method = 'post'; // 폼 요청 방식
            signupForm.submit();
        }
    });
});
