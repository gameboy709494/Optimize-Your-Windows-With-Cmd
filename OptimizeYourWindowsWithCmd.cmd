:: Windows cmd ��ȡ���ļ����������ַ�����ANSI��
::��������㷢�����п������ֵֹģ���ȷ��ʹ����ȷ���ַ���
@cls
@echo off

REM fsutil>nul
REM if errorlevel 1 (
  REM echo ���Թ���ԱȨ�����б��ű���
  REM echo PS���Ҽ������ű�����������Թ���Ա������У�A������
  REM pause>nul
  REM exit
REM )

::���ó��ӱ�����չ
setlocal enabledelayedexpansion

::�˲����������Ҿ��ò���Ҫ��Windows����
::Windows�¹������Ĺ�����sc
for /f "eol=#" %%I in (server.txt) do (
  sc query %%I
  REM if errorlevel 1 (
    REM echo ����%%I�����ڡ�
    REM goto continue
  REM )
  sc stop %%I
  REM if errorlevel 1 (
    REM echo ֹͣ����%%Iʧ�ܣ�
    REM goto continue
  REM )
  sc delete %%I
  REM if errorlevel 1 (
    REM echo ɾ������%%Iʧ�ܣ�
    REM goto continue
  REM )
)

pause