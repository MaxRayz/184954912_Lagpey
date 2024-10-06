@echo off
:menu
echo.
echo ____________________________________
echo.
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
echo 4. Exit
echo ____________________________________
echo.
choice /c 1234 /m "Enter your choice:"

if errorlevel 4 goto exit
if errorlevel 3 goto quadrilateral
if errorlevel 2 goto triangle
if errorlevel 1 goto circle

:circle
echo.
echo ___________________________________________________________________
echo.
echo Please give a "radius" in order to calculate for its area.
echo Note that a radius higher than 1000 will give the wrong answer.
echo ___________________________________________________________________
echo.
set /p ans=Radius:
set /a sqr=%ans% * %ans%
set /a CircleArea=%sqr% * 314
echo CircleArea=%CircleArea%
echo.
pause
cls
echo Previous CircleArea = %CircleArea%
goto menu

:triangle
echo.
echo ___________________________________________________________________
echo.
echo Please give the "sides" of a triangle to calculate for its area.
echo ___________________________________________________________________
echo.
set /p triangleB=Base of the triangle:
set /p triangleH=Height of the triangle:
set /a TriangleArea=%triangleB% * %triangleH% / 2
echo TriangleArea=%TriangleArea%
echo.

:: Triangle Category
if %triangleB%==%triangleH% (
    goto isosecles
) else (
    goto scalene
  )

:: For Triangles
:isosecles  
echo The triangle is an isosceles, possibly an equilateral triangle.
echo.
pause
cls
echo Previous TriangleArea = %TriangleArea%
goto menu

:scalene
echo The triangle is a scalene triangle.
echo.
pause
cls
echo Previous TriangleArea = %TriangleArea%
goto menu


:quadrilateral
echo.
echo ___________________________________________________________________
echo.
echo Please give the "length" and "width" to calculate for its area.
echo ___________________________________________________________________
echo.
set /p width=Width:
set /p height=Height:
set /a QuadArea=%width% * %height%
echo QuadArea=%QuadArea%
echo.

:: Quadrilateral Category
if %width%==%height% (
    goto square
) else (
    goto rectangle
)

:: For Quads
:square
echo The quadrilateral is a square.
echo.
pause
cls
echo Previous QuadArea = %QuadArea%
goto menu

:rectangle
echo The quadrilateral is a rectangle.
echo.
pause
cls
echo Previous QuadArea = %QuadArea%
goto menu


:exit
echo.
echo Thank you and goodbye!
echo.
pause
exit
