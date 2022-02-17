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

![Average Fare by City Type](https://github.com/pnimma01/PyBer_Analysis/blob/b66012ac31ed6c5dbc9ff775542ca501bb5a81f9/Challenge/Resources/Average%20Fare%20Group%20By.png)

mentor_elig

## **Summary**
How many roles will need to be filled as the "silver tsunami" begins to make an impact?

If we take a look at the Retirement Title Count table, it clearly shows how many potential employees will be retiring from each position. This means, at some point in the near future, that many roles will need to be filled by new hires:

retirement_count_titles

One problem with these numbers, though, is it includes both current and non-current employees. This fact makes for highly inaccurate forecasting. If we modify the table, and query only active employees who have all the same criteria, we get a more accurate measure of the number of employees about to retire:

current_retirement_count

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

This answer requires a new query, one to compile the count of all the eligible Mentors into a table grouped by title, to make an easy comparison to those employees who are retiring and will need their spots filled:

eligible_mentors

Comparing this table to the more accurate retirement table, you can see that in a worst case scenario, where all of the retirement eligible employees quit at the same time, the eligible mentors could take on new hires at around a 2:1 to 3:1 ratio for senior staff and senior engineers. The ratios then jump quite drastically to around 14:1 for engineers, 13:1 for staff, 20:1 for technique leaders, and finally 8:1 for assistant engineers. This, however, is highly unlikely to occur, and with the given mentors, Pewlett-Hackard should have more than enough mentors to guide any new hires.