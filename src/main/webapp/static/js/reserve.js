/**
 *  1. 리스트 선택
 */

    let selectedStore = null;

  function toggleStore(storeName) {
    const button = document.getElementById(`button-${storeName}`);
    if (button.classList.contains('selected')) {
      button.classList.remove('selected');
      selectedStore = null;
    } else {
      clearSelection();
      button.classList.add('selected');
      selectedStore = storeName;
    }
    console.log(selectedStore); // 선택된 가게 이름을 콘솔에 출력
  }

  function clearSelection() {
    const buttons = document.querySelectorAll('[id^="button-"]');
    buttons.forEach((button) => {
      button.classList.remove('selected');
    });
  }
  
/**
 *  2. 캘린더 js파일-> 
 */
  
  
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