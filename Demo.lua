local t=string.byte;local r=string.char;local c=string.sub;local u=table.concat;local s=math.ldexp;local D=getfenv or function()return _ENV end;local l=setmetatable;local f=select;local i=unpack;local h=tonumber;local function K(t)local e,o,d="","",{}local a=256;local n={}for l=0,a-1 do n[l]=r(l)end;local l=1;local function f()local e=h(c(t,l,l),36)l=l+1;local o=h(c(t,l,l+e-1),36)l=l+e;return o end;e=r(f())d[1]=e;while l<#t do local l=f()if n[l]then o=n[l]else o=e..c(e,1,1)end;n[a]=e..c(o,1,1)d[#d+1],e,a=o,o,a+1 end;return table.concat(d)end;local a=K('23T27423T23X27523T23N27526D26E26G26L26Y27126Z26826F26M27627526M26G26C26K23T23Y27525D27127126X25Q26K27123T25P27526927W26X26Y24Z24M24M26Z26G27224N26M26827126927026J27026Y26K26Z26I26E26F27126K28S24N28Q26C24M25D26K26D26D26626G26O28O24M25H26E26I26A28O24K25D28K24M26C26G27J24M25P26K26C26E24N26D27026G23K27521K23L23D23A24Q23L27421O24929Y24I24927421P23L25523T24I2A123T21G24P2A524P2742152AE2AD2A82AJ2AC2AP21L23T2AJ24I27521L23L2A72AN23T2AX2742B023T');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then n=n+o end l,e,o=(l-a)/2,(e-c)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function l(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function o()local c,a,o,l=t(a,e,e+3);c=n(c,137)a=n(a,137)o=n(o,137)l=n(l,137)e=e+4;return(l*16777216)+(o*65536)+(a*256)+c;end;local function d()local l=n(t(a,e,e),137);e=e+1;return l;end;local function K()local e=o();local n=o();local c=1;local o=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local l=((-1)^l(n,32));if(e==0)then if(o==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return s(l,e-1023)*(c+(o/(2^52)));end;local h=o;local function s(l)local o;if(not l)then l=h();if(l==0)then return'';end;end;o=c(a,e,e+l-1);e=e+l;local e={}for l=1,#o do e[l]=r(n(t(c(o,l,l)),137))end return u(e);end;local e=o;local function u(...)return{...},f('#',...)end local function T()local t={0,0,0,0,0,0,0,0,0};local e={};local c={};local a={t,nil,e,nil,c};for l=1,o()do e[l-1]=T();end;local e=o()local c={0,0,0,0};for o=1,e do local e=d();local l;if(e==3)then l=(d()~=0);elseif(e==2)then l=K();elseif(e==0)then l=s();end;c[o]=l;end;a[2]=c for a=1,o()do local c=n(o(),176);local o=n(o(),43);local n=l(c,1,2);local e=l(o,1,11);local e={e,l(c,3,11),nil,nil,o};if(n==0)then e[3]=l(c,12,20);e[5]=l(c,21,29);elseif(n==1)then e[3]=l(o,12,33);elseif(n==2)then e[3]=l(o,12,32)-1048575;elseif(n==3)then e[3]=l(o,12,32)-1048575;e[5]=l(c,21,29);end;t[a]=e;end;a[4]=d();return a;end;local function M(l,e,h)local o=l[1];local n=l[2];local e=l[3];local l=l[4];return function(...)local r=o;local t=n;local e=e;local n=l;local K=u local o=1;local d=-1;local u={};local a={...};local c=f('#',...)-1;local l={};local e={};for l=0,c do if(l>=n)then u[l-n]=a[l+1];else e[l]=a[l+1];end;end;local l=c-n+1 local l;local n;while true do l=r[o];n=l[1];if n<=7 then if n<=3 then if n<=1 then if n>0 then e[l[2]]();d=A;else e[l[2]]=h[t[l[3]]];end;elseif n>2 then e[l[2]]=h[t[l[3]]];else local n=l[2];local a={};local o=0;local c=d;for l=n+1,c do o=o+1;a[o]=e[l];end;local c={e[n](i(a,1,c-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;end;elseif n<=5 then if n>4 then e[l[2]]();d=A;else e[l[2]]=t[l[3]];end;elseif n>6 then e[l[2]]=(l[3]~=0);else local n=l[2];local c={};local o=0;local l=n+l[3]-1;for l=n+1,l do o=o+1;c[o]=e[l];end;local c,l=K(e[n](i(c,1,l-n)));l=l+n-1;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;end;elseif n<=11 then if n<=9 then if n==8 then local n;local u,n;local a;local c;local f;local s;local n;e[l[2]]=h[t[l[3]]];o=o+1;l=r[o];e[l[2]]=h[t[l[3]]];o=o+1;l=r[o];n=l[2];s=e[l[3]];e[n+1]=s;e[n]=s[t[l[5]]];o=o+1;l=r[o];e[l[2]]=t[l[3]];o=o+1;l=r[o];e[l[2]]=(l[3]~=0);o=o+1;l=r[o];n=l[2];f={};c=0;a=n+l[3]-1;for l=n+1,a do c=c+1;f[c]=e[l];end;u,a=K(e[n](i(f,1,a-n)));a=a+n-1;c=0;for l=n,a do c=c+1;e[l]=u[c];end;d=a;o=o+1;l=r[o];n=l[2];f={};c=0;a=d;for l=n+1,a do c=c+1;f[c]=e[l];end;u={e[n](i(f,1,a-n))};a=n+l[5]-2;c=0;for l=n,a do c=c+1;e[l]=u[c];end;d=a;o=o+1;l=r[o];e[l[2]]();d=n;o=o+1;l=r[o];do return end;else local n=l[2];local a={};local o=0;local c=d;for l=n+1,c do o=o+1;a[o]=e[l];end;local c={e[n](i(a,1,c-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;end;elseif n>10 then do return end;else local n=l[2];local c={};local o=0;local l=n+l[3]-1;for l=n+1,l do o=o+1;c[o]=e[l];end;local c,l=K(e[n](i(c,1,l-n)));l=l+n-1;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;end;elseif n<=13 then if n>12 then local n=l[2];local o=e[l[3]];e[n+1]=o;e[n]=o[t[l[5]]];else e[l[2]]=(l[3]~=0);end;elseif n<=14 then do return end;elseif n==15 then local o=l[2];local n=e[l[3]];e[o+1]=n;e[o]=n[t[l[5]]];else e[l[2]]=t[l[3]];end;o=o+1;end;end;end;return M(T(),{},D())();
