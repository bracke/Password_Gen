-- Password_Generation: A package to contain the common logic used by Password_Gen and pwdgen
-- Copyright (C) 2017 by PragmAda Software Engineering.  All rights reserved.
-- **************************************************************************
--
-- Generation of secure passwords from a domain, master password, and symbol
--
-- V1.0  2017 Nov 15     Move password-generation logic into a package
--
package Password_Generation is
   subtype Length_Value is Integer range 8 .. 16;

   subtype Symbol_Range is Natural range 0 .. 9;

   type Symbol_List is array (Symbol_Range) of Character;

   Symbol_Set : constant Symbol_List := "!@#$%^&*/?";

   No_Symbol   : constant String := "None";
   Auto_Symbol : constant String := "Auto";

   function Generate (Domain : String; Master : String; Length : Length_Value; Symbol : String; Hash_Symbol : Boolean := True)
   return String;
   -- Generates a password of length Length from Domain, Master, and Symbol
   -- If Symbol = No_Symbol, the password will have no symbol in it
   -- If Symbol = Auto_Symbol, the password will have a symbol selected from Symbol_Set
   -- If Symbol is anything else, it is used as the symbol
end Password_Generation;
