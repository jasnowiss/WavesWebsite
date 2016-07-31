%re-combine nested grids
%Scott Hayward

clc; clear all; close all


fname=['SB';'LA';'OC';'SD'];
fdimsX=[451, 301, 301, 226];
fdimsY=[226, 226, 151, 301];

for i=1:4

    
name=['Hs',fname(i,:),'.txt']
    
fid1=fopen(name);


    H=fscanf(fid1,'%f',[fdimsX(i) fdimsY(i)]); % xc+1 and yc+1
     AA=find(H<0.01);
    H(AA)=NaN;
   
   %convert from m to ft. 

H=H.*3.28084;    

name2=['Hs',fname(i,:)]


figure
 sizefig(fdimsX(i)*3,fdimsY(i)*3)
 
 
 chart=pcolor(H')
 
 set(chart,'edgecolor','flat')
 axis equal
axis off
   


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 %create colormap
 
 a=linspace(pi/10,pi/2,10)
 b=linspace(pi/2+pi/10,pi,10)
 c=linspace(pi+pi/10,3*pi/2,10)
 d=linspace(3*pi/2+pi/10,2*pi,10)
 e=ones(1,10);
 f=ones(1,1);

 
 uT=.5+.5*sin(a);
 dT=.5+.5*sin(b);
 dB=.5+.5*sin(c);
 uB=.5+.5*sin(d);
 
 blue=[uT,1*e,dT,dB,uB,f*.5];
 green=[uB,uT,1*e,dT,dB,0*f];
 red=[0*e,uB,uT,1*e,dT,f*.5];

 
 color=[red',green',blue'];
 
 colormap(color)

c=[1 2 3 4 5 8 10]
clim([0 15])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            %%%%%                     %%%%%              
           %%   %%                   %%   %%  
           %%   %%                   %%   %%  
            %%%%%                     %%%%%



       %%%                                 %%%
       %%%                                 %%%
        %%%                               %%%
         %%%%                           %%%%
           %%%%%%%%               %%%%%%%%
              %%%%%%%%%%%%%%%%%%%%%%%%%%
                   %%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%combine all grids





set(gca,'position',[0 0 1 1] ,'units','normalized')

name=['Hs',fname(i,:),'.png']

print(name)

end






