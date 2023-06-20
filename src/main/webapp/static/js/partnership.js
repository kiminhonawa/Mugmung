
// 문의구분에 따른 다른 카테고리
/*function inquiryChang(e){
    var Partnership = ["배송 상품", "서비스 상품", "기타"];
    var Affiliation = ["마케팅 제휴", "광고 문의"]
    var Api = ["API연동 문의"];
    var target = document.getElementById("category");
    
    if(e.value == "입점 문의") var result = Partnership;
    else if(e.value == "제휴 문의") var result = Affiliation;
    else if(e.value == "API연동 문의") var result = Api;
    
    target.options.length = 0;
    
    for(x in result) {
        var opt = document.createElement("option");
        opt.value = result[x];
        opt.innerHTML = result[x];
        target.appendChild(opt);
    }
}*/


document.addEventListener('DOMContentLoaded', () => {
    const btnInquiry = document.querySelector('#btnInquiry');
    btnInquiry.addEventListener('click', () => {
        if (confirm("문의하시겠습니까?") == true) {
            //true는 확인버튼을 눌렀을 때 코드 작성
            alert("완료되었습니다.");
            location.href = '/mugmung';
        } else {
            // false는 취소버튼을 눌렀을 때, 취소됨
             alert("취소되었습니다.");
        }
        
    })
});






