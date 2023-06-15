// modal.js

// 테이블 클릭 시 모달 띄우기
document.addEventListener('DOMContentLoaded', function () {
    var table = document.querySelector('table');
    table.addEventListener('click', function (event) {
        var target = event.target;
        if (target.tagName === 'TD') {
            var modal = document.getElementById('myModal');
            modal.style.display = 'block';
        }
    });
});
