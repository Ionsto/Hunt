g++ -flto *.cpp -o Hunter -std=c++17 -ffast-math -fopenmp -march=native -O2
Remove-Item Render\\* 
Remove-Item RenderImage\\* 
Remove-Item Games\\* 
.\Hunter.exe
#python.exe .\showrenderdata.py
