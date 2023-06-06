

document.addEventListener('DOMContentLoaded', () => {
    
    const signupForm = document.querySelector('#signupForm');
    
    // signup 버튼을 찾아서 이벤트 리스너를 등록.
    const btnSignup = document.querySelector('#btnSignup');
    
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
        
        if (username === '' ) {
            alert('아이디는 반드시 입력해 주세요.');
            return; // 함수 종료
        }
        
        if (password === '' || passwordConfirm === '') {
            alert('비밀번호는 반드시 입력해 주세요.');
            return; // 함수 종료
        }
        
        if (email === '' ) {
            alert('이메일은 반드시 입력해 주세요.');
            return; // 함수 종료
        }
        
        if (!(password === passwordConfirm) ) {
            alert('비밀번호가 일치하지 않습니다. 다시 확인해 주세요.');
            return; // 함수 종료
        }
        
        
        /*const check = confirm('변경 내용을 저장할까요?');
        if (check) {
            modifyForm.action = './update'; // 폼 요청 주소
            modifyForm.method = 'post'; // 폼 요청 방식
            modifyForm.submit();
        }*/
        
    });
    
});
