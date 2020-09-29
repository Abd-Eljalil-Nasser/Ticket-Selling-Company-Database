# Ticket Selling Company Database
## Requirements 
- phpMyAdmin
## Description
- A ticket selling company where users can make an account and order tickets for various events. The system consists of customers who have   name, SSN, address, phone number, and birth date. Customers may buy tickets which have Ticket-ID, price, seat number, assignment cost-ID.   Customers would receive their tickets from a branch; branches have branch-ID, phone, location, opening_hours. 
- Customers would choose a payment method when buying a ticket. 
- Customers may receive a promo code; promo codes have promo-ID, promo number   and percentage.
- Tickets must belong to an event which has event-ID and time. 
- Events could be a match, cinema, concert or theater. 
- Matches have teams and sport name.
- A cinema has movie name.
- A concert has a performer name.
- The theater has play name. 
- Events must be provided by an owner who has owner-ID, name, email, address, SSN, phone. 
- Events may have sponsors; a sponsor has sponsor-ID, name, location, SSN,   email and phone.

## Assumptions:
- To sign up, every customer has to enter some information such as name, SSN, address, phone number, and birth date. They will get an ID,     this ID is unique. 
- A customer may buy one or more tickets. 
- Every sold ticket has a cost and should be assigned to a valid customer ID. 
- Every ticket should belong to a specific event. 
- An event has a specific time and place which it will be held.
- Every sports event has tournament name, first opponent and second opponent.
- Every event is owned by an event owner.
- An event may have some sponsors.
- An event may have a promo code which is a unique number that a customer may type to have a special discount for certain event.
- A user may receive a promo code.
- Every promo code is assigned to one user.
## ERD 
![](https://github.com/Abd-Eljalil-Nasser/Ticket-Selling-Company-Database-/blob/master/ERD.jpg)
![](https://github.com/Abd-Eljalil-Nasser/Ticket-Selling-Company-Database-/blob/master/ERD2.jpg)
