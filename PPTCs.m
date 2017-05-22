function varargout = PPTCs(varargin)
% PPTCS MATLAB code for PPTCs.fig
%      PPTCS, by itself, creates a new PPTCS or raises the existing
%      singleton*.
%
%      H = PPTCS returns the handle to a new PPTCS or the handle to
%      the existing singleton*.
%
%      PPTCS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PPTCS.M with the given input arguments.
%
%      PPTCS('Property','Value',...) creates a new PPTCS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PPTCs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PPTCs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PPTCs

% Last Modified by GUIDE v2.5 19-Feb-2017 18:32:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PPTCs_OpeningFcn, ...
                   'gui_OutputFcn',  @PPTCs_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PPTCs is made visible.
function PPTCs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PPTCs (see VARARGIN)

% Choose default command line output for PPTCs
handles.output = hObject;
axes(handles.axes3)
im=imread('s01.png');
imshow(im)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PPTCs wait for user response (see UIRESUME)
% uiwait(handles.fig1);


% --- Outputs from this function are returned to the command line.
function varargout = PPTCs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function h1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h1_edit as text
%        str2double(get(hObject,'String')) returns contents of h1_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','2854')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function h1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ta_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Ta_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ta_edit as text
%        str2double(get(hObject,'String')) returns contents of Ta_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','30')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Ta_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ta_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Relectancem_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Relectancem_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Relectancem_edit as text
%        str2double(get(hObject,'String')) returns contents of Relectancem_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.7')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Relectancem_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Relectancem_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function infacor_edit_Callback(hObject, eventdata, handles)
% hObject    handle to infacor_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of infacor_edit as text
%        str2double(get(hObject,'String')) returns contents of infacor_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.93')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function infacor_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to infacor_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tranmg_edit_Callback(hObject, eventdata, handles)
% hObject    handle to tranmg_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tranmg_edit as text
%        str2double(get(hObject,'String')) returns contents of tranmg_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.91')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function tranmg_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tranmg_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function absorbr_edit_Callback(hObject, eventdata, handles)
% hObject    handle to absorbr_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of absorbr_edit as text
%        str2double(get(hObject,'String')) returns contents of absorbr_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.95')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function absorbr_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to absorbr_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T6_edit_Callback(hObject, eventdata, handles)
% hObject    handle to T6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T6_edit as text
%        str2double(get(hObject,'String')) returns contents of T6_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','45')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function T6_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T7_edit_Callback(hObject, eventdata, handles)
% hObject    handle to T7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T7_edit as text
%        str2double(get(hObject,'String')) returns contents of T7_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','155')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function T7_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w_edit_Callback(hObject, eventdata, handles)
% hObject    handle to w_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w_edit as text
%        str2double(get(hObject,'String')) returns contents of w_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','2.55')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function w_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dco_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Dco_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dco_edit as text
%        str2double(get(hObject,'String')) returns contents of Dco_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.1')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Dco_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dco_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_edit_Callback(hObject, eventdata, handles)
% hObject    handle to L_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L_edit as text
%        str2double(get(hObject,'String')) returns contents of L_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','6.417')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function L_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x7_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x7_edit as text
%        str2double(get(hObject,'String')) returns contents of x7_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.8')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function x7_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h3_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h3_edit as text
%        str2double(get(hObject,'String')) returns contents of h3_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','191.81')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function h3_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h7_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h7_edit as text
%        str2double(get(hObject,'String')) returns contents of h7_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','2333.9')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function h7_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h8_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h8_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h8_edit as text
%        str2double(get(hObject,'String')) returns contents of h8_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','655.65')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function h8_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h8_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h9_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h9_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h9_edit as text
%        str2double(get(hObject,'String')) returns contents of h9_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','2751')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function h9_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h9_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rho_edit_Callback(hObject, eventdata, handles)
% hObject    handle to rho_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rho_edit as text
%        str2double(get(hObject,'String')) returns contents of rho_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','1.16')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function rho_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rho_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_edit_Callback(hObject, eventdata, handles)
% hObject    handle to v_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_edit as text
%        str2double(get(hObject,'String')) returns contents of v_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','1.1')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function v_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Mu_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Mu_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Mu_edit as text
%        str2double(get(hObject,'String')) returns contents of Mu_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','1.86e-8')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Mu_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mu_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kair_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Kair_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kair_edit as text
%        str2double(get(hObject,'String')) returns contents of Kair_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.0255')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Kair_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kair_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ts_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Ts_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ts_edit as text
%        str2double(get(hObject,'String')) returns contents of Ts_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','303.19')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Ts_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ts_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tc1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Tc1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tc1_edit as text
%        str2double(get(hObject,'String')) returns contents of Tc1_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','318')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Tc1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tc1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epscv_edit_Callback(hObject, eventdata, handles)
% hObject    handle to epscv_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epscv_edit as text
%        str2double(get(hObject,'String')) returns contents of epscv_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.88')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function epscv_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epscv_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function segma_edit_Callback(hObject, eventdata, handles)
% hObject    handle to segma_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of segma_edit as text
%        str2double(get(hObject,'String')) returns contents of segma_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','5.67e-8')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function segma_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to segma_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Trav_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Trav_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Trav_edit as text
%        str2double(get(hObject,'String')) returns contents of Trav_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','308')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Trav_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Trav_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epsr_edit_Callback(hObject, eventdata, handles)
% hObject    handle to epsr_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsr_edit as text
%        str2double(get(hObject,'String')) returns contents of epsr_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.88')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function epsr_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsr_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F12_edit_Callback(hObject, eventdata, handles)
% hObject    handle to F12_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F12_edit as text
%        str2double(get(hObject,'String')) returns contents of F12_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','1')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function F12_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F12_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dr_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Dr_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dr_edit as text
%        str2double(get(hObject,'String')) returns contents of Dr_edit as a double

% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.04')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Dr_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dr_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calc_pushbutton.
function Calc_pushbutton_Callback(hObject, eventdata, handles)
 global h1 h2 h3 h4 h5 h6 h7 h8 h9 Ta Relectancem infacor tranmg absorbr T6 T7 w Dco L x7 rho v Mu Kair Tc1 epscv Trav epsr Dr Ts segma F12 ST IND Qg1 Qg2
% hObject    handle to Calc_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% ##########################################
%Osama Sabir [2017,1,14,2,14,57.8370000000000]
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
h1_str = get(handles.h1_edit,'String');
h1 = str2double(h1_str);
h2_str = get(handles.h2_edit,'String');
h2 = str2double(h2_str);
h3_str = get(handles.h3_edit,'String');
 h3= str2double(h3_str);
 h4_str = get(handles.h4_edit,'String');
h4 = str2double(h4_str);
h5_str = get(handles.h5_edit,'String');
h5 = str2double(h5_str);
h6_str = get(handles.h6_edit,'String');
h6 = str2double(h6_str);
h7_str = get(handles.h7_edit,'String');
 h7 = str2double(h7_str);
h8_str = get(handles.h8_edit,'String');
  h8= str2double(h8_str);
h9_str = get(handles.h9_edit,'String');
 h9 = str2double(h9_str);
Ta_str = get(handles.Ta_edit,'String');
Ta = str2double(Ta_str);
Relectancem_str = get(handles.Relectancem_edit,'String');
Relectancem = str2double(Relectancem_str);
infacor_str = get(handles.infacor_edit,'String');
 infacor = str2double(infacor_str);
tranmg_str = get(handles.tranmg_edit,'String');
  tranmg= str2double(tranmg_str);
absorbr_str = get(handles.absorbr_edit,'String');
  absorbr= str2double(absorbr_str);
T6_str = get(handles.T6_edit,'String');
  T6= str2double(T6_str);
T7_str = get(handles.T7_edit,'String');
  T7= str2double(T7_str);
w_str = get(handles.w_edit,'String');
  w= str2double(w_str);
Dco_str = get(handles.Dco_edit,'String');
  Dco= str2double(Dco_str);
L_str = get(handles.L_edit,'String');
 L = str2double(L_str);
x7_str = get(handles.x7_edit,'String');
  x7= str2double(x7_str);
rho_str = get(handles.rho_edit,'String');
 rho = str2double(rho_str);
