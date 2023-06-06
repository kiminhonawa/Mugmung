/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
	// 버튼 찾기
	const loginBtn = document.querySelector('#loginBtn');
	const signUpBtn = document.querySelector('#signUpBtn');
	
	// loginBtn 클릭 시 login.jsp로 이동
  	loginBtn.addEventListener('click', () => {
    window.location.href = '/mugmung/user/signin';
  	});

  // signUpBtn 클릭 시 signUp.jsp로 이동
  	signUpBtn.addEventListener('click', () => {
    window.location.href = '/mugmung/join/signup';
  	});
	
});