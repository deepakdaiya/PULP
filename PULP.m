function varargout = PULP(varargin)
% PULP MATLAB code for PULP.fig
% 
%   This code can be used to see the effect of various order (upto fourth) spectral phase
%   terms on the profile of an mode-locked ultrashort laser pulse. 
% 
%      PULP, by itself, creates a new PULP or raises the existing
%      singleton*.
%
%      H = PULP returns the handle to a new PULP or the handle to
%      the existing singleton*.
%
%      PULP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PULP.M with the given input arguments.
%
%      PULP('Property','Value',...) creates a new PULP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PULP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PULP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PULP

% Last Modified by GUIDE v2.5 24-Feb-2020 12:08:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PULP_OpeningFcn, ...
                   'gui_OutputFcn',  @PULP_OutputFcn, ...
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


% --- Executes just before PULP is made visible.
function PULP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PULP (see VARARGIN)

% Choose default command line output for PULP
handles.output = hObject;

% Allows interactive toolbar for plot modification
set(hObject,'Toolbar','figure')


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PULP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PULP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tp_Callback(hObject, eventdata, handles)
% hObject    handle to tp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tp as text
%        str2double(get(hObject,'String')) returns contents of tp as a double


% --- Executes during object creation, after setting all properties.
function tp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Central_wl_Callback(hObject, eventdata, handles)
% hObject    handle to Central_wl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Central_wl as text
%        str2double(get(hObject,'String')) returns contents of Central_wl as a double


% --- Executes during object creation, after setting all properties.
function Central_wl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Central_wl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GD_Callback(hObject, eventdata, handles)
% hObject    handle to GD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GD as text
%        str2double(get(hObject,'String')) returns contents of GD as a double


% --- Executes during object creation, after setting all properties.
function GD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GDD_Callback(hObject, eventdata, handles)
% hObject    handle to GDD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GDD as text
%        str2double(get(hObject,'String')) returns contents of GDD as a double


% --- Executes during object creation, after setting all properties.
function GDD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GDD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TOD_Callback(hObject, eventdata, handles)
% hObject    handle to TOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TOD as text
%        str2double(get(hObject,'String')) returns contents of TOD as a double


% --- Executes during object creation, after setting all properties.
function TOD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FOD_Callback(hObject, eventdata, handles)
% hObject    handle to FOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FOD as text
%        str2double(get(hObject,'String')) returns contents of FOD as a double


% --- Executes during object creation, after setting all properties.
function FOD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

n=2^20; 
T=str2num(get(handles.tp,'string'));
T=T*1e-15;
lambda=str2num(get(handles.Central_wl,'string'));
lambda=lambda*1e-9;
w=2*pi*3e8/lambda;
t =linspace(-500,500,n)*T ;   % time grid
dT=abs(t(1)-t(2));  % Time interval
V =2*pi*(-n/2:n/2-1) /((n-1)*dT );   % Angular frequency grid
Vabs = V+w ;   %absolute frequency
WL = 2*pi*3e8./Vabs ;   % wavelength grid

dV=abs(V(1)-V(2));
dlam=lambda^2*dV/(2*pi*3e8);


%% Input shpae of laser pulse in time domain
X=exp(1i*(w*t));
axes(handles.axes1)

hold on; zoom xon; grid on; box on

ax = gca; % Get handle to current axes.
ax.XColor = 'w'; % Red
ax.YColor = 'w'; % Blue
ax.GridAlpha = 0.2;  % Make grid lines less transparent.
ax.GridColor = 'k'; % Dark Green.
ax.FontWeight='b';

xlabel('Time(fs)')
ylabel('Normalized intensity')

if (get(handles.gaussian,'Value'))==1
    Y=exp(-(1.17741*t/T).^2);
%     Et=X.*Y;
    Et=Y;
    plot(t/1e-15,Et.*conj(Et), 'LineWidth',2)
elseif (get(handles.Sech2,'Value'))==1 
    Y=sech(1.763*t/T);
%     Et=X.*Y;
     Et=Y;
   plot(t/1e-15,Et.*conj(Et), 'LineWidth',2)
end
xlim([-10*T 10*T]*1e15)
ylim([0 1.05])
title('Pulse Temporal Intensity Profile','Color','w','FontUnits','normalized')


%% Laser pulse in Spectral domain
Ew=fftshift(fft(Et));
axes(handles.axes2)

%%%%%%%%%%%
%%%%%%%FWHM Spectral width
K=Ew.*conj(Ew)/(max(Ew.*conj(Ew)))>=0.5;
Spectral_Width=num2str(sum(K)*dlam*1e9);
set(handles.Spectral_width,'string',Spectral_Width)


ax = gca; % Get handle to current axes.
ax.XColor = 'w'; % Red
ax.YColor = 'w'; % Blue
ax.GridAlpha = 0.2;  % Make grid lines less transparent.
ax.GridColor = 'k'; % Dark Green.
ax.FontWeight='b';

