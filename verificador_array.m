function position = verificador_array(chain,vector_chain)
  #This function checks whether a character array is in a list of character arrays.
  #
  #-- POSITION = verificador_array(CHAIN,VECTOR_CHAIN)
  #
  #    ========== Input arguments =============
  #   * CHAIN is the character array.
  #   * VECTOR_CHAIN is the list that contains a finite number of character arrays
  #
  #    ========== Output arguments ============
  #   * POSITION is the position of the character array in the list. If POSITION = 0
  #   then the character array is not in the list.
  #
  #    ============== Example =================
  #   CHAIN1 = {'aabbn','aad','erftg','aaccddeeff'}
  #
  #   CHAIN1 =
  #     {
  #     [1,1] = aabbn
  #     [1,2] = aad
  #     [1,3] = erftg
  #     [1,4] = aaccddeeff
  #     }
  #   POSITION = verificador_array('erftg',CHAIN1). The output will be 3
  #   POSITION = verificador_array('etgbvc',CHAIN1). The output will be 0 since the character array
  #   is not in the list.

  # AJS 2024 Ver 1.0

  #Checking the input parameters
  if iscell(vector_chain)==0
    error('the second parameter must be a list of character arrays')
  endif
  if ischar(chain)==0
    error('the first parameter must be a character array')
  endif

  #Checking whether the character array is in the list
  limite = length(vector_chain);
  position = 0;
  if limit > 0
    for i = 1:limit
      if strcmp(chain,vector_chain{i})==1
        if position(1)==0
          position = i;
        else
          position(length(position)+1)=i;
        endif
      endif
    endfor
  endif
endfunction
