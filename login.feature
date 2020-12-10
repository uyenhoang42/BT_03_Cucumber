Feature: Login to The Internet page
    Verify that the login screen contains elements such as Username, Password, Sign-in button
    Scenario: Verify that User is able to Login with Valid Credentials
        When  Enter "tomsmith" for the username and "SuperSecretPassword!" for the password
        Then  The message "<message>" and "Logout" button is displayed

    Scenario: Verify that User is not able to Login 
        When  with invalid "<username>" for the username or invalid "<password>" or both
        Then  The message "<message>" is displayed

    Examples: 
        | username  | password              | message                         |
        | tomsmith  | SuperSecretPassword!  | You logged into a secure area!  |
        | uyen42    | SuperSecretPassword!  | Your username is invalid!       |
        | tomsmith  | 2020                  | Your username is invalid!       |
        | iTMS      | Coaching              | Your username is invalid!       |