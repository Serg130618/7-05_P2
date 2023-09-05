Feature: Booking a movie-1 ticket for tomorrow

    Scenario: The user must select a seat and order a ticket
        Given user is on "/index.php" page
        When user select 2-th day and movie
        And select and book 9 row and 3 seat
        Then user received confirmation and qr-code

    Scenario: The user wants to check if the seat is booked
        Given user is on "/index.php" page
        When user select 2-th day and movie
        And select and book 8 row and 6 seat
        And user is on "/index.php" page
        When user select 2-th day and movie
        And sees that 8 row and 6 seat is taken trying select them
        Then Book button is not active
        
    Scenario: user wants to order three tickets for Movie-1
        Given user is on "/index.php" page
        When user select 2-th day and movie
        And select and book 8 row and 6,7,8 seats
        Then user received confirmation and qr-code