v_str = get(handles.v_edit,'String');
 v = str2double(v_str);
Mu_str = get(handles.Mu_edit,'String');
 Mu = str2double(Mu_str);
Kair_str = get(handles.Kair_edit,'String');
 Kair= str2double(Kair_str);
Tc1_str = get(handles.Tc1_edit,'String');
  Tc1= str2double(Tc1_str);
epscv_str = get(handles.epscv_edit,'String');
 epscv = str2double(epscv_str);
Trav_str = get(handles.Trav_edit,'String');
 Trav = str2double(Trav_str);
epsr_str = get(handles.epsr_edit,'String');
  epsr= str2double(epsr_str);
Dr_str = get(handles.Dr_edit,'String');
  Dr= str2double(Dr_str);
Ts_str = get(handles.Ts_edit,'String');
  Ts= str2double(Ts_str);
segma_str = get(handles.segma_edit,'String');
 segma= str2double(segma_str);
F12_str = get(handles.F12_edit,'String');
 F12 = str2double(F12_str);
%
Re = rho*v*Dco / Mu;
Nu = 0.3*(Re)^0.6;
hcca = Nu*Kair / Dco;
Tc = Ts;
hrca = epscv*segma*(Tc+Ta)*(Tc^2 + Ta^2);
hrrc = (segma*(Tc1^2 +Trav^2)*(Tc1 +Trav))/ (((1-epsr)/epsr)+(1/F12)+((1-epscv)/epscv)*(Dr/Dco));
UL1 = ( (Dr/(hcca+hrca)*Dco)+ (1/ hrrc) )^-1;
UL=UL1;
%%
set(handles.Re_edit,'String',Re);
set(handles.Nu_edit,'String',Nu);
set(handles.hcca_edit,'String',hcca);
set(handles.hrca_edit,'String',hrca);
set(handles.hrrc_edit,'String',hrrc);
set(handles.UL_edit,'String',UL);
%%
Dataread
PI = pi;
Lst_str = get(handles.Lst_edit,'String');
Lst = str2double(Lst_str);
% Lst=105;
% Lloc lati n
%     Lloc=100.97;
Lloc_str = get(handles.Lloc_edit,'String');
Lloc = str2double(Lloc_str);
%     Lloc=100.97;
lati_str = get(handles.lati_edit,'String');
lati = str2double(lati_str);
%     lati=((4.37*PI)./180);
n_str = get(handles.n_edit,'String');
n = str2double(n_str);
%     n=203;
    B = (360*(n-1)*PI./(365*180));
    S = 23.45*sin((360*PI*(284+n)./(365*180)));
    E = 229.18*(0.000075 +(0.001868*cos(B))-(0.032077*sin(B))-(0.014615*cos(2*B))-(0.04089*sin(2*B)));
for i=1:length(ST)
    ST1=ST(i); %from excel;
    DNI1=DNI(i);%from excel;
    
    Solartime = (ST1) + (( Lst-Lloc)./15) +(E./60);
    W = (((Solartime-12)*15)*(PI./180))*60;
    cosz= ((cosd(S))*(cosd(lati))*(cosd(W)))+((sind(S))*(sind(lati)));
    COXZ(i)= cosz;
    cosx= sqrt((cosz)^2 + ((cosd(S))^2 *(sind(W))^2));
    COSX(i)= cosx;
    x=acos (cosx)*(180./PI);
    X(i)= x;
    iam = cosx + 0.000884*(x)-0.00005369*(x)^2;
    IAM(i)= iam;
    IND(i) = DNI1* cosx;
end
axes(handles.axes1)
plot(ST,IND,'r',ST,COSX,'b' )
grid on
title('Hourly direct normal irradiation ')
xlabel({'Hours'})
ylabel({'DNI (w/m^2)'})
%%
axes(handles.axes2)
for i=1:length(ST)
    I = IND(i)
    % pause()
    h6 = ((1-x7)*h8)+(x7*h3)
    Tm =(T6+T7)/2
    DT = 70
    DT1 = 145
    Effo = (Relectancem * infacor *  tranmg * absorbr * IAM )
    Effc = (Effo) - (UL* (DT/I))
    EFFC{i}= Effc
    Effc1 = (Effo) - (UL* (DT1/I))
    EFFC1{i} = Effc1
    AP = (w-Dco)*L*4
    AP1 = (w-Dco)*L
    mcl = ((Effc *I*AP)/(h7 -h6))
    MCL{i}= mcl/1000;
    m = (1445.5*mcl)./ 2095.35
    M{i}= m/1000
    mf= mcl-m
    MF{i}= mf/1000
    Qg1{i} = (mcl *(h7-h6))
    Qg2{i}= (m * (h1-h9))
    YY(i)=mean(MCL{i});
    YYY(i)=mean(M{i});
