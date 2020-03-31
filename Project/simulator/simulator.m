close all
clear

numberofx = 16; %number of input x vectors

cdec=[];
cbin=[];
hbin=[];
hdec=[];
cbinall=[];
hbinall=[];
gdatadec=[];
Fwubfixall=[];% weights(W, U) and bias (B) for f gate
Gwubfixall=[];% weights(W, U) and bias (B) for g gate
Iwubfixall=[];% weights(W, U) and bias (B) for i gate
Owubfixall=[];% weights(W, U) and bias (B) for o gate


 

%% load x and weights & bias

load xdec;
load wfdec;
load wgdec;
load widec;
load wodec;
load ufdec;
load ugdec;
load uidec;
load uodec;
load bfdec;
load bgdec;
load bidec;
load bodec;

%% during demo new x, weights, and bias will be provided, you can 
%% comment the 'load xdec', and uncomment this block to generate new input (x) weights, and bias (W, U, B)
%xdec=(-1+2.*rand(16,numberofx));

% wfdec=(-1+2.*rand(16,numberofx));
% wgdec=(-1+2.*rand(16,numberofx));
% widec=(-1+2.*rand(16,numberofx));
% wodec=(-1+2.*rand(16,numberofx));
% 
% ufdec=(-1+2.*rand(16,numberofx));
% ugdec=(-1+2.*rand(16,numberofx));
% uidec=(-1+2.*rand(16,numberofx));
% uodec=(-1+2.*rand(16,numberofx));
% 
% bfdec=(-1+2.*rand(16,1));
% bgdec=(-1+2.*rand(16,1));
% bidec=(-1+2.*rand(16,1));
% bodec=(-1+2.*rand(16,1));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





xdec=2^(-15)*round(xdec/(2^(-15)));

wfdec=2^(-15)*round(wfdec/(2^(-15)));
wgdec=2^(-15)*round(wgdec/(2^(-15)));
widec=2^(-15)*round(widec/(2^(-15)));
wodec=2^(-15)*round(wodec/(2^(-15)));

ufdec=2^(-15)*round(ufdec/(2^(-15)));
ufdec=2^(-15)*round(ufdec/(2^(-15)));
ufdec=2^(-15)*round(ufdec/(2^(-15)));
ufdec=2^(-15)*round(ufdec/(2^(-15)));

bfdec=2^(-15)*round(bfdec/(2^(-15)));
bfdec=2^(-15)*round(bfdec/(2^(-15)));
bfdec=2^(-15)*round(bfdec/(2^(-15)));
bfdec=2^(-15)*round(bfdec/(2^(-15)));


%% converter decimal to fixed-point numbers (Provided in the project files)
xfix=dec2fix(xdec,15,16);

wffix=dec2fix(wfdec,15,16);
wgfix=dec2fix(wgdec,15,16);
wofix=dec2fix(wodec,15,16);
wifix=dec2fix(widec,15,16);

uffix=dec2fix(ufdec,15,16);
ugfix=dec2fix(ugdec,15,16);
uofix=dec2fix(uodec,15,16);
uifix=dec2fix(uidec,15,16);

bifix=dec2fix(bidec,15,16);
bgfix=dec2fix(bgdec,15,16);
bffix=dec2fix(bfdec,15,16);
bofix=dec2fix(bodec,15,16);



Fwubfixall=[wffix;uffix;bffix];
Gwubfixall=[wgfix;ugfix;bgfix];
Iwubfixall=[wifix;uifix;bifix];
Owubfixall=[wofix;uofix;bofix];

c0=zeros(16,1);
h0=zeros(16,1);




%% OUTPUT OF ECE 464
output_464 = (wgdec(:,:)*xdec(:,:));
% memory saturation
output_464 = memsaturate(output_464) ;
output_464_binary = dec2fix((output_464),15,16);


%% OUTPUT OF ECE 564
output_564beforetanh =wgdec(:,:)*xdec(:,:);
   if output_564beforetanh <-4
       output_564(:,:)=-0.999969482421875;
    
   else if output_564beforetanh > 4
       output_564(:,:)=0.999969482421875;
           else output_564(:,:)=differentialtanh(output_564beforetanh);% linear interpolation of tanh
       end
   end

