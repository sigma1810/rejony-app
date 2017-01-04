INSERT INTO `cantiga_languages` VALUES(1, 'English', 'en');
INSERT INTO `cantiga_languages` VALUES(2, 'Polski', 'pl');

INSERT INTO `cantiga_mail` VALUES(1, 'cantiga:user-registration', 'en', '[Cantiga] New account created', 1450001229, '<html>\r\n<body>\r\n <p>Welcome to Cantiga! You have created a new account in the system:</p>\r\n <ul>\r\n  <li><strong>Your login:</strong> {{ login }}</li>\r\n  <li><strong>Your name:</strong> {{ name }}</li>\r\n </ul>\r\n<p>Before you can use the system, you must activate the account.</p>\r\n <p><a href="{{ path(''cantiga_auth_activate'', {id: id, provisionKey: key}) }}">Click here to activate the account</a></p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(2, 'cantiga:password-recovery', 'en', '[Cantiga] Password recovery request', 1450001417, '<html>\r\n<body>\r\n <p>We have received a request to recover a password for your account in Cantiga. If the request has been sent by you, please follow the instructions to reset the password. Otherwise, <strong>please ignore this message</strong>.</p>\r\n <ul>\r\n  <li><strong>Your login:</strong> {{ login }}</li>\r\n  <li><strong>Request from IP:</strong> {{ ip }}</li>\r\n  <li><strong>Request time:</strong> {{ format_time(TimeFormatter.FORMAT_LONG, time) }}</li>\r\n </ul>\r\n <p><a href="{{ path(''cantiga_auth_recovery_complete'', {id: id, provisionKey: key}) }}">Click here to set the new password for your account</a></p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(3, 'cantiga:password-recovery-completed', 'en', '[Cantiga] Password recovery successful', 1450001574, '<html>\r\n<body>\r\n <p>The password recovery for your account <strong>{{ login }}</strong> in Cantiga has been completed. <a href="{{path(''cantiga_auth_login'') }}">You can now login with your new password</a></p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(4, 'cantiga:credential-change', 'en', '[Cantiga] Credential changes', 1450001670, '<html>\r\n<body>\r\n <p>You have requested to change your e-mail or password to your account <strong>{{ login }}</strong> in Cantiga. To confirm the change and activate the new credentials, please click the following link:</p>\r\n <p><a href="{{ path(''user_profile_confirm_credential_change'', {id: id, provisionKey: key}) }}">Confirm credential change</a></p>\r\n\r\n <p>If you have not requested any change, please ignore this message, as it will expire in a short time. However, this means that someone else has an access to your account.</p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(5, 'cantiga:invitation-member', 'en', '[Cantiga] Invitation to join', 0, '<html>\r\n  <body>\r\n   <h2>Hello, {{ user.name }}</h2>\r\n  <p>{{ inviter.name }} has invited you to join the {{ invitation.resourceType~''Nominative: 0'' | trans([invitation.resourceName]) }} in Cantiga. Because you have already an account in the system, you can just login to your profile and click the <strong>Invitations</strong> option to confirm it.</p>\r\n  </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(6, 'cantiga:invitation-anonymous', 'en', '[Cantiga] Invitation to join', 0, '<html>\r\n  <body>\r\n   <h2>Hello!</h2>\r\n  <p>{{ inviter.name }} has invited you to join the {{ invitation.resourceType~''Nominative: 0'' | trans([invitation.resourceName]) }} in Cantiga. To join, you must first <a href="{{ path(''cantiga_auth_register'', { ''fromMail'': invitation.email, ''_locale'': ''en''}) }}">create an account</a> using the e-mail address where you have received the invitation. Once registered, please follow to the <strong>Invitations</strong> page and confirm it.</p>\r\n  <p>If you wish to register an account under a different e-mail address (or you DO HAVE an account with a different e-mail), you can still accept this invitation. To do so, please visit the <strong>Invitations</strong> page and in the option <strong>Find invitation</strong>, enter the following invitation code:</p>\r\n <p><strong>{{ invitation.assignmentKey }}</strong></p>\r\n <p>The invitation will be added to your account and you will be able to confirm it.</p>\r\n  </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(7, 'cantiga:area-request:verification', 'en', '[Cantiga] Area verification started', 0, '<html>\r\n <body>\r\n   <p>We have started the verification of your request to create a new area "{{ request.name }}" in project {{ request.project.name }}. You can follow the status of your request in Cantiga, after logging in. Please note that there is a box called "Feedback", where the verifier can ask you some questions. Please check it from time to time and answer them. It will help us in the verification process. You will be informed via e-mail whether your request has been approved or revoked.</p>\r\n <p>This message has been generated automatically. Please do not answer it.</p>\r\n </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(8, 'cantiga:area-request:revoked', 'en', '[Cantiga] Area request revoked', 0, '<html>\r\n <body>\r\n   <p>Your request for creating the area "{{ request.name }}" in project {{ request.project.name }} has been revoked. The detailed information can be found on the feedback page of your request.</p>\r\n\r\n<p>This message has been generated automatically. Please do not answer it.</p>\r\n </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(9, 'cantiga:area-request:approved', 'en', '[Cantiga] Area request approved', 0, '<html>\r\n <body>\r\n   <p>Thank you, your request for creating an area "{{ request.name }}" in project {{ request.project.name }} has been approved. Please visit Cantiga to manage your area. You can find it by clicking on the field with two arrows on the top bar.</p>\r\n\r\n <p>What''s next?</p>\r\n <ol>\r\n   <li>invite other members of your team to create an account an join the area,</li>\r\n   <li>fill in the area profile,</li>\r\n   <li>follow the instructions provided by the project coordinators.</li>\r\n </ol>\r\n\r\n  <p>This message has been generated automatically. Please do not answer it.</p>\r\n </body>\r\n</html>');

INSERT INTO `cantiga_mail` VALUES(10, 'cantiga:invitation-member', 'pl', '[Cantiga] Zaproszenie do dołączenia', 1450002416, '<html>\r\n  <body>\r\n   <h2>Witaj, {{ user.name }}</h2>\r\n  <p>{{ inviter.name }} zaprosił Cię do dołączenia do {{ (invitation.resourceType~''Genitive'') | trans }} "{{ invitation.resourceName }}" w systemie Cantiga. Ponieważ posiadasz już konto w tym systemie, wystarczy że zalogujesz się na swój profil i przejdziesz do podstrony <strong>Zaproszenia</strong>.</p>\r\n  </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(11, 'cantiga:invitation-anonymous', 'pl', '[Cantiga] Zaproszenie do dołączenia', 1450002434, '<html>\r\n  <body>\r\n   <h2>Witaj!</h2>\r\n  <p>{{ inviter.name }} zaprosił Cię do dołączenia do {{ (invitation.resourceType~''Genitive'') | trans }} "{{ invitation.resourceName }}" w systemie Cantiga.  Aby dołączyć, <a href="{{ path(''cantiga_auth_register'', { ''fromMail'': invitation.email, ''_locale'': ''pl''}) }}">zarejestruj się</a> przy pomocy tego samego adresu e-mail, na który otrzymałeś zaproszenie, a następnie po pierwszym zalogowaniu przejdź do podstrony <strong>Zaproszenia</strong>.</p>\r\n  <p>Jeśli chciałbyś założyć konto pod innym adresem e-mail, wciąż możesz skorzystać z tego zaproszenia. Aby to zrobić, po założeniu konta wejdź w zakładkę <strong>Zaproszenia</strong>, wybierz opcję <strong>Znajdź zaproszenie</strong> i podaj następujący kod tego zaproszenia:</p>\r\n <p><strong>{{ invitation.assignmentKey }}</strong></p>\r\n  </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(12, 'cantiga:user-registration', 'pl', '[Cantiga] Założenie nowego konta', 1450001335, '<html>\r\n<body>\r\n <p>Witaj w Cantiga. Założyłeś właśnie nowe konto w naszym systemie:</p>\r\n <ul>\r\n  <li><strong>Twój login:</strong> {{ login }}</li>\r\n  <li><strong>Twoje imię i nazwisko:</strong> {{ name }}</li>\r\n </ul>\r\n<p>Zanim zaczniesz używać systemu, musisz aktywować swoje konto.</p>\r\n <p><a href="{{ path(''cantiga_auth_activate'', {id: id, provisionKey: key, ''_locale'': ''pl'' }) }}">Kliknij tutaj, aby aktywować konto.</a></p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(13, 'cantiga:area-request:verification', 'pl', '[Cantiga] Weryfikacja zgłoszenia rejonu rozpoczęta', 1450002219, '<html>\r\n <body>\r\n   <p>Rozpoczęła się weryfikacja Twojego zgłoszenia rejonu "{{ request.name }}" w projekcie {{ request.project.name }}. Stan Twojego zgłoszenia możesz na bieżąco śledzić w systemie po zalogowaniu się, zaś o przyjęciu bądź odrzuceniu zostaniesz dodatkowo powiadomiony e-mailem. W podglądzie zgłoszenia w systemie znajduje się okno "Informacja zwrotna", w którym osoba weryfikująca może zamieścić dla Ciebie dodatkowe pytania - zaglądaj tam od czasu do czasu oraz udziel wszystkich potrzebnych informacji. Pomoże to w weryfikacji zgłoszenia.</p>\r\n\r\n<p>Ta wiadomość została wygenerowana automatycznie. Prosimy na nią nie odpowiadać.</p>\r\n </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(14, 'cantiga:area-request:revoked', 'pl', '[Cantiga] Zgłoszenie rejonu zostało odrzucone', 1450002452, '<html>\r\n <body>\r\n   <p>Twoje zgłoszenie rejonu "{{ request.name }}" w projekcie {{ request.project.name }} zostało odrzucone. Szczegółowe informacje znajdziesz w podglądzie Twojego zgłoszenia w systemie w oknie "Informacja zwrotna".</p>\r\n\r\n<p>Ta wiadomość została wygenerowana automatycznie. Prosimy na nią nie odpowiadać.</p>\r\n </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(15, 'cantiga:area-request:approved', 'pl', '[Cantiga] Zgłoszenie rejonu zostało przyjęte', 1450002532, '<html>\r\n <body>\r\n   <p>Dziękujemy, Twoje zgłoszenie rejonu "{{ request.name }}" w projekcie {{ request.project.name }} zostało przyjęte. Zaloguj się do systemu, aby móc zarządzać swoim rejonem. Możesz się do niego dostać, klikając na rozwijaną listę oznaczoną strzałkami na górnej belce nawigacyjnej.</p>\r\n\r\n <p>Co teraz?</p>\r\n <ol>\r\n   <li>zaproś pozostałych liderów do założenia konta w systemie i dołączenia do Twojego rejonu,</li>\r\n   <li>uzupełnij profil,</li>\r\n   <li>postępuj zgodnie z dalszymi informacjami zamieszczonymi w systemie.</li>\r\n </ol>\r\n\r\n  <p>Ta wiadomość została wygenerowana automatycznie. Prosimy na nią nie odpowiadać.</p>\r\n </body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(16, 'cantiga:password-recovery', 'pl', '[Cantiga] Odzyskiwanie hasła', 0, '<html>\r\n<body>\r\n <p>Otrzymaliśmy zgłoszenie chęci odzyskania zapomnianego hasła do Twojego konta w Cantiga. Jeśli faktycznie wystawiłeś takie zgłoszenie, prosimy postępować zgodnie z dalszymi instrukcjami w celu ustawienia nowego hasła. W przeciwnym wypadku prosimy zignorować tę wiadomość.</p>\r\n <ul>\r\n  <li><strong>Twój login:</strong> {{ login }}</li>\r\n  <li><strong>Zgłoszenie wysłane z adresu IP:</strong> {{ ip }}</li>\r\n  <li><strong>Czas przyjęcia zgłoszenia:</strong> {{ format_time(TimeFormatter.FORMAT_LONG, time) }}</li>\r\n </ul>\r\n <p><a href="{{ path(''cantiga_auth_recovery_complete'', {id: id, provisionKey: key, ''_locale'': ''pl''}) }}">Kliknij tutaj, aby ustawić nowe hasło do swojego konta</a></p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(17, 'cantiga:password-recovery-completed', 'pl', '[Cantiga] Odzyskiwanie hasła zakończone', 0, '<html>\r\n<body>\r\n <p>Odzyskiwanie hasła dla Twojego konta <strong>{{ login }}</strong> w Panelu Rejonów zostało zakończone. <a href="{{path(''cantiga_auth_login'', {''_locale'': ''pl''}) }}">Możesz teraz zalogować się z użyciem nowego hasła</a></p>\r\n</body>\r\n</html>');
INSERT INTO `cantiga_mail` VALUES(18, 'cantiga:credential-change', 'pl', '[Cantiga] Zmiana danych logowania', 0, '<html>\r\n<body>\r\n <p>Zgłosiłeś chęć zmiany swojego adresu e-mail bądź hasła do konta <strong>{{ login }}</strong> w Cantiga. Aby potwierdzić zmianę i aktywować nowe dane, prosimy kliknąć w poniższy odnośnik:</p>\r\n <p><a href="{{ path(''user_profile_confirm_credential_change'', {id: id, provisionKey: key, ''_locale'': ''pl''}) }}">Potwierdź zmianę danych</a></p>\r\n\r\n <p>Jeśli nie zmieniałeś nic, koniecznie zignoruj tę wiadomość, a wygaśnie ona w krótkim czasie. Jednakże, oznacza to że ktoś niepowołany posiada dostęp do Twojego konta!</p>\r\n</body>\r\n</html>');

INSERT INTO `cantiga_texts` VALUES(1, 'cantiga:login', NULL, 'Welcome to Cantiga', '<p>Welcome to Cantiga. Please sign in to access the system and configure it.</p>', 'en');
INSERT INTO `cantiga_texts` VALUES(2, 'cantiga:login', NULL, 'Witaj w systemie Cantiga', '<p>Witaj w systemie Cantiga. Zaloguj się, aby uzyskać dostęp do systemu i skonfigurować go.</p>', 'pl');

INSERT INTO `cantiga_users` VALUES(1, 'administrator', 'Administrator', 'c0vl2Nq/4I6gOwFbH32Qe/UadsPSG5VVaVyyh4/6duQ=', 'ffda6bdf3973428d3d5d0c6521a336cb55ab7369', 'admin@example.com', 1, 0, 1, 1, NULL, UNIX_TIMESTAMP(), 0);
INSERT INTO `cantiga_user_profiles` VALUES(1, '', 1, 'Europe/Warsaw', NULL);