// Function to update the navigation menu based on authentication status
const updateNavigationMenu = () => {
    const loginLi = document.getElementById('li2');
    const signupLi = document.getElementById('li3');
    const usernameSpan = document.getElementById('usernameSpan');
  
    if (isAuthenticated()) {
      // User is authenticated, hide login and signup options
      loginLi.style.display = 'none';
      signupLi.style.display = 'none';
  
      // Get username from localStorage and display
      const username = localStorage.getItem('username');
      if (username) {
        usernameSpan.textContent = `Welcome, ${username}`;
        usernameSpan.style.display = 'inline';
      }
    } else {
      // User is not authenticated, show login and signup options
      loginLi.style.display = 'block';
      signupLi.style.display = 'block';
  
      // Hide username display
      usernameSpan.style.display = 'none';
    }
  };
  
  // Call the function to update the navigation menu on page load
  updateNavigationMenu();
  
  // Check if the user is authenticated
  function isAuthenticated() {
    const accessToken = localStorage.getItem('accessToken');
    return accessToken !== null && accessToken !== '';
  }
  