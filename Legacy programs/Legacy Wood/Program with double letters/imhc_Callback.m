% --- Executes on button press in imhc.
function imhc_Callback(hObject, eventdata, handles)


semant=[];
for u=1:length(sem_zon)
experim=sem_zon{u};
semant=[semant '_' experim];
end

%���
vhk=[]
vhk_p=strfind(semant, '���')
vhk_p=[vhk_p strfind(semant, '���')]
vhk_n=strfind(semant, '���')
vhk_n=[vhk_n strfind(semant, '���')]
vhk_np=strfind(semant, '����')
vhk_np=[vhk_np strfind(semant, '����')]
vhk_np=[vhk_np strfind(semant, '����')]
vhk_np=[vhk_np strfind(semant, '����')]
vhk3=[vhk_n vhk_p]
vhk4=vhk_np
semant1=semant
ii=strfind(semant1, '����')
ii=[ii strfind(semant1, '����')]
ii=[ii strfind(semant1, '���')]
ii=[ii strfind(semant1, '���')]
semant1(ii)='_'
ji=strfind(semant1, '�')
clear semant1
vhk=[vhk vhk_p vhk_n vhk_np]

'���� - ��������'
[length(vhk) length(vhk_n)]
'---------'
length(ji)

dolia_vhk=length(vhk)
dolia_vhk=[dolia_vhk; length(ji)]

dolia_vhkn=length(vhk_n)
dolia_vhkn=[dolia_vhkn; length(ji)]

%��
kk=[]
kk_p=strfind(semant, '���')
kk_p=[kk_p strfind(semant, '���')]
kk_n=strfind(semant, '���')
kk_n=[kk_n strfind(semant, '���')]
kk_np=strfind(semant, '����')
kk_np=[kk_np strfind(semant, '����')]
kk_np=[kk_np strfind(semant, '����')]
kk_np=[kk_np strfind(semant, '����')]
kk=[kk kk_p kk_n kk_np]
kk3=[kk_p kk_n]
kk4=kk_np
semant1=semant
for k=kk3
    semant1(k:(k+2))='_'
end
for k=kk4
semant1(k:(k+3))='_'
end
oa=strfind(semant1, '_��')
oa=[oa strfind(semant1, '_��')]
ao=strfind(semant1, '��_')
ao=[ao strfind(semant1, '��_')]
a_=[oa ao]
for k=a_
semant1(k:(k+2))='_' 
end
og=strfind(semant1, '_��')
og=[og strfind(semant1, '_��')]
go=strfind(semant1, '��_')
go=[go strfind(semant1, '��_')]
g_=[og go]
for k=g_
semant1(k:(k+2))='_'
end
ooa=strfind(semant1, '_���')
ooa=[ooa strfind(semant1, '_���')]
aoo=strfind(semant1, '���_')
aoo=[aoo strfind(semant1, '���_')]
a_=[ooa aoo]
for k=a_
semant1(k:(k+3))='_' 
end
oog=strfind(semant1, '_���')
oog=[oog strfind(semant1, '_���')]
goo=strfind(semant1, '���_')
goo=[goo strfind(semant1, '���_')]
g_=[oog goo]
for k=g_
semant1(k:(k+3))='_'
end
aa=strfind(semant1, '����')
aa=[aa strfind(semant1, '����')]
aa=[aa strfind(semant1, '���')]
aa=[aa strfind(semant1, '���')]
semant1(aa)='_'
gg=strfind(semant1, '����')
gg=[gg strfind(semant1, '����')]
gg=[gg strfind(semant1, '���')]
gg=[gg strfind(semant1, '���')]
semant1(gg)='_'
k1=strfind(semant1,'�')
k1=[k1 strfind(semant1, '�')]

'�������� - ��������'
[length(kk) length(kk_n)]
'---------'
length(k1)+length(kk)

dolia_kk=length(kk)
dolia_kk=[dolia_kk; length(k1)+length(kk)]

dolia_kkn=length(kk_n)
dolia_kkn=[dolia_kkn; length(k1)+length(kk)]

%����
kv=[]
kv_=strfind(semant,'��')
kv_=[kv_ strfind(semant, '��')]
kv_n=strfind(semant, '���')
kv_n=[kv_n strfind(semant, '���')]
kv_n=[kv_n strfind(semant, '���')]
kv_n=[kv_n strfind(semant, '���')]
kv_np=strfind(semant, '����')
kv_np=[kv_np strfind(semant, '����')]
kv_np=[kv_np strfind(semant, '����')]
kv_np=[kv_np strfind(semant, '����')]
kv=[kv kv_ kv_n kv_np]
kv2=kv_
kv3=kv_n
kv4=kv_np

