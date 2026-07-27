-- Exercise 3: Stored Procedures

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE GetEmployeeBonus (
    p_salary IN NUMBER
)
IS
    v_bonus NUMBER;
BEGIN

    v_bonus := p_salary * 0.10;

    DBMS_OUTPUT.PUT_LINE(
        'Bonus Amount = ' || v_bonus
    );

END;
/