% memory saturation
   output_564=memsaturate(output_564);
   output_564_binary = dec2fix((output_564),15,16);
   
   
   
   
   
   
   
   


%% calculate f(1)
   fdatabeforesigmf=wfdec*xdec(:,1)+ufdec*h0+bfdec; % calculate f
   
   if fdatabeforesigmf <-4
       fdata(:,1)=0;
    
   else if fdatabeforesigmf > 4
       fdata(:,1)=0.999969482421875;
           else fdata(:,1)=differentialsigmf(fdatabeforesigmf); % linear interpolation of sigmf
       end
   end
   
% memory saturation
  fdata=memsaturate(fdata);


   
   %gdatabeforetanh=wgdec*xdec(:,1)+ugdec*h0+bgdec;
   gdatabeforetanh=wgdec*xdec(:,1)
%% calculate g(1)
   if gdatabeforetanh <-4
       gdata(:,1)=-0.999969482421875;
    
   else if gdatabeforetanh > 4
       gdata(:,1)=0.999969482421875;
           else gdata(:,1)=differentialtanh(gdatabeforetanh);% linear interpolation of tanh
       end
   end
% memory saturation
   gdata=memsaturate(gdata);
   
%% calculate i(1)
   idatabeforesigmf=widec*xdec(:,1)+uidec*h0+bidec;
   if idatabeforesigmf <-4
       idata(:,1)=0;
    
   else if idatabeforesigmf > 4
       idata(:,1)=0.999969482421875;
           else idata(:,1)=differentialsigmf(idatabeforesigmf);
       end
   end
   idata=memsaturate(idata);

%% calculate o(1)
   odatabeforesigmf=wodec*xdec(:,1)+uodec*h0+bodec;
   if odatabeforesigmf <-4
       odata(:,1)=0;
    
   else if odatabeforesigmf > 4
       odata(:,1)=0.999969482421875;
           else odata(:,1)=differentialsigmf(odatabeforesigmf);
       end
   end
   odata=memsaturate(odata);

 %% calculate c(1) aand h(1)  
   c(:,1)      =fdata(:,1).*c0+idata(:,1).*gdata(:,1);
   c=memsaturate(c); 
   h(:,1)      =odata(:,1).*differentialtanh(c(:,1));
   h=memsaturate(h);
   
   cdec     =[cdec; c(:,1)];% store c in an arrary
   hdec     =[hdec;h(:,1)];

    
%% calculate f g i o (2:length of x vector)   
for i=2:1:numberofx
%% calculate f
   fdatabeforesigmf=wfdec*xdec(:,i)+ufdec*h(:,i-1)+bfdec;
   if fdatabeforesigmf <-4
       fdata(:,i)=0;
    
   else if fdatabeforesigmf > 4
       fdata(:,i)=0.999969482421875
           else fdata(:,i)=differentialsigmf(fdatabeforesigmf);% linear interpolation of sigmoid function
       end
   end  

   fdata=memsaturate(fdata);

%% calculate g
   %gdatabeforetanh=(wgdec*xdec(:,i)+ugdec*h(:,i-1)+bgdec);
   gdatabeforetanh=(wgdec*xdec(:,i));
   if gdatabeforetanh <-4
       gdata(:,i)=-0.999969482421875;
   else if gdatabeforetanh > 4
       gdata(:,i)=0.999969482421875;
           else  gdata(:,i)=differentialtanh(gdatabeforetanh);% linear interpolation of tanh
       end
   end

   gdata=memsaturate(gdata);
 

   
%% calculate i
   idatabeforesigmf=widec*xdec(:,i)+uidec*h0+bidec;
   if idatabeforesigmf <-4
       idata(:,i)=0;
    
   else if idatabeforesigmf > 4
       idata(:,i)=0.999969482421875;
           else idata(:,i)=differentialsigmf(idatabeforesigmf);
       end
   end
   idata=memsaturate(idata);

