	CREATE FUNCTION rot13(stringIn VARCHAR(500)) RETURNS VARCHAR(500)
	BEGIN
	  DECLARE v1 INT DEFAULT 1;
	  DECLARE stringOut VARCHAR(200) DEFAULT '';
	  DECLARE str VARCHAR(1) DEFAULT '';

	  WHILE v1 <= LENGTH(stringIn) DO
	    SET str = SUBSTR(stringIn,v1,1);
	    CASE BINARY str
	      WHEN 'A' THEN SET stringOut = CONCAT(stringOut , 'N');
	      WHEN 'a' THEN SET stringOut = CONCAT(stringOut , 'n');
	      WHEN 'B' THEN SET stringOut = CONCAT(stringOut , 'O');
	      WHEN 'b' THEN SET stringOut = CONCAT(stringOut , 'o');
	      WHEN 'C' THEN SET stringOut = CONCAT(stringOut , 'P');
	      WHEN 'c' THEN SET stringOut = CONCAT(stringOut , 'p');
	      WHEN 'D' THEN SET stringOut = CONCAT(stringOut , 'Q');
	      WHEN 'd' THEN SET stringOut = CONCAT(stringOut , 'q');
	      WHEN 'E' THEN SET stringOut = CONCAT(stringOut , 'R');
	      WHEN 'e' THEN SET stringOut = CONCAT(stringOut , 'r');
	      WHEN 'F' THEN SET stringOut = CONCAT(stringOut , 'S');
	      WHEN 'f' THEN SET stringOut = CONCAT(stringOut , 's');
	      WHEN 'G' THEN SET stringOut = CONCAT(stringOut , 'T');
	      WHEN 'g' THEN SET stringOut = CONCAT(stringOut , 't');
	      WHEN 'H' THEN SET stringOut = CONCAT(stringOut , 'U');
	      WHEN 'h' THEN SET stringOut = CONCAT(stringOut , 'u');
	      WHEN 'I' THEN SET stringOut = CONCAT(stringOut , 'V');
	      WHEN 'i' THEN SET stringOut = CONCAT(stringOut , 'v');
	      WHEN 'J' THEN SET stringOut = CONCAT(stringOut , 'W');
	      WHEN 'j' THEN SET stringOut = CONCAT(stringOut , 'w');
	      WHEN 'K' THEN SET stringOut = CONCAT(stringOut , 'X');
	      WHEN 'k' THEN SET stringOut = CONCAT(stringOut , 'x');
	      WHEN 'L' THEN SET stringOut = CONCAT(stringOut , 'Y');
	      WHEN 'l' THEN SET stringOut = CONCAT(stringOut , 'y');
	      WHEN 'M' THEN SET stringOut = CONCAT(stringOut , 'Z');
	      WHEN 'm' THEN SET stringOut = CONCAT(stringOut , 'z');
	      WHEN 'N' THEN SET stringOut = CONCAT(stringOut , 'A');
	      WHEN 'n' THEN SET stringOut = CONCAT(stringOut , 'a');
	      WHEN 'O' THEN SET stringOut = CONCAT(stringOut , 'B');
	      WHEN 'o' THEN SET stringOut = CONCAT(stringOut , 'b');
	      WHEN 'P' THEN SET stringOut = CONCAT(stringOut , 'C');
	      WHEN 'p' THEN SET stringOut = CONCAT(stringOut , 'c');
	      WHEN 'Q' THEN SET stringOut = CONCAT(stringOut , 'D');
	      WHEN 'q' THEN SET stringOut = CONCAT(stringOut , 'd');
	      WHEN 'R' THEN SET stringOut = CONCAT(stringOut , 'E');
	      WHEN 'r' THEN SET stringOut = CONCAT(stringOut , 'e');
	      WHEN 'S' THEN SET stringOut = CONCAT(stringOut , 'F');
	      WHEN 's' THEN SET stringOut = CONCAT(stringOut , 'f');
	      WHEN 'T' THEN SET stringOut = CONCAT(stringOut , 'G');
	      WHEN 't' THEN SET stringOut = CONCAT(stringOut , 'g');
	      WHEN 'U' THEN SET stringOut = CONCAT(stringOut , 'H');
	      WHEN 'u' THEN SET stringOut = CONCAT(stringOut , 'h');
	      WHEN 'V' THEN SET stringOut = CONCAT(stringOut , 'I');
	      WHEN 'v' THEN SET stringOut = CONCAT(stringOut , 'i');
	      WHEN 'W' THEN SET stringOut = CONCAT(stringOut , 'J');
	      WHEN 'w' THEN SET stringOut = CONCAT(stringOut , 'j');
	      WHEN 'X' THEN SET stringOut = CONCAT(stringOut , 'K');
	      WHEN 'x' THEN SET stringOut = CONCAT(stringOut , 'k');
	      WHEN 'Y' THEN SET stringOut = CONCAT(stringOut , 'L');
	      WHEN 'y' THEN SET stringOut = CONCAT(stringOut , 'l');
	      WHEN 'Z' THEN SET stringOut = CONCAT(stringOut , 'M');
	      WHEN 'z' THEN SET stringOut = CONCAT(stringOut , 'm');
	    END CASE;
	    SET v1 = v1 + 1;
	  END WHILE;

	  RETURN stringOut;
	END;