%      figure,
%     plot3(IND,MCL{i},ones(size(IND))*ST(i),'r')
%     plot3(IND,M{i},ones(size(IND))*ST(i),'g').
%  plot(mean(MCL{i}),ST(i),'^r')
% plot(mean(M{i}),ST(i),'*g')
end
% hold off
y1=YY;
y1(1)=[];
y1(end)=[];
y2=YYY;
y2(1)=[];
y2(end)=[];
x=IND;
x(1)=[];
x(end)=[];
% figure,
 hold on 

% yyaxis left
plot(x,y1,'-^','LineWidth',1,'MarkerSize',10,'MarkerEdgeColor','r')
% yyaxis right
plot(x,y2,'--*','LineWidth',1,'MarkerSize',10,'MarkerEdgeColor','g')
 hold off
 grid on
title('Mass flow rate (kg/s)')
xlabel({'DNI (W/m^2)'})
ylabel({'Mass flow rate (kg/s)'})

legend('MCL','M','Location','northwest')

guidata(hObject, handles);
% ##########################################



function UL_edit_Callback(hObject, eventdata, handles)
% hObject    handle to UL_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UL_edit as text
%        str2double(get(hObject,'String')) returns contents of UL_edit as a double


% --- Executes during object creation, after setting all properties.
function UL_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UL_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h4_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h4_edit as text
%        str2double(get(hObject,'String')) returns contents of h4_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','192.22')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function h4_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h5_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h5_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h5_edit as text
%        str2double(get(hObject,'String')) returns contents of h5_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','192.33')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function h5_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h5_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h6_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h6_edit as text
%        str2double(get(hObject,'String')) returns contents of h6_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','284.57')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function h6_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to h2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h2_edit as text
%        str2double(get(hObject,'String')) returns contents of h2_edit as a double
if (isempty(input))
set(hObject,'String','2225')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function h2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Nu_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Nu_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nu_edit as text
%        str2double(get(hObject,'String')) returns contents of Nu_edit as a double


% --- Executes during object creation, after setting all properties.
function Nu_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nu_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Re_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Re_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Re_edit as text
%        str2double(get(hObject,'String')) returns contents of Re_edit as a double


% --- Executes during object creation, after setting all properties.
function Re_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Re_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hrca_edit_Callback(hObject, eventdata, handles)
% hObject    handle to hrca_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hrca_edit as text
%        str2double(get(hObject,'String')) returns contents of hrca_edit as a double


% --- Executes during object creation, after setting all properties.
function hrca_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hrca_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hrrc_edit_Callback(hObject, eventdata, handles)
% hObject    handle to hrrc_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hrrc_edit as text
%        str2double(get(hObject,'String')) returns contents of hrrc_edit as a double


% --- Executes during object creation, after setting all properties.
function hrrc_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hrrc_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hcca_edit_Callback(hObject, eventdata, handles)
% hObject    handle to hcca_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hcca_edit as text
%        str2double(get(hObject,'String')) returns contents of hcca_edit as a double


