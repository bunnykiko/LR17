var text: string; 
    words: tstringlist; 
    i, count: integer; 
begin 
  text:= 'образец для создания буквенно-частотного словаря'; 
  words:= tstringlist.create; 
  try 
    extractstrings([' '], [], pchar(text), words); 
    words.sort; 
    count := 0; 
  for i := 0 to words.count - 1 do 
    begin 
      if (i = 0) or (words[i] <> words[i - 1]) then 
        inc(count); 
    end; 
    writeln('количество разных слов: ', count); 
  finally 
    words.free; 
  end; 
end.