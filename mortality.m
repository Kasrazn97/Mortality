close;
clear;
clc;

%% Generating the core age

x=normrnd(71.72,6.77,[100 1]);
core=sum(x)/100;
%%
disp('estimating your life number\nchoose each answer with entering its number');
bmi=BMI(input('\n\n\n\nhow much is your weight?(kg)\n'),input('how tall are you?(cm)\n'));
fh=FH(input('\nchoose your family details:\n1-family members lived more than 70 and without heart problems under 50.\n2-one family member with heart problems under 50\n3-more than two family members with heart problems under 50\n4-dont know\n'));
bp=BP(input('\nchoose about your blood pressur:\n1-dont know\n2-regularly cheked and normal\n3-regularly cheked with high blood pressure but under control\n4-high blood pressure and no control on it\n'));
stress=Sress(input('\nchoose your stress level:\n1-possitive effect\n2-normal share of stress\n3-overwhelming\n'));
sportt=Sport(input('\nwhat is true about your exercise?\n1-every day vigorus exercise\n2-30 minutes walking 4 times a week\n3-time to time walking\n4-no exercise\n'));
diet=Diet(input('\nwhat is true about your diet?\n1-5 serves of fruits and vegetables per day\n2-median serves of vegetables and low fastfood\n3-median fastfood and low vegetables\n'));
drink=Drink(input('\nchoose about alcoholic drinks:\n1-2 drink per day or never\n2-3 or 4 drinks more than 2 times a week\n3-more than 5 drinks more than one time per month\n'));
smoke=Smoke(input('\nhow much do you smoke?\n1-never\n2-quit more tha n2 years ago\n3-quit less than 2 years ago\n4-less tha n2 packs per day\n5-more than 2 packs per day\n'));
chek=Chek(input('\nhow often do you visit a doctor?\n1-regularly cheked\n2-time to time\n3-never\n'));

global Age;
Age=core+bmi+fh+bp+stress+sportt+diet+drink+smoke+chek;
%% life activities
clc;
disp('your life activities');
z=100*(Age - 1)/(Age*365*24);
global Reading Work Sleep sport Joy Internet Film Game Art;
Reading=(input('\n\n\n\nHow many hours do you spend on reading per day?\n')*365)*z;
Work=input('\nhow many hours do you work per week?\n')*52*z;
Sleep=input('\nhow much do you get sleep per day?  write in hours.\n')*365*z;
sport=input('\nhow many sessions of exercise do you get per week?\n each exercise session is about 2 hours\n')*2*52*z;
Joy=input('\nhow many hours do you hang out or go for a fun time walking per week?\n')*52*z;
Internet=input('\nhow many hours do you spend on searching the Internet per day?\n')*365*z;
Film=input('\nhow many films do you watch per week?\n')*2*52*z;
Game=input('\nhow many hours do you play computer(mobile) games per week?\n')*52*z;
Art=input('\nhow many hours do you spend on any kind of art per day?\n including painting,playing musical instruments,poetry and etc.\n')*365*z;
Totalhour=(Reading+Work+Sleep+sport+Joy+Internet+Film+Game+Art)/z;
global Reading2 Work2 Sleep2 sport2 Joy2 Internet2 Film2 Game2 Art2;
Reading2=100*Reading/(z*Totalhour);
Work2=100*Work/(z*Totalhour);
Sleep2=100*Sleep/(z*Totalhour);
sport2=100*sport/(z*Totalhour);
Joy2=100*Joy/(z*Totalhour);
Internet2=100*Internet/(z*Totalhour);
Film2=100*Film/(z*Totalhour);
Game2=100*Game/(z*Totalhour);
Art2=100*Art/(z*Totalhour);
global m;
n=[Reading Work Sleep sport Joy Internet Film Game Art;Reading2 Work2 Sleep2 sport2 Joy2 Internet2 Film2 Game2 Art2];
m=transpose(n);
view;