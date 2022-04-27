# Introduction

This is a basic aplicattion desinged and programmed with HTML, CSS, Javacript, BOOTSTRAP in the front-end and in the back-end we have NodeJS, this app is to the Alcadia Medellin
the main idea of the project was create an app that will allow to give entry to visitors to two different places that they called CDS and TELECENTROS in those places visitors can assist to a different activities
that procces to give entry to visitors it was done manually, each visitor had to full a template field by field triggering a long row among visitors, so the app get that result but reducing those entries between each visitors considerably.

# Credentials

In order to prove the app you must get the next field:
* Cedula: 1234567
* Password: 0000

# Technical Aspects

basically exists three type of users into the app, first one we have CDS then we have TELECENTROS and finally we have ADMINISTRATORS, admins are the only ones that can create users,
in order to create users admins first of all have to create a CDS, TELECENTRO or Admistrador profile due to in order to assing an user it's neccesary those profiles, that it will show up at user view
with its respective names.

![](https://github.com/domdv5/Alcadia/blob/main/src/public/img/cds.PNG)
![](https://github.com/domdv5/Alcadia/blob/main/src/public/img/users.PNG)


Each CDS and TELECENTRO can access and manipulate to its own information related to the multiple stored data in its respectives tables except Admins that can manage all global data 
independently about profile and clearly with those data it's posible to do the basic actions (CRUD).

Its important to point out how many entities are anf how they work: 

1. ***Visitors(Visitantes)***: This entitie is going to store all visitors that have to be register by CDS or TELECENTRO (except admins) **BEFORE** get into a CDS or TELECENTRO.
2. ***Acitivities(Actividades)***: This entitie is going to store all activities that are going to be taken or assited by visitors and these are created for each CDS, TELECENTRO
(admins can also create activities and this has sense due to customer requirements, so each CDS and TELECENTRO it will have and create its own activities.
3. ***VisitorsEntry(Ingreso Visitantes)***: This entitie is going to store all entries that visitors do in a CDS or TELECENTRO but **BEFORE** to give an entry it has to exisit
at least one activitie and one visitor otherwise it has no sense, since one visitor must assist to one activitie that must be given by CDS or TELECENTRO, so these entities are related each other.
4. ***Cds***:  This entitie is going to store all places that visitors are going to visit and get in to take the activities CDS and TELECENTROS (excepts admins) and subsequently these places
are going to have the possibility to be create as a users at users view.
5. ***Users(usuarios)*** :  This entitie is going to store all users that are going to be create with the info of cds entitie.

### ***For the rest of the things, just get in to it and find it out!***  :eyes: :computer:



