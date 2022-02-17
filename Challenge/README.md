# Pewlett-Hackard-Analysis
**Pewlett-Hackard-Analysis with SQL**

**Note:**
I worked with Aman Gill for this challenge. We followed pair-programming methodology and the code and readme were co-created.

## **Overview of the analysis:**
Pewlett-Hackard is large employer, employing tens of thousands of people. Many of the employees are starting to get to the age where they will be retiring, putting Pewlett-Hackard in a position to fill numerous positions. The purpose of this analysis is to determine how many employees will be retiring soon, and to identify how many employees could be eligible to participate in a mentorship program to help mentor new hires.
We will be gathering the required data by querying a database using SQL. Each of the following two questions will be broken down into smaller sub questions as shown below:

1. Determine how many employees are in a position to retire and their titles.
2. Determine the employees eligible for the Mentorship Program.

## **Analysis**

1. Determine how many employees are in a position to retire and their titles.

In order to determine the number of employees that are ready to retire and their titles, we will be following a step by step process to create followinf required summaries:

    a. Create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
    
![Retirement Data](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/61c95ed8cd09c32d92f7382b02bc88075345d82e/Challenge/Resources/Retirement_Titles.png)

    b. Because some employees may have multiple titles in the database—for example, due to promotions— we need to create a table that contains the most recent title of each employee.
    
![Retirees - Clean](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/61c95ed8cd09c32d92f7382b02bc88075345d82e/Challenge/Resources/Emp_Retirement_Titles_Clean.png)

    c. Finally, create a final table that has the number of retirement-age employees grouped by most recent job title.
    
![Retiree](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/61c95ed8cd09c32d92f7382b02bc88075345d82e/Challenge/Resources/Retiring_Title_Count.png)

2. Determine the employees eligible for the Mentorship Program.
    a. Create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
    ![Mentorship](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/61c95ed8cd09c32d92f7382b02bc88075345d82e/Challenge/Resources/Mentor.png)

## **Results**
The first important metric to present is to determine how many employees are in a position to retire? 

![retires by position](https://github.com/pnimma01/PyBer_Analysis/blob/b66012ac31ed6c5dbc9ff775542ca501bb5a81f9/Challenge/Resources/Average%20Fare%20Group%20By.png)

The second important metric is to identify the employees for mentorship program. Following summary shows the mentorship summary data:

![retires by position](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/1c041147ece5853d35d9f614719d071eff9a0837/Challenge/Resources/Mentor.png)k87ujmu87ju788jm7ujnh

## **Summary**
***How many roles will need to be filled as the "silver tsunami" begins to make an impact?***

Following summary provides a snapshot of how many roles need to be filles as the "silver tsunami" begins:
 
 ![retires by position](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/1c041147ece5853d35d9f614719d071eff9a0837/Challenge/Resources/Retiring_Title_Count.png)

About 50K senior staff will be retiring. In total, the number of employees retiring is ~70K


***Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?***

Following summarry clearly shows us that there are not enough employees eligible for mentorship to replace potential retirees:

![Mentorship Summary](https://github.com/pnimma01/Pewlett-Hackard-Analysis/blob/f55f314257f38864974faf817fcaec7410ccb7d5/Challenge/Resources/Mentorship_by_Title.png)