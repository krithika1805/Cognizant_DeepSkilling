-- Exercise 1: Control Structures

SET SERVEROUTPUT ON;

DECLARE
    v_marks NUMBER := 85;
BEGIN

    IF v_marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A');

    ELSIF v_marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: B');

    ELSIF v_marks >= 50 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: Fail');
    END IF;

END;
/