%% calculate o
   odatabeforesigmf=wodec*xdec(:,i)+uodec*h0+bodec;
   if odatabeforesigmf <-4
       odata(:,i)=0;
    
   else if odatabeforesigmf > 4
       odata(:,i)=0.999969482421875;
           else odata(:,i)=differentialsigmf(odatabeforesigmf);% linear interpolation of sigmoid
       end
   end
   odata=memsaturate(odata);
 
%% calculate c
   c(:,i)=(fdata(:,i).*c(:,i-1)+idata(:,i).*gdata(:,i));
c=memsaturate(c);
   cdec   =[cdec; c(:,i)];%store decimal c in an arrary
   cdatabeforetanh=c(:,i);
%% calculate h   
   if cdatabeforetanh <-4
       h(:,i)=odata(:,i).*(-0.999969482421875);    
   else if cdatabeforetanh > 4
       h(:,i)=odata(:,i).*0.999969482421875;
           else  h(:,i)=odata(:,i).*differentialtanh(cdatabeforetanh);% linear interpolation of tanh
       end
   end
   h=memsaturate(h);
   hdec   =[hdec; h(:,i)];%store decimal h in an arrary

end


%%The outputs (fixed-point c and h)for ECE564 project (15 bits fraction bits)
   cbinall   =dec2fix(cdec(:,1),15,16)
   hbinall=dec2fix(hdec(:,1),15,16)

   
   
save(sprintf('cbinall.mat'),'cbinall');
save(sprintf('hbinall.mat'),'hbinall');






%% generate LUT for Tanh
tanhlut=[];
for i=0:1:255
tanhlut=[tanhlut; tanh(i*0.015625)];
end
lutbin=dec2fix(tanhlut,15,16);


%% memory saturation
function y = memsaturate(xx)
% memory saturation
xx(find(xx>0.999969482421875))=0.999969482421875; %maxmium possitive for a 16-bit fixed point
    
% memory saturation
xx(find(xx<-0.999969482421875))=-0.999969482421875;
    %minimum negative for a 16-bit fixed point

% memory saturation , 0 to 2^-15
xx(find(xx>=2^-15-2^-16-2^-70 & xx<=2^-15))=2^-15;
xx(find(xx>0 & xx<2^-15-2^-16-2^-70))=0;      
                        
% memory saturation, -2^15 to 0
xx(find(xx<=-2^-15+2^-16+2^-70 & xx>=-2^-15))=-2^-15;
xx(find(xx>-2^-15+2^-16+2^-70 & xx<0))=0;

y=xx;
end




%% linear interpolation of sigmf
function ddtanh = differentialtanh(xx)

ddtanh = (0.015625.*(floor(xx/0.015625)+1)-xx)/0.015625.*tanh(0.015625.*floor(xx/0.015625))+(xx-0.015625.*floor(xx/0.015625))/0.015625.*tanh(0.015625.*(floor(xx/0.015625)+1));
end
function ddsigmf = differentialsigmf(x)
ddsigmf = 0.5 + 0.5*differentialtanh (x/2);
end


function f = dec2fix(x, nfracbits, nbits)
% DEC2FIX Convert decimal integer to binary string fixed point.
% 
% Usage: F = DEC2FIX(X, NFRACBITS, NBITS)
% 
% Converts the signed decimal integer given by X (either a scalar, vector,
% or matrix) to the two's complement representation as a string. If X is a
% vector or matrix, F(i, :) is the representation for X(i) (the shape of X
% is not preserved). Note that many fractional numbers that can be
% represented with a finite number of fractional digits cannot be
% represented by a finite number of fractional bits (specifically
% non-powers-of-two like 0.3), so input NFRACBITS is required to specify
% the precision for the number of fractional bits. Even powers-of-two
% fractional decimal numbers (like 0.5) require this input.
% 
% Example:
%     >> dec2fix([2.3 2.4 -2.3 -2.4], 3)
%     
%     ans =
%     
%     010.010
%     010.011
%     101.110
%     101.101
% 
% Inputs:
%   -X: decimal integers to convert to two's complement.
%   -NFRACBITS: number of bits to represent fractional part.
%   -NBITS: total number of bits in the representation including the
%   fractional bits (optional, default is the fewest number of bits
%   necessary to represent the integer portion).
% 
% Outputs:
%   -F: fixed point representation of X as a string.
% 
% See also: FIX2DEC, TWOS2DEC, DEC2TWOS, DEC2BIN, DEC2HEX, DEC2BASE.
error(nargchk(2, 3, nargin));
x = x(:);
maxx = max(abs(x));
nbits_min = max([nextpow2(maxx + (any(x == maxx)))  + nfracbits, ...
    nfracbits]);
