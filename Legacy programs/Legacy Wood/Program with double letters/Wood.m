function varargout = Wood(varargin)
%WOOD M-file for Wood.fig
%      WOOD, by itself, creates a new WOOD or raises the existing
%      singleton*.
%
%      H = WOOD returns the handle to a new WOOD or the handle to
%      the existing singleton*.
%
%      WOOD('Property','Value',...) creates a new WOOD using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Wood_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      WOOD('CALLBACK') and WOOD('CALLBACK',hObject,...) call the
%      local function named CALLBACK in WOOD.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Wood

% Last Modified by GUIDE v2.5 27-Mar-2011 21:29:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Wood_OpeningFcn, ...
                   'gui_OutputFcn',  @Wood_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Wood is made visible.
function Wood_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for Wood
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Wood wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Wood_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function text_Callback(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text as text
%        str2double(get(hObject,'String')) returns contents of text as a double


% --- Executes during object creation, after setting all properties.
function text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
clear global
global ishodnik
global nomera
global fname
[fname,pname]=uigetfile('*.txt');
name=[pname fname];
fid=fopen(name,'rt');
ishodnik=fscanf(fid,'%c');  % �������������� ��������� �����
nomera=strfind(ishodnik,' 0:20'); % ����� ������ ������� �����, ��� ������������ ���������� �� �����
vivod=ishodnik;
for k=fliplr(nomera)
vivod=[vivod(1:(k-2)) '                                   ' fname ', ���� �' num2str(find(nomera==k)) vivod((k-1):length(vivod))];
end
nomera(length(nomera)+1)=length(ishodnik)+1; % ���������� ����� � �����, ����� �� ��������� ��������� ����� � �����
set(handles.text, 'String', vivod)
set(handles.opitnum,'String',['1/' num2str(length(nomera)-1)]);

% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function opitnum_Callback(hObject, eventdata, handles)
clear global opit
global ishodnik
global nomera
global opit
global fname
global opitnum

a=['/' num2str(length(nomera)-1)];
b=get(handles.opitnum,'String');
opitnum=str2double(b(1:(length(b)-length(a))));
opit=ishodnik(nomera(opitnum):(nomera(opitnum+1)-1)); % ����� ����������� �����
write=[fname ',' '���� ' num2str(opitnum) sprintf('\n') sprintf('\n') opit];
set(handles.text, 'String', write)
set(handles.redact,'BackgroundColor', [0.75,0.75,0.7])
% hObject    handle to opitnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opitnum as text
%        str2double(get(hObject,'String')) returns contents of opitnum as a double


% --- Executes during object creation, after setting all properties.
function opitnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opitnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function clbs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clbs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in track.
function track_Callback(hObject, eventdata, handles)
clear global probi
clear global bezpl
global opit
global probi
global bezpl

rus='�����Ũ��������������������������+.'; % ������ ��� ��������� ������ ��������� � ��������� (� ���� ����������� ������������������ ����)
bukv(1)=' ';
for k=1:length(opit)
    opit(k)==rus;
    nu=sum(ans);
    if isinf(1/nu)==0
        bukv(length(bukv)+1)=opit(k);
    end
    clear ans nu
end

konec=strfind(bukv,'���������.');
nachalo=strfind(bukv,'�����');
nachalo(length(nachalo)+1)=(length(bukv)+1); %���������� ����� � �����, ����� �� �������� ��������� ������ � ��������� �����
for k=1:length(konec)
bukv(konec(k):(nachalo(k)-1))='_';
end
bukv=strrep(bukv,'_','');
bukv=strrep(bukv,'�����','������'); %�������� ��������� �����������
nachalo=strfind(bukv,'�����'); %����� ������ ������� ���������� ��� ���������� ����� �� �����
nachalo(length(nachalo)+1)=(length(bukv)+1); %���������� ����� � �����, ����� �� �������� ��������� ������ � ��������� �����

for k=1:(length(nachalo)-1) % �������� ������� � ���������� �������
probi{k}=bukv(nachalo(k):(nachalo(k+1)-1));
probi{k}(1:5)='';
end


plusi=0;
for y=1:length(probi)
    plusi=plusi+length(strfind(probi{y},'+'));
bezpl{y}=strrep(probi{y},'+','');
bezpl{y}(length(bezpl{y})+1)=' ';
end

odnogram=0;
for x=1:length(bezpl)
    odnogram=odnogram+(length(bezpl{x})-1);
end

sintaktika=probi{1};
sintaktika1=['1) ' probi{1}]; % ����� ���������� (������������� ������� ��������� ����)
if length(probi)>1
    for k=2:length(probi)
        num=[num2str(k) ') '];
        sintaktika=strvcat(sintaktika,probi{k});
        sintaktika1=strvcat(sintaktika1,[num probi{k}]);
    end
end

write0=get(handles.text, 'String');
write=strvcat(write0,blanks(3)','����������',blanks(1)', sintaktika1,blanks(1)',['����� ���������: ' num2str(odnogram)],['����� ������������: ' num2str(plusi)]);
set(handles.text, 'String', write)


% hObject    handle to track (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in redact.
function redact_Callback(hObject, eventdata, handles)
clear global opit
global opit
opit=get(handles.text,'String');
a=size(opit);
opit=reshape(opit',1,a(1)*a(2));
set(handles.redact,'BackgroundColor', [1,0,0])
% hObject    handle to redact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in ngram.
function ngram_Callback(hObject, eventdata, handles)


global bezpl

n=str2double(get(handles.n,'String'));
sintaktikas=bezpl{1}; % ����� ���������� (������������� ������� ��������� ����)
if length(bezpl)>1
    for k=2:length(bezpl)
        sintaktikas=strvcat(sintaktikas,bezpl{k});
    end
end
a=size(sintaktikas);
proba=reshape(sintaktikas',1,a(1)*a(2));
proba1=proba; % ����� �� ��������� �������� ������ �����, ��� ��� ����������� ��� ������������
proba_matrix=strrep(proba1,' ','');
poisk2=[];
ngram{1}=0;
ngram2{1}=0;

for u=1:(length(proba_matrix)-(n-1))
    eq=[];
    isk=proba_matrix(u);
    for m=1:(n-1)                            % ����������� ������� ������ (�������, ������� ����� ������)
        isk=[isk proba_matrix(u+m)];
    end  
    isk1=[isk(1:(length(isk)-1)) '-' isk(2:length(isk))];
   
    poisk=strfind(proba1,isk);
    poisk1=strfind(proba,isk);               % ��� ��������� ��������� ������� ������� � �������� ������ �����, ����������� ��� ������������
    if isempty(poisk)==0
       ngram{length(ngram)+1}=isk;              % ����������� ������� � ������� ��� ������, ������� ��������� 1 � ����� ����
       ngram{length(ngram)+1}=length(poisk);
       proba1=strrep(proba1,isk,isk1);          % ���������� ������ ����� � ������� ����, ����� 2 ���� ������ ���� ����� ���� � �� �� �������     
       if length(poisk)>1
          ngram2{length(ngram2)+1}=isk;   % ����������� ������� � ������� ��� ������, ������� ��������� 2 � ����� ����
          ngram2{length(ngram2)+1}=length(poisk);
          poisk2=[poisk2 poisk1];         % ������ ��������� ������� � �������� ������ �����    
       end
    end
             
end


chisla=3:2:length(ngram);
vse=0;
for x=chisla
vse=vse+ngram{x}    ;          % ����� ������
end

chisla=3:2:length(ngram2);
vse2=0;
for x=chisla
vse2=vse2+ngram2{x}    ;          % ����� ������ ��������� 2 � ����� ����
end
raznih=length(chisla);         % ������ ����� ������ ��������� 2 � ����� ����

ngram_position=[];
for l=1:length(poisk2)
    ngram_position_l=poisk2(l):(poisk2(l)+(n-1)) ;  % ������� ����� ���������� �������, ���������� 2 � ����� ���, � �������� ������ �����
    ngram_position=[ngram_position ngram_position_l]; % ������ ���� ������� ���� ������, ���������� 2 � ����� ���
end

for u=1:length(proba)                      % �������� �� �������� ������ ����� ���� ������, ���������� ����� 2 ���
        r1=ismember(u,ngram_position);
if isinf(1/r1)==1
    proba(u)='_' ;
end
end

proba=reshape(proba,a(2),a(1));             % ������������� �������� ������ ����� � ��������� ���� ��� ������������
proba=proba';
for p=1:length(bezpl)
proba(p,(length(bezpl{p})):length(proba(p,:)))=' ';
end


write1='';       % ����� ������� ������ � �������� � �����
while 1<length(ngram2)
if length(ngram2)<=41
    write1=[ngram2{2} ':  ' num2str(ngram2{3}) '  (' sprintf('%1.2f',(ngram2{3}/vse)) ')'];
    for y=4:2:length(ngram2)
    write1=strvcat(write1,[ngram2{y} ':  ' num2str(ngram2{y+1}) '  (' sprintf('%1.2f',(ngram2{y+1}/vse)) ')']);
    end
    break
elseif length(ngram2)<=81
    write1=[ngram2{2} ':  ' num2str(ngram2{3}) '  (' sprintf('%1.2f',(ngram2{3}/vse)) ')' blanks(8) ngram2{42} ':  ' num2str(ngram2{43}) '  (' sprintf('%1.2f',(ngram2{43}/vse)) ')'];
    for y=4:2:40
        if y+41<=length(ngram2)
    write1=strvcat(write1,[ngram2{y} ':  ' num2str(ngram2{y+1}) '  (' sprintf('%1.2f',(ngram2{y+1}/vse)) ')' blanks(8) ngram2{y+40} ':  ' num2str(ngram2{y+41}) '  (' sprintf('%1.2f',(ngram2{y+41}/vse)) ')' ]);
        else
    write1=strvcat(write1,[ngram2{y} ':  ' num2str(ngram2{y+1}) '  (' sprintf('%1.2f',(ngram2{y+1}/vse)) ')' ]) ;   
        end
    end
    break
elseif length(ngram2)<=121
    write1=[ngram2{2} ':  ' num2str(ngram2{3}) '  (' sprintf('%1.2f',(ngram2{3}/vse)) ')' blanks(8) ngram2{42} ':  ' num2str(ngram2{43}) '  (' sprintf('%1.2f',(ngram2{43}/vse)) ')'...
        blanks(8) ngram2{82} ':  ' num2str(ngram2{83}) '  (' sprintf('%1.2f',(ngram2{83}/vse)) ')'];
    for y=4:2:40
        if y+81<=length(ngram2)
    write1=strvcat(write1,[ngram2{y} ':  ' num2str(ngram2{y+1}) '  (' sprintf('%1.2f',(ngram2{y+1}/vse)) ')' blanks(8) ngram2{y+40} ':  ' num2str(ngram2{y+41}) '  (' sprintf('%1.2f',(ngram2{y+41}/vse)) ')'...
        blanks(8) ngram2{y+80} ':  ' num2str(ngram2{y+81}) '  (' sprintf('%1.2f',(ngram2{y+81}/vse)) ')']);
        else
    write1=strvcat(write1,[ngram2{y} ':  ' num2str(ngram2{y+1}) '  (' sprintf('%1.2f',(ngram2{y+1}/vse)) ')' blanks(8) ngram2{y+40} ':  ' num2str(ngram2{y+41}) '  (' sprintf('%1.2f',(ngram2{y+41}/vse)) ')' ]) ;   
        end
    end
    break
else 
    write1=[ngram2{2} ':  ' num2str(ngram2{3}) '  (' sprintf('%1.2f',(ngram2{3}/vse)) ')' blanks(8) ngram2{42} ':  ' num2str(ngram2{43}) '  (' sprintf('%1.2f',(ngram2{43}/vse)) ')'...
        blanks(8) ngram2{82} ':  ' num2str(ngram2{83}) '  (' sprintf('%1.2f',(ngram2{83}/vse)) ')'];
    for y=4:2:(length(ngram2)-81)
        if y<=40
    write1=strvcat(write1,[ngram2{y} ':  ' num2str(ngram2{y+1}) '  (' sprintf('%1.2f',(ngram2{y+1}/vse)) ')' blanks(8) ngram2{y+40} ':  ' num2str(ngram2{y+41}) '  (' sprintf('%1.2f',(ngram2{y+41}/vse)) ')'...
        blanks(8) ngram2{y+80} ':  ' num2str(ngram2{y+81}) '  (' sprintf('%1.2f',(ngram2{y+81}/vse)) ')']);
        else 
    write1=strvcat(write1,[ngram2{y+80} ':  ' num2str(ngram2{y+81}) '  (' sprintf('%1.2f',(ngram2{y+81}/vse)) ')']);
        end
    end
    break
end
end

blankmat(1:length(proba(:,1)),4)=' ';  % ���������� ������� � ������
proba_num=[blankmat proba];
for k=1:length(proba_num(:,1))
    num=[num2str(k) ') '];
    amru=strvcat(proba_num(1,1:4),num);
    proba_num(k,1:4)=amru(2,:);
end

raspred=get(handles.raspred,'Value');
if raspred==1
raspred_name=[];
raspred_num=[];
for k=2:length(ngram2)
    if ischar(ngram2{k})==1
        raspred_name=[raspred_name ngram2(k)];
    else
        raspred_num=[raspred_num ngram2{k}];
    end
end
raspred_name=fliplr(raspred_name);
raspred_num=fliplr(raspred_num);
figure
barh(raspred_num);
set(gca,'YTick', [1:length(raspred_name)]);
set(gca,'YTickLabel', raspred_name);
end

write=get(handles.text,'String');
write=strvcat(write,blanks(3)',[num2str(n) '-������'],blanks(1)',proba_num, blanks(2)',[['����� ' num2str(n) '-�����:  '] num2str(vse)],[['����� ' num2str(n) '-����� (2 � ����� ���):  '] num2str(vse2)],...
    [['������ ' num2str(n) '-����� (2 � ����� ���):  '] num2str(raznih)],blanks(1)', write1);
set(handles.text,'String',write)
% hObject    handle to ngram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in raspred.
function raspred_Callback(hObject, eventdata, handles)
% hObject    handle to raspred (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of raspred


% --- Executes on button press in semantika.
function semantika_Callback(hObject, eventdata, handles)
clear global sem_zon
clear global bezpl
clear global probi
global opit
global opitnum
global probi
global sem_zon
global bezpl

rus='�����Ũ��������������������������+.'; % ������ ��� ��������� ������ ��������� � ��������� (� ���� ����������� ������������������ ����)
bukv(1)=' ';
for k=1:length(opit)
    opit(k)==rus;
    nu=sum(ans);
    if isinf(1/nu)==0
        bukv(length(bukv)+1)=opit(k);
    end
    clear ans nu
end

konec=strfind(bukv,'���������.');
nachalo=strfind(bukv,'�����');
nachalo(length(nachalo)+1)=(length(bukv)+1); %���������� ����� � �����, ����� �� �������� ��������� ������ � ��������� �����
for k=1:length(konec)
bukv(konec(k):(nachalo(k)-1))='_';
end
bukv=strrep(bukv,'_','');
bukv=strrep(bukv,'�����','������'); %�������� ��������� �����������
nachalo=strfind(bukv,'�����'); %����� ������ ������� ���������� ��� ���������� ����� �� �����
nachalo(length(nachalo)+1)=(length(bukv)+1); %���������� ����� � �����, ����� �� �������� ��������� ������ � ��������� �����

for k=1:(length(nachalo)-1) % �������� ������� � ���������� �������
probi{k}=bukv(nachalo(k):(nachalo(k+1)-1));
probi{k}(1:5)='';
end



zoni=get(handles.zoni,'Value');
if zoni==1
for u=1:length(probi)
experim=probi{u}; 
for k=1:length(experim) %��������������� ��� �������
experim(k)=='���';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='���';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='��';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='�';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='��';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='�';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='�';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='��';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
clear ans
experim(k)=='���';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='�';
end
end


for k=2:(length(experim)-1)      % ���-�� ���� � ���� ������!!!!!!!!!!!!!!!
    if experim(k)==upper(experim(k+1))
    experim(k+1)='-';
    end
if experim(k-1)=='+'
if experim(k-2)==experim(k) 
experim(k)='-';
elseif experim(k-2)==upper(experim(k))
    experim(k)='-';
end
end
end
experim=strrep(experim,'-',''); %�������� ������� (��������� ������)


sem_zon{u}=experim;
end

else
    
    for u=1:length(probi)
experim=probi{u}; 
for k=1:length(experim) %��������������� ��� �������
experim(k)=='���';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='���';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='��';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='�';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='��';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='�';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='�';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='��';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
clear ans
experim(k)=='���';
r1=sum(ans);
if isinf(1/r1)==0
experim(k)='-';
end
end

experim=strrep(experim,'-',''); %�������� ������� (��������� ������)




for k=2:length(experim)
if experim(k-1)=='+'
if experim(k-2)==experim(k)
experim(k)='-';
end
end
end
experim=strrep(experim,'-',''); %�������� ������� (��������� ������)


sem_zon{u}=experim;

    end
end

plusi=0;

for y=1:length(sem_zon)
    plusi=plusi+length(strfind(sem_zon{y},'+'));
bezpl{y}=strrep(sem_zon{y},'+','');
bezpl{y}(length(bezpl{y})+1)=' ';
end

sem=['1) ' sem_zon{1}]; % ����� ��������� 
if length(sem_zon)>1
    for k=2:length(sem_zon)
        num=[num2str(k) ') '];
        sem=strvcat(sem,[num sem_zon{k}]);
    end
end

write=get(handles.text,'String');
set(handles.text, 'String',strvcat(write,blanks(3)','���������',blanks(1)',sem));


connection=get(handles.connection, 'Value');
if connection==1
    semant=[];
for u=1:length(bezpl)
experim=bezpl{u};
semant=[semant '_' experim];
end

%���
vhk=[];
vhk=strfind(semant, '��');
vhk=[vhk strfind(semant, '��')];
semant1=semant;
ji=strfind(semant1, '�');
clear semant1
dolia_vhk=length(vhk);
dolia_vhk=[dolia_vhk; length(ji)];

%��
kk=[];
kk=strfind(semant, '��');
kk=[kk strfind(semant, '��')];
semant1=semant;
for k=kk
    semant1(k:(k+1))='_';
end
k1=strfind(semant1,'�');
k1=[k1 strfind(semant1, '�')];
dolia_kk=length(kk);
dolia_kk=[dolia_kk; length(k1)+length(kk)];

%����
kv=[];
kv=strfind(semant,'��');
kv=[kv strfind(semant, '��')];
kv=[kv strfind(semant, '��')];
kv=[kv strfind(semant, '��')];

kv1=strfind(semant1,'��');
kv1=[kv1 strfind(semant1, '��')];
kv1=[kv1 strfind(semant1, '��')];
kv1=[kv1 strfind(semant1, '��')];
clear semant1

dolia_kv=length(kv);
dolia_kv=[dolia_kv; length(kv1)+length(kk)];


%%%%%%%%%%%%%%%%%%%%����������� �� ���������� ������
semant1=semant;
for k=vhk
    semant1(k)='1';
    semant1(k+1)='1';
end
for k=kk
    semant1(k:(k+1))='2';
end
for k=kv
    semant1(k)='3';
    semant1(k+1)='3';    
end

%������
vhkv=[];
vhkv=[vhkv strfind(semant1, '13')];
dolia_vhkv=length(vhkv);
dolia_vhkv=[dolia_vhkv; length(vhk)];

%����
vhkk=[];
vhkk=[vhkk strfind(semant1, '12')];
dolia_vhkk=length(vhkk);
dolia_vhkk=[dolia_vhkk; length(vhk)];

%�����
kkv=[];
kkv=[kkv strfind(semant1, '23')];
dolia_kkv=length(kkv);
dolia_kkv=[dolia_kkv; length(kk)];

%���
kkk=[];
kkk=[kkk strfind(semant1, '222')];
dolia_kkk=length(kkk);
dolia_kkk=[dolia_kkk; length(kk)];

%�������
vhkkv=[];
vhkkv=[vhkkv strfind(semant1, '123')];
dolia_vhkkv=length(vhkkv);
dolia_vhkkv=[dolia_vhkkv; length(vhkk)];

semantik_anal=strvcat((get(handles.text, 'String')), blanks(1)','������������� ������', blanks(1)',['���: ' num2str(length(vhk)) '/' num2str(length(ji)) ],['��: ' num2str(length(kk)) '/' num2str(length(k1)+length(kk)) blanks(1) ],...
   ['����: ' num2str(length(kv)) '/' num2str(length(kv1)+length(kk)) ],['������: ' num2str(length(vhkv)) '/' num2str(length(vhk)) ],...
   ['����: ' num2str(length(vhkk)) '/' num2str(length(vhk)) ],['�����: ' num2str(length(kkv)) '/' num2str(length(kk)) ],...
   ['���: ' num2str(length(kkk)) '/' num2str(length(kk)) ],['�������: ' num2str(length(vhkkv)) '/' num2str(length(vhkk)) ]);

set(handles.text, 'String', semantik_anal)


Checkbox={'Save ���','Save ��','Save ��','Save ����','Save ����','Save ���','Save �����','Save ���'};
Variables={['vhk' num2str(opitnum)],['kk' num2str(opitnum)],['kv' num2str(opitnum)],['vhkv' num2str(opitnum)],['vhkk' num2str(opitnum)],['kkv' num2str(opitnum)],['vhkkv' num2str(opitnum)],['kkk' num2str(opitnum)],};
Items={dolia_vhk,dolia_kk,dolia_kv,dolia_vhkv,dolia_vhkk,dolia_kkv,dolia_vhkkv,dolia_kkk,};
Select0=[1,1,1,1,1,1,1,0];
Select=logical(Select0);
export2wsdlg(Checkbox,Variables,...
Items,'������������� ������',Select)

end

% hObject    handle to semantika (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in zoni.
function zoni_Callback(hObject, eventdata, handles)
% hObject    handle to zoni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of zoni


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in connection.
function connection_Callback(hObject, eventdata, handles)
% hObject    handle to connection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of connection
