/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
    
    const btnUpload = document.querySelector('#btnUpload');
    const fileInput = document.querySelector('#file');
    
    btnUpload.addEventListener('click', (e) => {
        e.preventDefault();
        console.log('btnUpload in');
        /*e.preventDefault();*/
        const file = fileInput.files[0].name;
        console.log("file : "+file);
        const img_loc = document.querySelector('#images_loc');
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

    axios.post('/mugmung/api/storecreate/imgUpload', formData)
        .then((response) => {
            alert(`매장 이미지 등록 성공(${response.data})`);
        })
        .catch((error) => {
            console.log(error);
        });
       
        
    });
    
});