kv1=strfind(semant1,'��')
kv1=[kv1 strfind(semant1, '��')]
kv1=[kv1 strfind(semant1, '���')]
kv1=[kv1 strfind(semant1, '���')]
kv1=[kv1 strfind(semant1, '���')]
kv1=[kv1 strfind(semant1, '���')]
kv1=[kv1 strfind(semant1, '����')]
kv1=[kv1 strfind(semant1, '����')]
kv1=[kv1 strfind(semant1, '����')]
kv1=[kv1 strfind(semant1, '����')]
clear semant1

'�������� - �����'
[length(kv) length(kv_n)]
'---------'
length(kv1)+length(kk)

dolia_kv=length(kv)
dolia_kv=[dolia_kv; length(kv1)+length(kk)]

dolia_kvn=length(kv_n)
dolia_kvn=[dolia_kvn; length(kv1)+length(kk)]



%%%%%%%%%%%%%%%%%%%%����������� �� ���������� ������
semant1=semant
for k=vhk3
    semant1(k:(k+1))='_'
    semant1(k+2)='1'
end
for k=vhk4
    semant1(k:(k+2))='_'
    semant1(k+3)='1'
end
for k=kk3
    semant1(k)='2'
    semant1(k+1)='_'
    semant1(k+2)='2'
end
for k=kk4
    semant1(k)='2'
    semant1(k+1)='_'
    semant1(k+2)='_'
    semant1(k+3)='2'
end
for k=kv2
    semant1(k)='3'
    semant1(k+1)='_'
    
end
for k=kv3
    semant1(k)='3'
    semant1(k+1)='_'
    semant1(k+2)='_'
end
for k=kv4
    semant1(k)='3'
    semant1(k+1)='_'
    semant1(k+2)='_'
    semant1(k+3)='_'
end

%������
vhkv_n=[]
vhkv_p=[]
for k=vhk_n
    vhkv_n=[vhkv_n strfind(kv,k+2)]
end
for k=vhk_np
    vhkv_n=[vhkv_n strfind(kv,k+3)]
end
for k=vhk_p
    vhkv_n=[vhkv_n strfind(kv_n,k+2)]
    vhkv_n=[vhkv_n strfind(kv_np,k+2)]
end
for k=vhk_p
    vhkv_p=[vhkv_p strfind(kv_,k+2)]
end
trig3=[]
trig4=[]
trig=[]
trig3=[trig strfind(semant1, '1�3')]
trig3=[trig3 strfind(semant1, '1�3')]
trig4=[trig strfind(semant1, '1��3')]
trig4=[trig4 strfind(semant1, '1��3')]
trig=[trig3 trig4]
if isempty(trig)==0
    for k=vhk_n
    vhkv_n=[vhkv_n strfind(trig,k+2)]
    trig3(strfind(trig3,k+2))=[]
    trig4(strfind(trig4,k+2))=[]
    end
    for k=vhk_np
    vhkv_n=[vhkv_n strfind(trig,k+3)]
    trig3(strfind(trig3,k+3))=[]
    trig4(strfind(trig4,k+3))=[]
    end
    for k=trig3
    vhkv_n=[vhkv_n strfind(kv_n,k+2)]
    vhkv_n=[vhkv_n strfind(kv_np,k+2)]
    end
    for k=trig4
    vhkv_n=[vhkv_n strfind(kv_n,k+3)]
    vhkv_n=[vhkv_n strfind(kv_np,k+3)]
    end
    for k=trig3
    vhkv_p=[vhkv_p strfind(kv_,k+2)]
    end
    for k=trig4
    vhkv_p=[vhkv_p strfind(kv_,k+3)]
    end
    
end

'����-��������-�����'
[length([vhkv_n vhkv_p]) length(vhkv_n)]
'------------'
length(vhk)

dolia_vhkv=length([vhkv_n vhkv_p])
dolia_vhkv=[dolia_vhkv; length(vhk)]

dolia_vhkvn=length(vhkv_n)
dolia_vhkvn=[dolia_vhkvn; length(vhk)]
    
%����
vhkk_n=[]
vhkk_p=[]
for k=vhk_n
    vhkk_n=[vhkk_n strfind(kk,k+2)]
end
for k=vhk_np
    vhkk_n=[vhkk_n strfind(kk,k+3)]
end
vhkk_n1=vhkk_n
vhkk_n2=[]
for k=vhkk_n1
    vhkk_n2=[vhkk_n2 kk(k)]
end

vhkk_n1=[]
for k=vhk_p
    vhkk_n=[vhkk_n strfind(kk_n,k+2)]
    vhkk_n1=[vhkk_n1 strfind(kk_n,k+2)]
