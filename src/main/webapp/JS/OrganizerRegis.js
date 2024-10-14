document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent default form submission
        // Redirect to the dashboard page
        window.location.href = "dashboard.html";
    });