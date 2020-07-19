%module(package="simple") simple

%pythoncode %{
import pkg_resources
ASSETS = pkg_resources.resource_filename('simple','assets')
%}

%{
extern int bla(int num);
%}

extern int bla(int num);

