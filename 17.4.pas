type node = record 
     value: integer; 
     next: ^node; 
     end; 
     list = ^node; 
var head: list; 
    min, max: integer; 
 
procedure createlist(var head: list); 
var inputvalue: integer; 
    lastnode, newnode: list; 
begin 
  head:= nil; 
  lastnode:= nil; 
  write('Введите числа: (Введите 0, чтобы остановиться): '); 
  read(inputvalue); 
    while (inputvalue <> 0) do 
      begin 
        new(newnode); 
        newnode^.value:= inputvalue; 
        newnode^.next:= nil; 
        if (head = nil) then 
          begin 
            head:= newnode; 
          end 
          else 
            begin
              lastnode^.next:= newnode; 
            end; 
         lastnode:= newnode; 
         read(inputvalue); 
       end; 
end; 
 
procedure findminmax(head: list; var minvalue: integer; var maxvalue: integer); 
var current: list; 
begin 
  current:= head; 
  min:= current^.value; 
  max:= current^.value; 
  current:= current^.next; 
  while (current <> nil) do 
    begin 
      if (current^.value < min) then 
        begin 
          min:= current^.value; 
        end; 
        if (current^.value > max) then 
          begin 
            max:= current^.value; 
          end; 
      current:= current^.next; 
    end; 
end; 
begin 
  createList(head); 
  findMinMax(head, min, max); 
  writeln('Минимум: ', min); 
  writeln('Максимум: ', max); 
end.