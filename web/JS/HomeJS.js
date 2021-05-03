/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 const keys = [
                {keyCode: 'AltLeft', isTriggered: false},
                {keyCode: 'ControlLeft', isTriggered: false},
            ];

            window.addEventListener('keydown', (e) => {
                keys.forEach((obj) => {
                    if (obj.keyCode === e.code) {
                        obj.isTriggered = true;
                    }
                });

                const shortcutTriggered = keys.filter((obj) => obj.isTriggered).length === keys.length;

                if (shortcutTriggered) {
                    searchFocus.focus();
                }
            });

            window.addEventListener('keyup', (e) => {
                keys.forEach((obj) => {
                    if (obj.keyCode === e.code) {
                        obj.isTriggered = false;
                    }
                });
            });

         
            //// When the user clicks on the button, scroll to the top of the document

            $(document).ready(function () {
                $(window).scroll(function () {
                    if ($(document).scrollTop() > 50) {
                        $(".header-contact").addClass("scrol");
                    } else {
                        $(".header-contact").removeClass("scrol");
                    }
                });
            });

            function search() {
                var result = document.getElementById("searchInput").value;
                var url = "searchProduct?search="+result;
                window.location.href = url;
                console.log(url);

            }


