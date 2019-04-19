# Cloudns
Cloudns ip autoupdate

## ip.bat
- 获取ip使用
`` for /f "tokens=16" %%i in ('ipconfig ^|find /i "202"') do set ip=%%i
- 里的202为ip特征，可改为115，202，192，58等等

## ip_alone.bat
- 可以独立使用，缺点是会打开一个网页

## ip_wget.bat
- 准备配合wget使用，暂时没有成功

## ip.txt
- 用于将bat和vbs联系起来，bat获取ip并保存，vbs读取ip并静默访问网址

## updateIP.vbs
- 静默执行ip.bat，并更新ip给Cloudns

## PS：
- 已使用相对目录
- ip.txt初始不存在也能使用
- vbs延迟5s，确保ip.txt已生成，可更改
