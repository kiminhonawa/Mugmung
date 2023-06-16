 /**
 * 
 */

document.addEventListener('DOMContentLoaded', () => {
  const cityButtons = document.querySelectorAll('button.cityBtn');
  
  cityButtons.forEach(button => {
    button.addEventListener('click', () => {
      const id = button.id;
      const url = 'http://localhost:8081/mugmung/main?id=' + id;
      window.location.href = url;
    });
  });
});