% Default number of bits.
if nargin < 3
    nbits = nbits_min;
elseif nbits < nbits_min
      warning('dec2twos:nbitsTooSmall', ['Minimum number of bits to ' ...
        'represent maximum input x is %i, which is greater than ' ...
        'input nbits = %i. Setting nbits = %i.'], ...
        nbits_min, nbits, nbits_min)
    nbits = nbits_min;
end
% Convert to two's complement string.
f = dec2twos(round(x * 2.^nfracbits), nbits);
% Insert binary point.
f(:, end+1) = '.';
f = f(:, [1:(nbits-nfracbits), nbits+1, (nbits-nfracbits+1):nbits]);
end


function t = dec2twos(x, nbits)
% DEC2TWOS Convert decimal integer to binary string two's complement.
% 
% Usage: T = DEC2TWOS(X, NBITS)
% 
% Converts the signed decimal integer given by X (either a scalar, vector,
% or matrix) to the two's complement representation as a string. If X is a
% vector or matrix, T(i, :) is the representation for X(i) (the shape of X
% is not preserved).
% 
% Example:
%     >> dec2twos([23 3 -23 -3])
%     
%     ans =
%     
%     010111
%     000011
%     101001
%     111101
% 
% Inputs:
%   -X: decimal integers to convert to two's complement.
%   -NBITS: number of bits in the representation (optional, default is the
%   fewest number of bits necessary).
% 
% Outputs:
%   -T: two's complement representation of X as a string.
% 
% See also: TWOS2DEC, DEC2FIX, FIX2DEC, DEC2BIN, DEC2HEX, DEC2BASE.
error(nargchk(1, 2, nargin));
x = x(:);
maxx = max(abs(x));
nbits_min = nextpow2(maxx + (any(x == maxx))) + 1;
% Default number of bits.
if nargin == 1 || isempty(nbits)
    nbits = nbits_min;
elseif nbits < nbits_min
    warning('dec2twos:nbitsTooSmall', ['Minimum number of bits to ' ...
        'represent maximum input x is %i, which is greater than ' ...
        'input nbits = %i. Setting nbits = %i.'], ...
        nbits_min, nbits, nbits_min)
    nbits = nbits_min;
end
t = repmat('0', numel(x), nbits); % Initialize output:  Case for x = 0
if any(x > 0)
    t(x > 0, :) = dec2bin(x(x > 0), nbits);           % Case for x > 0
end
if any(x < 0)
    t(x < 0, :) = dec2bin(2^nbits + x(x < 0), nbits); % Case for x < 0
end
end


function y = sigmoid(x,c,a)
% sigmoid evaluates a simple sigmoid function along x: 
% 
%         ______1________
%     y =        -a(x-c)
%          1 + e^
% 
%% Syntax 
% 
% y = sigmoid(x)
% y = sigmoid(x,c)
% y = sigmoid(x,c,a)
% 
%% Description
% 
% y = sigmoid(x) generates a sigmoid function along x. 
% 
% y = sigmoid(x,c) makes a sigmoid that scaled from zero to one, where
% c corresponds to the x value where y = 0.5. If c is not specified, a
% default value of c = 0 is assumed. 
% 
% y = sigmoid(x,c,a) specifies a, the rate of change. If a is close to
% zero, the sigmoid function will be gradual. If a is large, the sigmoid
% function will have a steep or sharp transition. If a is negative, the 
% sigmoid will go from 1 to zero. A default value of a = 1 is assumed if 
% a is not declared. 
% 
%% Example 1 
% A simple sigmoid: 
% 
% x = -10:.01:10;
% plot(x,sigmoid(x))
% 
%% Example 2: 
% Make a sigmoid function along x = 1 to 100, such that y(x=60) = 0.5: 
% 
% x = 1:100; 
% y = sigmoid(x,60);
% plot(x,y,'b','linewidth',2) 
% 
% Now do the same thing as above, but make the transition more gradual: 
% 
% y2 = sigmoid(x,60,0.1); 
% hold on
% plot(x,y2,'r','linewidth',2) 
% legend('default a = 1','a = 1/10') 
% legend boxoff 
% 
%% Author Info:
% Chad Greene, May 28, 2015.  
% http://www.chadagreene.com
%% Parse Inputs: 
narginchk(1,3) 
if nargin<3
    a = 1; 
