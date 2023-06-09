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
	
	    var currentDate = new Date(); // 현재 날짜
	
	 for (var day = 1; day <= daysInMonth; day++) {
    var listItem = document.createElement("li");
    listItem.textContent = day;

    var selectedDate = new Date(currentYear, currentMonth, day);

    if (selectedDate < currentDate) {
        // 이전 날짜인 경우 선택 불가능
        listItem.classList.add("inactive");
    } else {
        listItem.addEventListener("click", function () {
            var selectedDay = this.textContent;
            var selectedDate = new Date(currentYear, currentMonth, selectedDay);

            if (this.classList.contains("selected")) {
                // 이미 선택된 날짜인 경우, 선택 취소
                this.classList.remove("selected");
                console.log("Selection canceled:", selectedDate.toDateString());
            } else {
                // 선택되지 않은 날짜인 경우, 선택
                clearSelectedDates();
                this.classList.add("selected");
                console.log("You have selected:", selectedDate.toDateString());
            }
        });
    }

    daysList.appendChild(listItem);
	}

	function clearSelectedDates() {
	    var selectedDates = document.querySelectorAll(".days .selected");
	    selectedDates.forEach(function (date) {
	        date.classList.remove("selected");
	    });
	}


	}

        generateCalendar();