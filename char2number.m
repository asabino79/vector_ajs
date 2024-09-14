function number = char2number(input_char)
  #This function converts any character array of numbers into a double
  #
  #-- NUMBER = char2number(INPUT_CHAR)
  #
  #    ========== Input arguments =============
  #   * INPUT_CHAR is the character array that contains only number and at most one dot
  #
  #    ========== Output arguments ============
  #   * NUMBER is the output_precision that represents the character array in double clase
  #
  #    ============== Examples =================
  #   NUMBER = char2number('234.58') will return the double output 234.58
  #   NUMBER = char2number('22b4.58') will return an error since the character array must only
  #   content digits and at most one dot.

  # AJS 2024 Ver 1.0

  #Verifying whether the input is a character array
  if ischar(input_char)==0
    error('The input must be a character array')
  endif

  #Convert the character array into double
  counter = [-1 0];
  number = 0;
  dim = length(input_char);
  for i = 1:dim
    aux = double(input_char(dim-i+1));
    counter(1) = counter(1)+1;
    if (aux <48)||(aux >57)
      if (aux!=46)||(counter(2)==1)
        error('The character array must contain only numbers and one dot') #Verifying whether the character is a number
      else
        number = number/(10^(i-1));
        counter(2) = 1;
        counter(1) = -1;
      endif
    else
      number = number+(aux-48)*10^counter(1);
    endif
  endfor
endfunction