else
    assert(isscalar(a)==1,'a must be a scalar.') 
end
if nargin<2
    c = 0; 
else
    assert(isscalar(c)==1,'c must be a scalar.') 
end
%% Perform mathematics: 
y = 1./(1 + exp(-a.*(x-c)));
end


function x = fix2dec(t)
% FIX2DEC Convert binary string fixed point to decimal integer.
% 
% Usage: X = FIX2DEC(T)
% 
% Converts the two's complement fixed point representation as a string
% given by T with a binary point to decimal values. Specifically, the input
% should be of the form '10011.10110', for example. T can be a character
% array or cell string. Input multiple numbers into T along the rows, and
% the output will be as a column vector. Similarly to BIN2DEC and TWOS2DEC,
% leading spaces in T are sign extended (so treated as either 0 or 1
% depending on the first non space character), and embedded and trailing
% spaces are removed.
% 
% Example:
%     >> fix2dec(['10011.10110'; '     11.1  '; ' 0.101110  '])
%     
%     ans =
%     
%       -12.3125
%        -0.5000
%         0.7188
% 
% Inputs:
%   -T: string two's complement fixed point numbers to convert to decimal
%   integers.
% 
% Outputs:
%   -X: decimal representation of T.
% 
% See also: DEC2FIX, TWOS2DEC, DEC2TWOS, BIN2DEC, HEX2DEC, BASE2DEC.
error(nargchk(1, 1, nargin));
if iscellstr(t)
    t = char(t);
end
% Get the number of fractional points for each input.
binpt = t == '.';
% Make sure there is only one binary point in every row.
if any(sum(binpt, 2) > 1)
    error('fix2dec:tooManyBinaryPoints', ...
        'Only one binary point allowed in each row.');
end
% Get number of 0's and 1's after each binary point.
frac = sum((t == '0' | t == '1') & logical(cumsum(binpt, 2)), 2);
% Remove binary point.
t(binpt) = ' ';
% Convert using twos2dec.
x = twos2dec(t) .* 2.^-frac;
end


function x = twos2dec(t)
% TWOS2DEC Convert binary string two's complement to decimal integer.
% 
% Usage: X = TWOS2DEC(T)
% 
% Converts the two's complement representation as a string given by T to
% decimal integers X. T can be a character array or cell string. Input
% multiple numbers into T along the rows, and the output will be as a
% column vector. Similarly to BIN2DEC, leading spaces in T are sign
% extended (so treated as either 0 or 1 depending on the first non space
% character), and embedded and trailing spaces are removed.
% 
% Example:
%     >> twos2dec(['010 111'; ' 010111'; '101011 '; ' 10   1'])
%     
%     ans =
%     
%         23
%         23
%        -21
%         -3
% 
% Inputs:
%   -T: string two's complement numbers to convert to decimal integers.
% 
% Outputs:
%   -X: decimal representation of T.
% 
% See also: DEC2TWOS, FIX2DEC, DEC2FIX, BIN2DEC, HEX2DEC, BASE2DEC.
error(nargchk(1, 1, nargin));
if iscellstr(t)
    t = char(t);
end
% Convert to numbers.
x = bin2dec(t);
% Get the number of bits as the number of 0's and 1's in each row.
nbits = sum(t == '0' | t == '1', 2);
% Case for negative numbers.
xneg = log2(x) >= nbits - 1;
% xneg = bitshift(x, -(nbits - 1)) == 1;
if any(xneg)
    x(xneg) = -( bitcmp(x(xneg), nbits(xneg)) + 1 );
end
end
