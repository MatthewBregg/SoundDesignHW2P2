function varargout = PlaneSenseKeyboard(varargin)
% PLANESENSEKEYBOARD MATLAB code for PlaneSenseKeyboard.fig
%      PLANESENSEKEYBOARD, by itself, creates a new PLANESENSEKEYBOARD or raises the existing
%      singleton*.
%
%      H = PLANESENSEKEYBOARD returns the handle to a new PLANESENSEKEYBOARD or the handle to
%      the existing singleton*.
%
%      PLANESENSEKEYBOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLANESENSEKEYBOARD.M with the given input arguments.
%
%      PLANESENSEKEYBOARD('Property','Value',...) creates a new PLANESENSEKEYBOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PlaneSenseKeyboard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PlaneSenseKeyboard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PlaneSenseKeyboard

% Last Modified by GUIDE v2.5 06-Feb-2017 14:12:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PlaneSenseKeyboard_OpeningFcn, ...
                   'gui_OutputFcn',  @PlaneSenseKeyboard_OutputFcn, ...
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


% --- Executes just before PlaneSenseKeyboard is made visible.
function PlaneSenseKeyboard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PlaneSenseKeyboard (see VARARGIN)

% Choose default command line output for PlaneSenseKeyboard
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PlaneSenseKeyboard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PlaneSenseKeyboard_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function playSound(index, octave)
amplitude = 1;
length = 1;
samplerate = 44100;
time = 0:1/samplerate:length;
        %1   2      3      4     5      6      7      8     9      10     11  12
        %A   A#     B      C     C#     D      D#     E     F      F#     G   G# 
pitch = [55, 58.27, 61.74, 32.7, 34.65, 36.71, 38.89, 41.2, 43.65, 46.25, 49, 51.91];
frequency = pitch(index) * 2.^(octave - 1)
y = amplitude * sin( 2 * pi * frequency * time );
soundsc(y, samplerate)



% --- Executes on button press in C3.
function C3_Callback(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

pitch = 4;
octave = 3;
playSound(pitch, octave)



% --- Executes on button press in D3.
function D3_Callback(hObject, eventdata, handles)
% hObject    handle to D3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

pitch = 6;
octave = 3;
playSound(pitch, octave)

% --- Executes on button press in E3.
function E3_Callback(hObject, eventdata, handles)
% hObject    handle to E3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 8;
octave = 3;
playSound(pitch, octave)



% --- Executes on button press in F3.
function F3_Callback(hObject, eventdata, handles)
% hObject    handle to F3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 9;
octave = 3;
playSound(pitch, octave)



% --- Executes on button press in G3.
function G3_Callback(hObject, eventdata, handles)
% hObject    handle to G3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 11;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in A3.
function A3_Callback(hObject, eventdata, handles)
% hObject    handle to A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 1;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in B3.
function B3_Callback(hObject, eventdata, handles)
% hObject    handle to B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
pitch = 3;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in C4.
function C4_Callback(hObject, eventdata, handles)
% hObject    handle to C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 4;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in D4.
function D4_Callback(hObject, eventdata, handles)
% hObject    handle to D4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 6;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in E4.
function E4_Callback(hObject, eventdata, handles)
% hObject    handle to E4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 8;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in F4.
function F4_Callback(hObject, eventdata, handles)
% hObject    handle to F4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 9;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in G4.
function G4_Callback(hObject, eventdata, handles)
% hObject    handle to G4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 11;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in A4.
function A4_Callback(hObject, eventdata, handles)
% hObject    handle to A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 1;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in B4.
function B4_Callback(hObject, eventdata, handles)
% hObject    handle to B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 3;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in C5.
function C5_Callback(hObject, eventdata, handles)
% hObject    handle to C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 4;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in D5.
function D5_Callback(hObject, eventdata, handles)
% hObject    handle to D5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 6;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in E5.
function E5_Callback(hObject, eventdata, handles)
% hObject    handle to E5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 8;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in F5.
function F5_Callback(hObject, eventdata, handles)
% hObject    handle to F5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 9;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in G5.
function G5_Callback(hObject, eventdata, handles)
% hObject    handle to G5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 11;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in A5.
function A5_Callback(hObject, eventdata, handles)
% hObject    handle to A5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 1;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in B5.
function B5_Callback(hObject, eventdata, handles)
% hObject    handle to B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 3;
octave = 5;
playSound(pitch, octave)

% --- Executes on button press in C6.
function C6_Callback(hObject, eventdata, handles)
% hObject    handle to C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 4;
octave = 6;
playSound(pitch, octave)


% --- Executes on button press in CS3.
function CS3_Callback(hObject, eventdata, handles)
% hObject    handle to CS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 5;
octave = 3;
playSound(pitch, octave)



% --- Executes on button press in DS3.
function DS3_Callback(hObject, eventdata, handles)
% hObject    handle to DS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 7;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in FS3.
function FS3_Callback(hObject, eventdata, handles)
% hObject    handle to FS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 10;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in GS3.
function GS3_Callback(hObject, eventdata, handles)
% hObject    handle to GS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 12;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in AS3.
function AS3_Callback(hObject, eventdata, handles)
% hObject    handle to AS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 2;
octave = 3;
playSound(pitch, octave)


% --- Executes on button press in CS4.
function CS4_Callback(hObject, eventdata, handles)
% hObject    handle to CS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 5;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in DS4.
function DS4_Callback(hObject, eventdata, handles)
% hObject    handle to DS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 7;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in FS4.
function FS4_Callback(hObject, eventdata, handles)
% hObject    handle to FS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 10;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in GS4.
function GS4_Callback(hObject, eventdata, handles)
% hObject    handle to GS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 12;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in AS4.
function AS4_Callback(hObject, eventdata, handles)
% hObject    handle to AS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 2;
octave = 4;
playSound(pitch, octave)


% --- Executes on button press in CS5.
function CS5_Callback(hObject, eventdata, handles)
% hObject    handle to CS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 5;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in DS5.
function DS5_Callback(hObject, eventdata, handles)
% hObject    handle to DS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 7;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in FS5.
function FS5_Callback(hObject, eventdata, handles)
% hObject    handle to FS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 10;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in GS5.
function GS5_Callback(hObject, eventdata, handles)
% hObject    handle to GS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 12;
octave = 5;
playSound(pitch, octave)


% --- Executes on button press in AS5.
function AS5_Callback(hObject, eventdata, handles)
% hObject    handle to AS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pitch = 2;
octave = 5;
playSound(pitch, octave)
