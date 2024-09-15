function new_matrix = sort_matrix(matrix1,vector_id,number)
  #This function arranges the rows or columns of a matrix with respect to a
  #specific row or column
  #
  #---NEW_MATRIX = ordenar(MATRIX1,VECTOR_ID,NUMBER)
  #
  #    ========== Input arguments =============
  #   * MATRIX1 is the input matrix
  #   * VECTOR_ID is a parameter that takes only two values: 1 or 2.
  #     if the parameter is equal to 1, the funcions arranges the columns of the
  #     matrix following the ascending order of the entries of an specific row of the matrix.
  #     if the parameter is equal to 2, the funcions arranges the rows of the
  #     matrix following the ascending order of the entries of an specific column of the matrix.
  #   * NUMBER is the number of the specific row or column.
  #
  #    ========== Output arguments ============
  #   * NEW_MATRIX is the arranged matrix.
  #
  #    ============== Examples =================
  #   We have a 3x3 matrix called 'a':
  #   a = [-1 3 5;2 7 9;0 3 -5]
  #
  #   a =
  #
  #     1   2   3
  #     5  -7   8
  #     2  -4   9
  #
  #   NEW_MATRIX = ordenar(a,2,2) arranges the rows of the matrix with respect to the second column.
  #
  #   NEW_MATRIX =
  #
  #    -1   3   5
  #     0   3  -5
  #     2   7   9

  # AJS 2024 Ver 1.0

  #checking the input parameters
  dimension = size(matrix1);
  if sum(dimension)<=2
    error('The dimension of the matrix must be larger than 1 x 1')
  endif
  if (vector_id!=1)&&(vector_id!=2)
    error('Second parameter must be 1 or 2')
  endif
  if floor(number)!=number
      error('Third parameter must be integer')
  endif
  if number < 1
    error('Third parameter must be positive')
  endif
  if vector_id==1
    if number > dimension(1)
      error('Third parameter cannot be larger than number of rows')
    endif
  endif
  if vector_id==2
    if number > dimension(2)
      error('Third parameter cannot be larger than number of columns')
    endif
  endif

  #Sorting the rows or columns
  if vector_id==1
    matriz_columna1 = sort(matrix1(number,:));
    new_matrix = zeros(dimension(1),1);
    for i = 1:dimension(2)
      fila = min(find(matrix1(number,:)==matriz_columna1(1)));
      dim = size(new_matrix);
      new_matrix(:,dim(2)+1)=matrix1(:,fila);
      matriz_columna1(1) = [];
      matrix1(:,fila)=[];
    endfor
    new_matrix(:,1) = [];
  else
    matriz_columna1 = sort(matrix1(:,number));
    new_matrix = zeros(1,dimension(2));
    for i = 1:dimension(1)
      fila = min(find(matrix1(:,number)==matriz_columna1(1)));
      dim = size(new_matrix);
      new_matrix(dim(1)+1,:)=matrix1(fila,:);
      matriz_columna1(1) = [];
      matrix1(fila,:)=[];
    endfor
    new_matrix(1,:) = [];
  endif
endfunction
