
#include <iostream>
using namespace std;

#include "get_input.h"


void get_input(double y[txt_size],double ref[txt_size])
{

				//y
		FILE *fp_y;

		if(fp_y= fopen("F:\\OpenHW_ECU\\HLS\\y_14.txt","r")) //��ֻ����ʽ���ı��ĵ�
			puts("���ļ��ɹ�");
	    else
			puts("���ļ�ʧ��");

		for(int i  = 0;i < txt_size;i++)
			fscanf(fp_y,"%lf" ,&y[i]);  //two data

		fclose(fp_y);
		
		//ref
		FILE *fp_ref;

		if(fp_ref= fopen("F:\\OpenHW_ECU\\HLS\\ref_14.txt","r")) //��ֻ����ʽ���ı��ĵ�
			puts("���ļ��ɹ�");
	    else
			puts("���ļ�ʧ��");

		for(int i  = 0;i < txt_size;i++)
			fscanf(fp_ref,"%lf" ,&ref[i]);  //two data

		fclose(fp_ref);
}







void write_result_u_c(double u_c[txt_size])
{
	//u
	FILE *fp_u_c;
	if(fp_u_c = fopen("F:\\OpenHW_ECU\\HLS\\u_c14_2.txt","a+"))  //��׷�ӵķ�ʽ���ı��ĵ����ĵ��ɲ����ڣ�д��ʱ����ԭ�����ݣ�������д���ļ�β;
		puts("���ļ��ɹ�");
	else
		puts("���ļ�ʧ��");

	for(int i  = 0;i < txt_size;i++)
			fprintf(fp_u_c,"%lf\n",u_c[i]);  
	fclose(fp_u_c);
	
}