% --- Executes during object creation, after setting all properties.
function hcca_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hcca_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lati_edit_Callback(hObject, eventdata, handles)
% hObject    handle to lati_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lati_edit as text
%        str2double(get(hObject,'String')) returns contents of lati_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.076271')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function lati_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lati_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_edit_Callback(hObject, eventdata, handles)
% hObject    handle to n_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_edit as text
%        str2double(get(hObject,'String')) returns contents of n_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','203')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function n_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Lloc_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Lloc_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lloc_edit as text
%        str2double(get(hObject,'String')) returns contents of Lloc_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','100.97')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Lloc_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lloc_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Lst_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Lst_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lst_edit as text
%        str2double(get(hObject,'String')) returns contents of Lst_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','105')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Lst_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lst_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Effg_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Effg_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Effg_edit as text
%        str2double(get(hObject,'String')) returns contents of Effg_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.7')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Effg_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Effg_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Efft_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Efft_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Efft_edit as text
%        str2double(get(hObject,'String')) returns contents of Efft_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.6')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function Efft_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Efft_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Effm_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Effm_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Effm_edit as text
%        str2double(get(hObject,'String')) returns contents of Effm_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','0.7')
end
guidata(hObject, handles);
% ##########################################
% --- Executes during object creation, after setting all properties.
function Effm_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Effm_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SM_edit_Callback(hObject, eventdata, handles)
% hObject    handle to SM_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SM_edit as text
%        str2double(get(hObject,'String')) returns contents of SM_edit as a double
% ##########################################
%Osama Sabir 13-Jan-2017
%store the contents of input_edit as a string. if the string is not a
%number then input will be the defalut 
input = str2num(get(hObject,'String'));
%checks to see if input is empty. if so, default value = input_edit
if (isempty(input))
set(hObject,'String','1.2')
end
guidata(hObject, handles);
% ##########################################

% --- Executes during object creation, after setting all properties.
function SM_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SM_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse motion over figure - except title and menu.
function fig1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to fig1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get position information of the uicontrol 
%%
pos = get(hObject, 'currentpoint'); % get mouse location on figure
  x = pos(1); y = pos(2); % assign locations to x and y