end

for k=vhkk_n1
    vhkk_n2=[vhkk_n2 kk_n(k)]
end

vhkk_n1=[]
for k=vhk_p
    vhkk_n=[vhkk_n strfind(kk_np,k+2)]
    vhkk_n1=[vhkk_n1 strfind(kk_np,k+2)]
end

for k=vhkk_n1
    vhkk_n2=[vhkk_n2 kk_np(k)]
end

vhkk_p1=[]
vhkk_p2=[]
for k=vhk_p
    vhkk_p=[vhkk_p strfind(kk_p,k+2)]
    vhkk_p1=[vhkk_p1 strfind(kk_p,k+2)]
end

for k=vhkk_p1
    vhkk_p2=[vhkk_p2 kk_p(k)]
end

trig3=[]
trig4=[]
trig=[]
trig3=[trig strfind(semant1, '1�2')]
trig3=[trig3 strfind(semant1, '1�2')]
trig4=[trig strfind(semant1, '1��2')]
trig4=[trig4 strfind(semant1, '1��2')]
trig=[trig3 trig4]
if isempty(trig)==0
    vhkk_n13=[]
    vhkk_n14=[]
    for k=vhk_n
    vhkk_n=[vhkk_n strfind(trig3,k+2)]
    vhkk_n13=[vhkk_n13 strfind(trig3,k+2)]
    for k=vhkk_n13
    vhkk_n2=[vhkk_n2 trig3(k)+2]
    end
    vhkk_n=[vhkk_n strfind(trig4,k+2)]
    vhkk_n14=[vhkk_n14 strfind(trig4,k+2)]
    for k=vhkk_n14
    vhkk_n2=[vhkk_n2 trig3(k)+3]
    end
    trig3(strfind(trig3,k+2))=[]
    trig4(strfind(trig4,k+2))=[]
    end
    
   
    vhkk_n13=[]
    vhkk_n14=[]
    for k=vhk_np
    vhkk_n=[vhkk_n strfind(trig3,k+3)]
    vhkk_n13=[vhkk_n13 strfind(trig3,k+3)]
    for k=vhkk_n13
    vhkk_n2=[vhkk_n2 trig3(k)+2]
    end
    vhkk_n=[vhkk_n strfind(trig4,k+3)]
    vhkk_n14=[vhkk_n14 strfind(trig4,k+3)]
    for k=vhkk_n14
    vhkk_n2=[vhkk_n2 trig3(k)+3]
    end
    trig3(strfind(trig3,k+3))=[]
    trig4(strfind(trig4,k+3))=[]
    end
    
    
    for k=trig3
    vhkk_n=[vhkk_n strfind(kk_n,k+2)]
    if isempty(strfind(kk_n,k+2))==0
        vhkk_n2=[vhkk_n2 k+2]  
    end
    vhkk_n=[vhkk_n strfind(kk_np,k+2)]
    if isempty(strfind(kk_np,k+2))==0
        vhkk_n2=[vhkk_n2 k+2]  
    end
    end
    for k=trig4
    vhkk_n=[vhkk_n strfind(kk_n,k+3)]
    if isempty(strfind(kk_n,k+3))==0
        vhkk_n2=[vhkk_n2 k+3]  
    end
    vhkk_n=[vhkk_n strfind(kk_np,k+3)]
    if isempty(strfind(kk_np,k+3))==0
        vhkk_n2=[vhkk_n2 k+3]  
    end
    end
    for k=trig3
    vhkk_p=[vhkk_p strfind(kk_p,k+2)]
    if isempty(strfind(kk_p,k+2))==0
        vhkk_p2=[vhkk_p2 k+2]  
    end
    end
    for k=trig4
    vhkk_p=[vhkk_p strfind(kk_p,k+3)]
    if isempty(strfind(kk_p,k+3))==0
        vhkk_p2=[vhkk_p2 k+3]  
    end
    end
    
end

'����-��������-��������'
[length([vhkk_n vhkk_p]) length(vhkk_n)]
'------------'
length(vhk)

dolia_vhkk=length([vhkk_n vhkk_p])
dolia_vhkk=[dolia_vhkk; length(vhk)]

dolia_vhkkn=length(vhkk_n)
dolia_vhkkn=[dolia_vhkkn; length(vhk)]

%�����
kkv_n=[]
kkv_p=[]
kkv_n1=[]
kkv_p1=[]

for k=kk_n
    kkv_n=[kkv_n strfind(kv,k+2)]
    if isempty(strfind(kv,k+2))==0
        kkv_n1=[kkv_n1 k]
    end
