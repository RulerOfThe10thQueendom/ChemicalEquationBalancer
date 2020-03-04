function [elements, subscripts] = breakDownCompound (compound)

pat = '\d+';
elements = regexp(compound, pat, 'split');

pat = '[qwertyuioplkjhgfdsazxcvbnmQWERTYUIOPLKJHGFDSAZXCVBNM]+';
presubscripts = regexp(compound, pat, 'split');

size1 = length(elements);
size2 = length(presubscripts);

x=1;
while (x <= size1)
   if strcmp(elements(x),'') == 1
       elements(x) = [];
       x = x-1;
       size1 = size1 - 1;
   end
   x=x+1;
end

x=1;
while (x <= size2)
   if strcmp(presubscripts(x),'') == 1
       presubscripts(x) = [];
       x = x-1;
       size2 = size2 - 1;
   end
   x=x+1;
end

x=1;
while x <= size2
   temp = presubscripts{x};
   temp = str2double(temp);
   subscripts(x) = temp;
   x=x+1;
end

end