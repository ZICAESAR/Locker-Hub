local t=string.byte;local r=string.char;local c=string.sub;local b=table.concat;local u=math.ldexp;local X=getfenv or function()return _ENV end;local l=setmetatable;local i=select;local f=unpack;local h=tonumber;local function s(t)local e,o,n="","",{}local d=256;local a={}for l=0,d-1 do a[l]=r(l)end;local l=1;local function f()local e=h(c(t,l,l),36)l=l+1;local o=h(c(t,l,l+e-1),36)l=l+e;return o end;e=r(f())n[1]=e;while l<#t do local l=f()if a[l]then o=a[l]else o=e..c(e,1,1)end;a[d]=e..c(o,1,1)n[#n+1],e,d=o,o,d+1 end;return table.concat(n)end;local a=s('2152742152192752161Z27521X21Y22022522I22L22J21S21Z22621627727422622021W22421621A27522P22L22L22H23222422L2161N27521T27X22H22I1J161622J22022M1722621S22L21T22K22322K22I22422J22221Y21Z22L22428T1728R21W1622T21Y22221U28P22W23D22O1629629821W22027J1623H22022321X2241721X22K2201W27521G1X26125Y1N1X27421C21L29T1V21L27421D1X1P2151V29W21521K192A0192742112A92A82A32AE2A72AK21H2152AE1V27521H1X2A22AI2152AS2742AV215');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then n=n+o end l,e,o=(l-a)/2,(e-c)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function l(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function o()local c,a,o,l=t(a,e,e+3);c=n(c,41)a=n(a,41)o=n(o,41)l=n(l,41)e=e+4;return(l*16777216)+(o*65536)+(a*256)+c;end;local function d()local l=n(t(a,e,e),41);e=e+1;return l;end;local function s()local e=o();local n=o();local c=1;local o=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local l=((-1)^l(n,32));if(e==0)then if(o==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return u(l,e-1023)*(c+(o/(2^52)));end;local h=o;local function u(l)local o;if(not l)then l=h();if(l==0)then return'';end;end;o=c(a,e,e+l-1);e=e+l;local e={}for l=1,#o do e[l]=r(n(t(c(o,l,l)),41))end return b(e);end;local e=o;local function h(...)return{...},i('#',...)end local function b()local t={0,0,0,0,0,0,0,0,0};local e={};local c={};local a={t,nil,e,nil,c};for l=1,o()do e[l-1]=b();end;local e=o()local c={0,0,0,0};for o=1,e do local e=d();local l;if(e==1)then l=(d()~=0);elseif(e==2)then l=s();elseif(e==3)then l=u();end;c[o]=l;end;a[2]=c for a=1,o()do local c=n(o(),28);local o=n(o(),54);local n=l(c,1,2);local e=l(o,1,11);local e={e,l(c,3,11),nil,nil,o};if(n==0)then e[3]=l(c,12,20);e[5]=l(c,21,29);elseif(n==1)then e[3]=l(o,12,33);elseif(n==2)then e[3]=l(o,12,32)-1048575;elseif(n==3)then e[3]=l(o,12,32)-1048575;e[5]=l(c,21,29);end;t[a]=e;end;a[4]=d();return a;end;local function L(l,e,u)local o=l[1];local n=l[2];local e=l[3];local l=l[4];return function(...)local r=o;local t=n;local e=e;local n=l;local s=h local o=1;local d=-1;local h={};local a={...};local c=i('#',...)-1;local l={};local e={};for l=0,c do if(l>=n)then h[l-n]=a[l+1];else e[l]=a[l+1];end;end;local l=c-n+1 local l;local n;while true do l=r[o];n=l[1];if n<=7 then if n<=3 then if n<=1 then if n>0 then e[l[2]]=u[t[l[3]]];else e[l[2]]=t[l[3]];end;elseif n==2 then local n=l[2];local c={};local o=0;local l=n+l[3]-1;for l=n+1,l do o=o+1;c[o]=e[l];end;local c,l=s(e[n](f(c,1,l-n)));l=l+n-1;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;else do return end;end;elseif n<=5 then if n>4 then local o=l[2];local n=e[l[3]];e[o+1]=n;e[o]=n[t[l[5]]];else e[l[2]]=(l[3]~=0);end;elseif n>6 then e[l[2]]=u[t[l[3]]];else local n=l[2];local c={};local o=0;local l=n+l[3]-1;for l=n+1,l do o=o+1;c[o]=e[l];end;local c,l=s(e[n](f(c,1,l-n)));l=l+n-1;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;end;elseif n<=11 then if n<=9 then if n>8 then local n=l[2];local c={};local o=0;local a=d;for l=n+1,a do o=o+1;c[o]=e[l];end;local c={e[n](f(c,1,a-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;else local n;local h,n;local a;local c;local i;local A;local n;e[l[2]]=u[t[l[3]]];o=o+1;l=r[o];e[l[2]]=u[t[l[3]]];o=o+1;l=r[o];n=l[2];A=e[l[3]];e[n+1]=A;e[n]=A[t[l[5]]];o=o+1;l=r[o];e[l[2]]=t[l[3]];o=o+1;l=r[o];e[l[2]]=(l[3]~=0);o=o+1;l=r[o];n=l[2];i={};c=0;a=n+l[3]-1;for l=n+1,a do c=c+1;i[c]=e[l];end;h,a=s(e[n](f(i,1,a-n)));a=a+n-1;c=0;for l=n,a do c=c+1;e[l]=h[c];end;d=a;o=o+1;l=r[o];n=l[2];i={};c=0;a=d;for l=n+1,a do c=c+1;i[c]=e[l];end;h={e[n](f(i,1,a-n))};a=n+l[5]-2;c=0;for l=n,a do c=c+1;e[l]=h[c];end;d=a;o=o+1;l=r[o];e[l[2]]();d=n;o=o+1;l=r[o];do return end;end;elseif n==10 then local n=l[2];local c={};local o=0;local a=d;for l=n+1,a do o=o+1;c[o]=e[l];end;local c={e[n](f(c,1,a-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;else e[l[2]]();d=A;end;elseif n<=13 then if n>12 then e[l[2]]();d=A;else e[l[2]]=(l[3]~=0);end;elseif n<=14 then do return end;elseif n==15 then local o=l[2];local n=e[l[3]];e[o+1]=n;e[o]=n[t[l[5]]];else e[l[2]]=t[l[3]];end;o=o+1;end;end;end;return L(b(),{},X())();