end
for k=kk_np
    kkv_n=[kkv_n strfind(kv,k+3)]
    if isempty(strfind(kv,k+3))==0
        kkv_n1=[kkv_n1 k]
    end
end
for k=kk_p
    kkv_n=[kkv_n strfind(kv_n,k+2)]
    kkv_n=[kkv_n strfind(kv_np,k+2)]
    if isempty([strfind(kv_n,k+2) strfind(kv_np,k+2)])==0
        kkv_n1=[kkv_n1 k]
    end
end
for k=kk_p
    kkv_p=[kkv_p strfind(kv_,k+2)]
    if isempty(strfind(kv_,k+2))==0
        kkv_p1=[kkv_p1 k]
    end
end
trig3=[]
trig4=[]
trig=[]
trig3=[trig strfind(semant1, '2�3')]
trig3=[trig3 strfind(semant1, '2�3')]
trig4=[trig strfind(semant1, '2��3')]
trig4=[trig4 strfind(semant1, '2��3')]
trig=[trig3 trig4]
if isempty(trig)==0
    for k=kk_n
    kkv_n=[kkv_n strfind(trig,k+2)]
    trig3(strfind(trig3,k+2))=[]
    trig4(strfind(trig4,k+2))=[]
    if isempty(strfind(trig,k+2))==0
        kkv_n1=[kkv_n1 k]
    end
    end
    for k=kk_np
    kkv_n=[kkv_n strfind(trig,k+3)]
    trig3(strfind(trig3,k+3))=[]
    trig4(strfind(trig4,k+3))=[]
    if isempty(strfind(trig,k+3))==0
        kkv_n1=[kkv_n1 k]
    end
    end
    for k=trig3
    kkv_n=[kkv_n strfind(kv_n,k+2)]
    kkv_n=[kkv_n strfind(kv_np,k+2)]
    if isempty([strfind(kv_n,k+2) strfind(kv_np,k+2)])==0
        kkv_n1=[kkv_n1 k-2]
    end
    end
    for k=trig4
    kkv_n=[kkv_n strfind(kv_n,k+3)]
    kkv_n=[kkv_n strfind(kv_np,k+3)]
    if isempty([strfind(kv_n,k+3) strfind(kv_np,k+3)])==0
        kkv_n1=[kkv_n1 k-2]
    end
    end
    for k=trig3
    kkv_p=[kkv_p strfind(kv_,k+2)]
    if isempty(strfind(kv_,k+2))==0
        kkv_p1=[kkv_p1 k-2]
    end
    end
    for k=trig4
    kkv_p=[kkv_p strfind(kv_,k+3)]
    if isempty(strfind(kv_,k+3))==0
        kkv_p1=[kkv_p1 k-2]
    end
    end
    
end

'��������-��������-�����'
[length([kkv_n kkv_p]) length(kkv_n)]
'------------'
length(kk)

dolia_kkv=length([kkv_n kkv_p])
dolia_kkv=[dolia_kkv; length(kk)]


%���
kkk_n=[]
kkk_p=[]
for k=kk_n
    kkk_n=[kkk_n strfind(kk,k+2)]
end
for k=kk_np
    kkk_n=[kkk_n strfind(kk,k+3)]
end
for k=kk_p
    kkk_n=[kkk_n strfind(kk_n,k+2)]
    kkk_n=[kkk_n strfind(kk_np,k+2)]
end
for k=kk_p
    kkk_p=[kkk_p strfind(kk_p,k+2)]
end
trig3=[]
trig4=[]
trig=[]
trig3=[trig strfind(semant1, '2�2')]
trig3=[trig3 strfind(semant1, '2�2')]
trig4=[trig strfind(semant1, '2��2')]
trig4=[trig4 strfind(semant1, '2��2')]
trig=[trig3 trig4]
if isempty(trig)==0
    for k=kk_n
    kkk_n=[kkk_n strfind(trig,k+2)]
    trig3(strfind(trig3,k+2))=[]
    trig4(strfind(trig4,k+2))=[]
    end
    for k=kk_np
    kkk_n=[kkk_n strfind(trig,k+3)]
    trig3(strfind(trig3,k+3))=[]
    trig4(strfind(trig4,k+3))=[]
    end
    for k=trig3
    kkk_n=[kkk_n strfind(kk_n,k+2)]
    kkk_n=[kkk_n strfind(kk_np,k+2)]
    end
    for k=trig4
    kkk_n=[kkk_n strfind(kk_n,k+3)]
    kkk_n=[kkk_n strfind(kk_np,k+3)]
    end
    for k=trig3
    kkk_p=[kkk_p strfind(kk_p,k+2)]
    end
    for k=trig4
    kkk_p=[kkk_p strfind(kk_p,k+3)]
    end
    
