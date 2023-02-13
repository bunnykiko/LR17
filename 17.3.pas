type lList = record
     count: integer;
     l: array [1..100] of integer;
     end;
     
procedure createList(var list: tlist);
begin
  list.count:= 0;
end;

procedure addlist(n: integer; var list: tlist);
begin
  inc(list.count);
  list.l[list.count]:= n;
end;

procedure outlist(i: integer; list: tlist);
begin
  write(list.l[i]:3);
end;

var
  l: tlist;
  i: integer;
begin
  createList(l);
  randomize;
  for i:= 1 to 10 do
    addlist(random(100), l);
  for i:= 1 to 10 do
    outlist(i, l);
  writeln;
  for i:= 1 to 10 do
    if not odd(l.l[i]) then
      outlist(i, l);
   writeln;
end.