hold on; zoom xon; grid on; box on
xlabel('Wavelength(nm)')
ylabel('Normalized spectral intensity')
title('Pulse Spectral Intensity Profile','Color','w','FontUnits','normalized')
zoom xon
plot(WL/1e-9,Ew.*conj(Ew)/(max(Ew.*conj(Ew))), 'LineWidth',2)


xlim([lambda lambda]*1e9+[-400 400])
ylim([0 1.05])


%% Spectral phase introduced by the grating pair and its effect in time domain
GD=str2num(get(handles.GD,'string'));
GDD=str2num(get(handles.GDD,'string'));
TOD=str2num(get(handles.TOD,'string'));
FOD=str2num(get(handles.FOD,'string'));

phiw=GD*1e-15*V+(GDD*1e-30)*V.^2/2+(TOD*1e-45)*V.^3/6+(FOD*1e-60)*V.^4/24;
Eww=Ew.*exp(-1i*phiw);


Ett=ifft(ifftshift(Eww));
axes(handles.axes1)


plot(t/1e-15,Ett.*conj(Ett)/(max(Ett.*conj(Ett))), 'LineWidth',2)

legend({'Pulse w/o dispersion','Pulse with Dispersion'},'Box','off','Units','normalized')

axes(handles.axes3)

ax = gca; % Get handle to current axes.
ax.XColor = 'w'; % Red
ax.YColor = 'w'; % Blue
ax.GridAlpha = 0.2;  % Make grid lines less transparent.
ax.GridColor = 'k'; % Dark Green.
ax.FontWeight='b';

title('Temporal Electric filed of dispersed pulse','Color','w','FontUnits','normalized')
hold on; zoom xon; grid on; box on
xlabel('Time(fs)')
ylabel('Normalized Electric field')

plot(t/1e-15,real(Ett.*X)/(max(real(Ett.*X))),'r','LineWidth',2)
hold on
plot(t/1e-15,abs(Ett)/(max(real(Ett.*X))),'k','LineWidth',2)
% plot(t/1e-12,real(Et.*X)/(max(real(Et.*X))),'k', 'LineWidth',1)
zoom xon
xlim([-50*T 50*T]*1e15)
ylim([-1.5 1.5])

%%%%
%% FWHM Temporal width
if GDD==0 & TOD==0 & FOD==0
    FWHM_width=num2str(T*1e15);
    set(handles.FWHM_Width,'string',FWHM_width)
else
k=Ett.*conj(Ett)/(max(Ett.*conj(Ett)))>=0.5;
FWHM_width=num2str(sum(k)*dT*1e15);
set(handles.FWHM_Width,'string',FWHM_width)
end

%%% TBP calculation
TBP=(str2num(FWHM_width)*(3e8*str2num(Spectral_Width)/lambda^2)*1e-24);
set(handles.TBP_edit,'string',TBP)
% --- Executes on button press in gaussian.
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gaussian
if (get(hObject,'Value')) == 1 
    set(handles.Sech2,'Value',0)
end

% --- Executes on button press in Sech2.
function Sech2_Callback(hObject, eventdata, handles)
% hObject    handle to Sech2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Sech2
if (get(hObject,'Value')) == 1 
    set(handles.gaussian,'Value',0)
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% arrayfun(@cla,findall(0,'type','axes'))

axes(handles.axes1)
cla;
axes(handles.axes2)
cla;
axes(handles.axes3)
cla;

function FWHM_Width_Callback(hObject, eventdata, handles)
% hObject    handle to FWHM_Width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FWHM_Width as text
%        str2double(get(hObject,'String')) returns contents of FWHM_Width as a double


% --- Executes during object creation, after setting all properties.
function FWHM_Width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FWHM_Width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Spectral_width_Callback(hObject, eventdata, handles)
% hObject    handle to Spectral_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Spectral_width as text
%        str2double(get(hObject,'String')) returns contents of Spectral_width as a double


% --- Executes during object creation, after setting all properties.
function Spectral_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Spectral_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3

if (get(hObject,'Value')) == 1 
    set(handles.axes1, 'YScale' , 'log')
    axes(handles.axes1) 
    ylim([1e-20 1])
    axis tight
else
    set(handles.axes1, 'YScale' , 'linear')
end

function TBP_edit_Callback(hObject, eventdata, handles)
% hObject    handle to TBP_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TBP_edit as text
%        str2double(get(hObject,'String')) returns contents of TBP_edit as a double


% --- Executes during object creation, after setting all properties.
function TBP_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TBP_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
cla;
axes(handles.axes2)
cla;
axes(handles.axes3)
cla;
set(handles.TBP_edit,'string','0')
set(handles.Spectral_width,'string','0')
set(handles.FWHM_Width,'string','0')
set(handles.GD,'string','0')
set(handles.GDD,'string','0')
set(handles.TOD,'string','0')
set(handles.FOD,'string','0')
set(handles.tp,'string','25')
set(handles.Central_wl,'string','800')