% Mu:  viscosity ((N s/m2)############
bounds = get(handles.Mu_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
% test to see if mouse is within the uicontrol. 
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', ' Mu:  viscosity ((N s/m2)');
  else
      set(handles.screen,'string', 'Help ');
end
bounds = get(handles.Mu_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
% test to see if mouse is within the uicontrol. 
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', [ 'Mu:  viscosity ((N s/m2) ']);
%   else
%       set(handles.screen,'string', 'Help ');
end
% Ta: Temperature of ambient (K) #####
bounds = get(handles.Ta_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Ta: Temperature of ambient (K)');
end
bounds = get(handles.Ta_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Ta: Temperature of ambient (K)');
end
% ###############
% Relectancem: Reflectance of the mirror 
bounds = get(handles.Relectancem_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Relectancem: Reflectance of the mirror');
end
bounds = get(handles.Relectancem_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Relectancem: Reflectance of the mirror');
end
% ###############
% Infacor: Intercept factor
bounds = get(handles.infacor_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Infacor: Intercept factor');
end
bounds = get(handles.infacor_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Infacor: Intercept factor');
end
% ###############
% Tranmg: transmittance of the glass 
bounds = get(handles.tranmg_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Tranmg: transmittance of the glass');
end
bounds = get(handles.tranmg_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Tranmg: transmittance of the glass');
end
% ###############
% Absorbr : absorbance of the receiver 
bounds = get(handles.absorbr_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Absorbr : absorbance of the receiver');
end
bounds = get(handles.absorbr_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Absorbr : absorbance of the receiver');
end
% ###############
% T6: Temperature inlet filed collector at point 6
bounds = get(handles.T6_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'T6: Temperature inlet filed collector at point 6');
end
bounds = get(handles.T6_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'T6: Temperature inlet filed collector at point 6');
end
% ###############
%  T7: Temperature outlet filed collector at point 7
bounds = get(handles.T7_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'T7: Temperature outlet filed collector at point 7');
end
bounds = get(handles.T7_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'T7: Temperature outlet filed collector at point 7');
end
% ###############
%  W:  Collector width (m)
bounds = get(handles.w_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'W:  Collector width (m)');
end
bounds = get(handles.w_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'W:  Collector width (m)');
end
% ###############
%  Dco : Diameter of cover(m) 
bounds = get(handles.Dco_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Dco : Diameter of cover(m)');
end
bounds = get(handles.Dco_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Dco : Diameter of cover(m)');
end
% ###############
%  L: Collector length (m) 
bounds = get(handles.L_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'L: Collector length (m)');
end
bounds = get(handles.L_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'L: Collector length (m)');
end
% ###############
%  X7: Dryness at point 7
bounds = get(handles.x7_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'X7: Dryness at point 7');
end
bounds = get(handles.x7_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'X7: Dryness at point 7');
end
% ##############
% rho
bounds = get(handles.rho_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'rho :density (kg/m3)');
end
bounds = get(handles.rho_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'RHO: density (kg/m3)');
end
% ##############
%  v : velocity (m/s)
bounds = get(handles.v_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'v : velocity (m/s)');
end
bounds = get(handles.v_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'v : velocity (m/s)');
end
% ##############
% Kair : conductivity of air (kW/m)
bounds = get(handles.Kair_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Kair : conductivity of air (kW/m)');
end
bounds = get(handles.Kair_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Kair : conductivity of air (kW/m)');
end
% ##############
% Ts : Temperature of sky (K)
bounds = get(handles.Ts_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Ts : Temperature of sky (K)');
end
bounds = get(handles.Ts_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Ts : Temperature of sky (K)');
end
% ##############
% Tc1
bounds = get(handles.Tc1_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Tc1:Temperature of receiver tube (K)');
end
bounds = get(handles.Tc1_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'TC1: Temperature of receiver tube (K)');
end
% ##############
% epscv : emittance of the cover 
bounds = get(handles.epscv_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'epscv : emittance of the cover');
end
bounds = get(handles.epscv_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'epscv : emittance of the cover');
end
% ##############
% segma : Stefane Boltzman constanat (kW/m2 K4)
bounds = get(handles.segma_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'segma : Stefane Boltzman constanat (kW/m2 K4)');
end
bounds = get(handles.segma_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'segma : Stefane Boltzman constanat (kW/m2 K4)');
end
% ###########
%  Trav : Temperature of the receiver (K)
bounds = get(handles.Trav_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Trav : Temperature of the receiver (K)');
end
bounds = get(handles.Trav_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Trav : Temperature of the receiver (K)');
end
% ##############
%  Epsr: emittance of the receiver 
bounds = get(handles.epsr_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Epsr: emittance of the receiver');
end
bounds = get(handles.epsr_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Epsr: emittance of the receiver');
end
% ##############
% F12: Factor
bounds = get(handles.F12_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'F12: Factor');
end
bounds = get(handles.F12_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'F12: Factor');
end
% ##############
% Dr : Diameter of receiver (m)
bounds = get(handles.Dr_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Dr : Diameter of receiver (m)');
end
bounds = get(handles.Dr_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Dr : Diameter of receiver (m)');
end
% ##############
% lati: Latitude angle(�)
bounds = get(handles.lati_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'lati: Latitude angle(�)');
end
bounds = get(handles.lati_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'lati: Latitude angle(�)');
end
% ##############
%  n: Day of year
bounds = get(handles.n_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'n: Day of year');
end
bounds = get(handles.n_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'n: Day of year');
end
% ##############
% Lloc: Longitude  angle (�)
bounds = get(handles.Lloc_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Lloc: Longitude  angle (�)');
end
bounds = get(handles.Lloc_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Lloc: Longitude  angle (�)');
end
% ##############
%  Lst: Standard meridian 
bounds = get(handles.Lst_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Lst: Standard meridian');
end
bounds = get(handles.Lst_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Lst: Standard meridian');
end
% ##############
% Effg: Efficiency of generater
bounds = get(handles.Effg_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Effg: Efficiency of generater');
end
bounds = get(handles.Effg_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Effg: Efficiency of generater');
end
% ##############
%  Efft: Efficiency of turbine
bounds = get(handles.Efft_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Efft: Efficiency of turbine');
end
bounds = get(handles.Efft_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Efft: Efficiency of turbine');
end
% ##############
% Effm: Efficiency of motor
bounds = get(handles.Effm_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Effm: Efficiency of motor');
end
bounds = get(handles.Effm_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Effm: Efficiency of motor');
end
% ##############
% SM : Solar multiple
bounds = get(handles.SM_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'SM : Solar multiple');
end
bounds = get(handles.SM_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'SM : Solar multiple');
end
% ##############
% hrrc: The radiation heat coefficient between the receiver and the cover (kW/m2 K)
bounds = get(handles.hrrc_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'hrrc: The radiation heat coefficient between the receiver and the cover (kW/m2 K)');
end
bounds = get(handles.hrrc_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'hrrc: The radiation heat coefficient between the receiver and the cover (kW/m2 K)');
end
% ##############
% hcca
bounds = get(handles.hcca_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'hcca:Heat loss coefficient between the cover and ambient W/m2 C');
end
bounds = get(handles.hcca_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'hcca: Heat loss coefficient between the cover and ambient W/m2 C');
end
% ##############
% hrca : The radiation heat coefficient between ambient and the cover (kW/m2 K)
bounds = get(handles.hrca_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'hrca : The radiation heat coefficient between ambient and the cover (kW/m2 K)');
end
bounds = get(handles.hrca_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'hrca : The radiation heat coefficient between ambient and the cover (kW/m2 K)');
end
% ##############
% UL: Heat loss coefficient based on aperture area (W/ (m2. K))
bounds = get(handles.UL_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'UL: Heat loss coefficient based on aperture area (W/ (m2. K))');
end
bounds = get(handles.UL_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'UL: Heat loss coefficient based on aperture area (W/ (m2. K))');
end
% ##############
% Nu: Nusselt number
bounds = get(handles.Nu_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Nu: Nusselt number');
end
bounds = get(handles.Nu_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Nu: Nusselt number');
end
% ##############
% Re: Reynolds number
bounds = get(handles.Re_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Re: Reynolds number');
end
bounds = get(handles.Re_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Re: Reynolds number');
end
% ##############
% h1: Enthalpy at point 1
bounds = get(handles.h1_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h1: Enthalpy at point 1');
end
bounds = get(handles.h1_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h1: Enthalpy at point 1');
end
% ##############
% h2: Enthalpy at point 2
bounds = get(handles.h2_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h2: Enthalpy at point 2');
end
bounds = get(handles.h2_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h2: Enthalpy at point 2');
end
% ##############
% h3: Enthalpy at point 3
bounds = get(handles.h3_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h3: Enthalpy at point 3');
end
bounds = get(handles.h3_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h3: Enthalpy at point 3');
end
% ##############
% h4: Enthalpy at point 4
bounds = get(handles.h1_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h4: Enthalpy at point 4');
end
bounds = get(handles.h4_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h4: Enthalpy at point 4');
end
% ##############
% h5: Enthalpy at point 5
bounds = get(handles.h5_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h5: Enthalpy at point 5');
end
bounds = get(handles.h5_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h5: Enthalpy at point 5');
end
% ##############
% h6: Enthalpy at point 6
bounds = get(handles.h6_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h6: Enthalpy at point 6');
end
bounds = get(handles.h6_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h6: Enthalpy at point 6');
end
% ##############
% h7: Enthalpy at point 7
bounds = get(handles.h7_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h7: Enthalpy at point 7');
end
bounds = get(handles.h7_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h7: Enthalpy at point 7');
end
% ##############
% h8: Enthalpy at point 8
bounds = get(handles.h8_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h8: Enthalpy at point 8');
end
bounds = get(handles.h8_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h8: Enthalpy at point 8');
end
% ##############
% h9: Enthalpy at point 9
bounds = get(handles.h9_edit,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h9: Enthalpy at point 9');
end
bounds = get(handles.h9_text,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'h9: Enthalpy at point 9');
end
% ##############
% ************
% Calc_pushbutton
bounds = get(handles.Calc_pushbutton,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Calculate');
end
bounds = get(handles.Calc_pushbutton,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'Calculate');
end
% ##############
% &&&&&&&&&&&
% Help_pushbutton
bounds = get(handles.Help_pushbutton,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'EXTENDED HELP');
end
bounds = get(handles.Help_pushbutton,'position');
lx = bounds(1); ly = bounds(2);
lw = bounds(3); lh = bounds(4);
if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
    set(handles.screen, 'string', 'EXTENDED HELP');
end
% ############

 guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Help_pushbutton.
function Help_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Help_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiopen('Help.pdf',1)
guidata(hObject, handles);
