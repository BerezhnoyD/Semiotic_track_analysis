number=input('¬ведите число опытов: ');
tab=[];
for a=1:number
    eval(['vhk' '=' ['vhk' num2str(a)] ';' ]);
    eval(['kk' '=' ['kk' num2str(a)] ';' ]);
    eval(['kv' '=' ['kv' num2str(a)] ';' ]);
    eval(['vhkv' '=' ['vhkv' num2str(a)] ';' ]);
    eval(['vhkk' '=' ['vhkk' num2str(a)] ';' ]);
    eval(['kkv' '=' ['kkv' num2str(a)] ';' ]);
    eval(['vhkkv' '=' ['vhkkv' num2str(a)] ';' ]);
        
    tab=[tab;[vhk kk kv vhkv vhkk kkv vhkkv [0;0] [0;0] [0;0] [0;0] [0;0]]];
end


