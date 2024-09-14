function cadena = generador_uuid
  #This funcion generates an universally unique identifier
  #
  #--UUID = generador_uuid
  #
  #    ========== Output arguments ============
  #   * UUID is an universally unique identifier of 32 hexadecimal digits
  #
  #    ============== Example =================
  #   NUMBER = generador_uuid will return an identifier. For example: 250e8500-e29b-41d4-a716-446355447000

  # AJS 2024 Ver 1.0

  cadena = "";
  hexadecimal = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
  for i = 1:36
    if (i>8)&&(i<25)
      if rem(i,5)==4
        cadena = [cadena,"-"];
      else
        N = randi([1 16]);
        cadena = [cadena,hexadecimal{N}];
      endif
    else
      N = randi([1 16]);
      cadena = [cadena,hexadecimal{N}];
    endif
  endfor
endfunction
