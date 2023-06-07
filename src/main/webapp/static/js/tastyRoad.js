/**
 *  tastyRoad.js
 * 	달력 생 및 날짜 선택 기능 구현
 */
 
        var currentDate = new Date();
        var currentMonth = currentDate.getMonth();
        var currentYear = currentDate.getFullYear();

        var monthYearLabel = document.getElementById("monthYear");
        var daysList = document.querySelector(".days");

        // 이전 달로 이동
        document.getElementById("prevButton").addEventListener("click", function () {
            currentMonth--;
            if (currentMonth < 0) {
                currentMonth = 11;
                currentYear--;
            }
            generateCalendar();
        });

        // 다음 달로 이동
        document.getElementById("nextButton").addEventListener("click", function () {
            currentMonth++;
            if (currentMonth > 11) {
                currentMonth = 0;
                currentYear++;
            }
            generateCalendar();
        });

        // 달력 생성 함수
        function generateCalendar() {
    var monthNames = [
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    ];
    var daysInMonth = new Date(currentYear, currentMonth + 1, 0).getDate();
    var firstDayOfWeek = new Date(currentYear, currentMonth, 1).getDay();

    // 수정된 부분: 현재 월 표시
   var yearMonth = (currentYear % 100).toString().padStart(2, "0") + "." + (currentMonth + 1).toString().padStart(2, "0");
    monthYearLabel.textContent = yearMonth;

    daysList.innerHTML = "";

    for (var i = 0; i < firstDayOfWeek; i++) {
        var emptyListItem = document.createElement("li");
        daysList.appendChild(emptyListItem);
    }

    for (var day = 1; day <= daysInMonth; day++) {
        var listItem = document.createElement("li");
        listItem.textContent = day;

        listItem.addEventListener("click", function () {
            var selectedDay = this.textContent;
            var selectedDate = new Date(currentYear, currentMonth, selectedDay);
            alert("You have selected: " + selectedDate.toDateString());
        });

        daysList.appendChild(listItem);
    }
}


        generateCalendar();