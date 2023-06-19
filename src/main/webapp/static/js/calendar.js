/**
 *  mugmung/js/calendar.js
 * 	달력 생성 및 날짜 선택 기능 구현
 */



var currentDate = new Date();
var currentMonth = currentDate.getMonth();
var currentYear = currentDate.getFullYear();

var monthYearLabel = document.getElementById("monthYear");
var daysList = document.querySelector(".days");

// 이전 달로 이동
document.getElementById("prevButton").addEventListener("click", function() {
	currentMonth--;
	if (currentMonth < 0) {
		currentMonth = 11;
		currentYear--;
	}
	generateCalendar();
});

// 다음 달로 이동
document.getElementById("nextButton").addEventListener("click", function() {
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
			listItem.addEventListener("click", function() {
				var selectedDay = this.textContent;
				var selectedDate = new Date(currentYear, currentMonth, selectedDay);

				if (this.classList.contains("selected")) {
					// 이미 선택된 날짜인 경우, 선택 취소
					this.classList.remove("selected");
					console.log("Selection canceled:", formatDate(selectedDate));
				} else {
					// 선택되지 않은 날짜인 경우, 선택
					clearSelectedDates();
					this.classList.add("selected");
					console.log("You have selected:", formatDate(selectedDate));
					document.querySelector('input#selectedDate').value = formatDate(selectedDate);
				}
			});
		}
		daysList.appendChild(listItem);
	}

	function formatDate(date) {
		var year = date.getFullYear();
		var month = (date.getMonth() + 1).toString().padStart(2, "0");
		var day = date.getDate().toString().padStart(2, "0");
		return year + "-" + month + "-" + day;
	}

	function clearSelectedDates() {
		var selectedDates = document.querySelectorAll(".days .selected");
		selectedDates.forEach(function(date) {
			date.classList.remove("selected");
		});
	}
}

generateCalendar();

/**
 *  3. 인원 라디오버튼 처리-> 
 */

function selectNumberOfPeople(num) {
	console.log(num); // 선택된 인원 수 출력 (개발자 콘솔에 출력)
}

/**
 *  4. 시간 버튼 처리-> 
 *  이 코드를 사용하면 버튼을 클릭하여 선택한 시간은 selectedTime 변수에 저장되며, 다시 클릭하여 선택을 취소할 수 있습니다. 
 *  선택된 시간은 한 번에 하나만 유지되고, 다른 버튼을 클릭할 때 이전에 선택된 시간은 자동으로 취소됩니다.
 */

let selectedTime = null;

function toggleTime(time) {
	const button = document.getElementById(`button-${time}`);
	if (button.classList.contains('selected')) {
		button.classList.remove('selected');
		selectedTime = null;
	} else {
		clearSelection();
		button.classList.add('selected');
		selectedTime = time;
	}

	console.log(selectedTime); // 선택된 시간을 콘솔에 출력
}

function clearSelection() {
	const buttons = document.querySelectorAll('[id^="button-"]');
	buttons.forEach((button) => {
		button.classList.remove('selected');
	});
}





/*function reserve() {
	console.log("reservein");
  // 예약 정보를 가져오는 코드
  var selectedDateElement = document.querySelector(".days .selected");
  var selectedDate = selectedDateElement ? formatDate(new Date(currentYear, currentMonth, selectedDateElement)) : null;
  console.log("select data"+ selectedDate);
  var time = selectedTime;
  console.log("time"+ time);
 // var numberOfPeople = document.querySelector('input[name="numberOfPeople"]:checked').value;
 // console.log("numberOfPeople"+ numberOfPeople);
  
  
  

  // AJAX를 통해 서버로 데이터 전송
  $.ajax({
    url: "/reserve/booking", // 서버의 엔드포인트 URL을 입력해주세요
    method: "POST", // 데이터 전송 방식 (POST, GET 등)
    data: {
      date: selectedDate,
      numberOfPeople: numberOfPeople,
      time: time
    },
    success: function(response) {
      // 성공적으로 서버에 데이터를 전송한 후의 동작
      console.log(response); // 응답 데이터 출력 등
      // 예약 확인 모달 등의 UI 업데이트 등을 수행할 수 있습니다.
    },
    error: function(xhr, status, error) {
      // 서버에 데이터 전송 중 오류가 발생한 경우의 동작
      console.log(error); // 오류 메시지 출력 등
    }
  });
}*/

