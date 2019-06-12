@echo off
echo.

set present_working_dir=%cd%
set present_working_dir=%present_working_dir:\=/%
set present_working_dir=%present_working_dir:C:=/mnt/c%

set bash_path=%~dp0

pushd %bash_path%\mybash
start /B /wait docker-compose run --rm service_mybash
popd

echo.
@echo on