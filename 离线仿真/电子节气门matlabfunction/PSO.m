%------��������Ⱥ�Ż��㷨��Particle Swarm Optimization��-----------
%------���ƣ���������Ⱥ�Ż��㷨��PSO��
%------���ã�����Ż�����
%------ʱ�䣺2006��8��17�� <CopyRight@dReAmsUn>
function UU=PSO(H,G,c,b)
% clear all;
% clc;
%format long;
%------������ʼ������----------------------------------------------
c1=1.4962;             %ѧϰ����1
c2=1.4962;             %ѧϰ����2
% c1=2;             %ѧϰ����1
% c2=2;             %ѧϰ����2
w=0.7298;              %����Ȩ��
MaxDT=20;            %����������
D=2;                  %�����ռ�ά����δ֪��������
N=20;                  %��ʼ��Ⱥ�������Ŀ
eps=10^(-6);           %���þ���(����֪��Сֵʱ����)
%------��ʼ����Ⱥ�ĸ���(�����������޶�λ�ú��ٶȵķ�Χ)------------
r=0.1;
% fid=fopen('randac_vc.txt','r');
for i=1:N
    for j=1:D
        %x(i,j)=0.0001*num(a);  %�����ʼ��λ��
        x(i,j)=0.001*my_random;  %�����ʼ��λ��
        v(i,j)=0*my_random;  %�����ʼ���ٶ�
    end
end


%------�ȼ���������ӵ���Ӧ�ȣ�����ʼ��Pi��Pg----------------------
for i=1:N
    p(i)=fitness(x(i,:),D,H,G,c,b,r);
    y(i,:)=x(i,:);
end

pg=x(1,:);             %PgΪȫ������
for i=2:N
    if fitness(x(i,:),D,H,G,c,b,r)<fitness(pg,D,H,G,c,b,r)
        pg=x(i,:);
    end
end

%------������Ҫѭ�������չ�ʽ���ε�����ֱ�����㾫��Ҫ��------------

for t=1:MaxDT
    
    w=0.8-0.6*t/MaxDT;
    for i=1:N
        randac1=my_random;
        randac2=my_random;
        v(i,:)=w*v(i,:)+1*c1*randac1*(y(i,:)-x(i,:))+1*c2*randac2*(pg-x(i,:));
%         if v(i,:)>1
%             v(i,:)=1;
%         end
%         if v(i,:)<-1
%             v(i,:)=-1;
%         end
        x(i,:)=x(i,:)+v(i,:);
        for k=1:D
            if  x(i,k)>1
              x(i,k)=1;
            end
            if x(i,k)<-1
                x(i,k)=-1;
            end
        end
        if fitness(x(i,:),D,H,G,c,b,r)<p(i)
            p(i)=fitness(x(i,:),D,H,G,c,b,r);
            y(i,:)=x(i,:);
        end
        if p(i)<fitness(pg,D,H,G,c,b,r)
            pg=y(i,:);
        end
%         for k=1:D
%         if pg(k)>1
%            pg(k)=1;
%         end
%         if pg(k)<-1
%             pg(k)=-1;
%         end
%         end
    end
   % Pbest(t)=fitness(pg,D,H,G,c,b,r);
%     if t>1&&(Pbest(t)-Pbest(t-1))<0.0001
%         break;
%     end

end
%------������������
% disp('*************************************************************')
% disp('������ȫ������λ��Ϊ��')
% Solution=pg'
% disp('���õ����Ż���ֵΪ��')
% Result=fitness(pg,D)
% disp('*************************************************************')
UU=pg';
%------�㷨����---DreamSun GL & HF----------------------------------- 

  