end

'��������-��������-��������'
[length([kkk_n kkk_p]) length(kkk_n)]
'------------'
length(kk)

dolia_kkk=length([kkk_n kkk_p])
dolia_kkk=[dolia_kkk; length(kk)]

dolia_kkkn=length(kkk_n)
dolia_kkkn=[dolia_kkkn; length(kk)]

%�������
vhkkv_n=[]
vhkkv_p=[]
for k=vhkk_n2
    vhkkv_n=[vhkkv_n strfind(kkv_n1,k)]
end
for k=vhkk_n2
    vhkkv_n=[vhkkv_n strfind(kkv_p1,k)]
end
for k=vhkk_p2
    vhkkv_n=[vhkkv_n strfind(kkv_n1,k)]
end
for k=vhkk_p2
    vhkkv_p=[vhkkv_p strfind(kkv_p1,k)]
end

'����-��������-��������-�����'
[length([vhkkv_n vhkkv_p]) length(vhkkv_n)]
'------------'
length([vhkk_n vhkk_p])

dolia_vhkkv=length([vhkkv_n vhkkv_p])
dolia_vhkkv=[dolia_vhkkv; length([vhkk_n vhkk_p])]

dolia_vhkkvn=length(vhkkv_n)
dolia_vhkkvn=[dolia_vhkkvn; length([vhkk_n vhkk_p])]

semantik_anal=strvcat((get(handles.text, 'String')), blanks(1)','������������� ������', blanks(1)',['���: ' num2str(length(vhk)) '/' num2str(length(ji)) blanks(1) '����: ' num2str(length(vhk_n)) '/' num2str(length(ji))],['��: ' num2str(length(kk)) '/' num2str(length(k1)+length(kk)) blanks(1) '���: ' num2str(length(kk_n)) '/' num2str(length(k1)+length(kk))],...
   ['����: ' num2str(length(kv)) '/' num2str(length(kv1)+length(kk)) blanks(1) '���� �: ' num2str(length(kv_n)) '/' num2str(length(kv1)+length(kk))],['������: ' num2str(length([vhkv_n vhkv_p])) '/' num2str(length(vhk)) blanks(1) '������ �: ' num2str(length(vhkv_n)) '/' num2str(length(vhk))],...
   ['����: ' num2str(length([vhkk_n vhkk_p])) '/' num2str(length(vhk)) blanks(1) '���� �: ' num2str(length(vhkk_n)) '/' num2str(length(vhk))],['�����: ' num2str(length([kkv_n kkv_p])) '/' num2str(length(kk)) blanks(1) '����� �: ' num2str(length(kkv_n)) '/' num2str(length(kk))],...
   ['���: ' num2str(length([kkk_n kkk_p])) '/' num2str(length(kk)) blanks(1) '��� �: ' num2str(length(kkk_n)) '/' num2str(length(kk))],['�������: ' num2str(length([vhkkv_n vhkkv_p])) '/' num2str(length([vhkk_n vhkk_p])) blanks(1) '������� �: ' num2str(length(vhkkv_n)) '/' num2str(length([vhkk_n vhkk_p]))]);

set(handles.text, 'String', semantik_anal)




Checkbox={'Save ���','Save ����','Save ��','Save ���','Save ��','Save ���','Save ����','Save ����','Save ���','Save �����','Save ���','Save �����','Save ������','Save �����','Save ����'}
Variables={['vhk' num2str(opitnum)],['vhkn' num2str(opitnum)],['kk' num2str(opitnum)],['kkn' num2str(opitnum)],['kv' num2str(opitnum)],['kvn' num2str(opitnum)],['vhkv' num2str(opitnum)],['vhkk' num2str(opitnum)],['kkv' num2str(opitnum)],['vhkkv' num2str(opitnum)],['kkk' num2str(opitnum)],['vhkkn' num2str(opitnum)],['vhkkvn' num2str(opitnum)],['vhkvn' num2str(opitnum)],['kkkn' num2str(opitnum)]}
Items={dolia_vhk,dolia_vhkn,dolia_kk,dolia_kkn,dolia_kv,dolia_kvn,dolia_vhkv,dolia_vhkk,dolia_kkv,dolia_vhkkv,dolia_kkk,dolia_vhkkn,dolia_vhkkvn,dolia_vhkvn,dolia_kkkn}
Select0=[1,0,1,0,0,0,0,1,1,1,0,0,0,0,0]
Select=logical(Select0)
export2wsdlg(Checkbox,Variables,...
Items,'������������� ������',Select)
