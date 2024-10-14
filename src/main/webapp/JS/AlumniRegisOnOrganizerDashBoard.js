function validateForm() {
            var name = document.getElementById("nameField").value;
            var email = document.getElementById("email").value;
            var contact = document.getElementById("contact").value;

            if (name.trim() == "") {
                alert("Please enter your name.");
                return false;
            }

            if (email.trim() == "") {
                alert("Please enter your email address.");
                return false;
            } else if (!isValidEmail(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (contact.trim() == "") {
                alert("Please enter your contact number.");
                return false;
            } else if (!isValidContact(contact)) {
                alert("Please enter a valid contact number.");
                return false;
            }

            return true;
        }

        function isValidEmail(email) {
            var re = /\S+@\S+\.\S+/;
            return re.test(email);
        }

        function isValidContact(contact) {
            var re = /^\d{10}$/;
            return re.test(contact);
        }