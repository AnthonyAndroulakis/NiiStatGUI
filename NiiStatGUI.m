classdef NiiStatGUI < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        MAINTab                         matlab.ui.container.Tab
        SelectExcelFileButton           matlab.ui.control.Button
        ExcelFileLabel                  matlab.ui.control.Label
        ExcelFileEditField              matlab.ui.control.EditField
        NameForResultsFolderLabel       matlab.ui.control.Label
        NameForResultsFolderEditField   matlab.ui.control.EditField
        SelectOutputDirectoryButton     matlab.ui.control.Button
        OutputDirLabel                  matlab.ui.control.Label
        OutputDirEditField              matlab.ui.control.EditField
        SelectDataDirectoryButton       matlab.ui.control.Button
        DataDirLabel                    matlab.ui.control.Label
        DataDirEditField                matlab.ui.control.EditField
        GOButton                        matlab.ui.control.Button
        CorrectedpThresholdEditFieldLabel  matlab.ui.control.Label
        CorrectedpThresholdEditField    matlab.ui.control.NumericEditField
        minimumoverlapEditFieldLabel    matlab.ui.control.Label
        minimumoverlapEditField         matlab.ui.control.NumericEditField
        numberofpermutationsifPermutationsorFreedmanLaneEditFieldLabel  matlab.ui.control.Label
        numperms                        matlab.ui.control.NumericEditField
        testtype                        matlab.ui.container.ButtonGroup
        FDRButton                       matlab.ui.control.RadioButton
        BoneferroniButton               matlab.ui.control.RadioButton
        NormalPermutationButton         matlab.ui.control.RadioButton
        FreedmanLanePermutationButton   matlab.ui.control.RadioButton
        Button_19                       matlab.ui.control.StateButton
        TextArea_9                      matlab.ui.control.TextArea
        EditField_2                     matlab.ui.control.EditField
        UseNiiStatClassicCheckBox       matlab.ui.control.CheckBox
        ATLASTab                        matlab.ui.container.Tab
        TextArea_1                      matlab.ui.control.TextArea
        ROIs_1                          matlab.ui.control.ListBox
        TextArea_2                      matlab.ui.control.TextArea
        ROIs_2                          matlab.ui.control.ListBox
        areaSixButton                   matlab.ui.control.StateButton
        TextArea_6                      matlab.ui.control.TextArea
        ROIs_6                          matlab.ui.control.ListBox
        areaSevenButton                 matlab.ui.control.StateButton
        TextArea_7                      matlab.ui.control.TextArea
        ROIsListBoxLabel_4              matlab.ui.control.Label
        ROIs_7                          matlab.ui.control.ListBox
        areaThreeButton                 matlab.ui.control.StateButton
        TextArea_3                      matlab.ui.control.TextArea
        areaFourButton                  matlab.ui.control.StateButton
        TextArea_4                      matlab.ui.control.TextArea
        ROIs_4                          matlab.ui.control.ListBox
        areaFiveButton                  matlab.ui.control.StateButton
        TextArea_5                      matlab.ui.control.TextArea
        ROIs_5                          matlab.ui.control.ListBox
        voxelwiseButton                 matlab.ui.control.StateButton
        ROIs_3                          matlab.ui.control.ListBox
        areaTwoButton                   matlab.ui.control.StateButton
        areaOneButton                   matlab.ui.control.StateButton
        EditField                       matlab.ui.control.EditField
        SELECTROISUBSETButtonGroup      matlab.ui.container.ButtonGroup
        OriginalROISetButton            matlab.ui.control.ToggleButton
        TextArea_VOXELWISE              matlab.ui.control.TextArea
        areaEightButton                 matlab.ui.control.StateButton
        TextArea_8                      matlab.ui.control.TextArea
        ROIs_8                          matlab.ui.control.ListBox
        CustomROIsSwitchLabel           matlab.ui.control.Label
        CustomROIsSwitch                matlab.ui.control.ToggleSwitch
        MODALITYTab                     matlab.ui.container.Tab
        LESIONButton                    matlab.ui.control.StateButton
        CBFButton                       matlab.ui.control.StateButton
        RESTButton                      matlab.ui.control.StateButton
        i3mT1Button                     matlab.ui.control.StateButton
        MTTButton                       matlab.ui.control.StateButton
        DTIMDButton                     matlab.ui.control.StateButton
        TTPButton                       matlab.ui.control.StateButton
        DTIFAButton                     matlab.ui.control.StateButton
        i3mT2Button                     matlab.ui.control.StateButton
        CBVButton                       matlab.ui.control.StateButton
        DTIFCButton                     matlab.ui.control.StateButton
        fMRIButton                      matlab.ui.control.StateButton
        fMRIbButton                     matlab.ui.control.StateButton
        RESTalfButton                   matlab.ui.control.StateButton
        RESTpalfButton                  matlab.ui.control.StateButton
        DTIMKButton                     matlab.ui.control.StateButton
        Button_11                       matlab.ui.control.StateButton
        Button_12                       matlab.ui.control.StateButton
        Button_13                       matlab.ui.control.StateButton
        Button_14                       matlab.ui.control.StateButton
        Button_15                       matlab.ui.control.StateButton
        Button_16                       matlab.ui.control.StateButton
        DTIButton                       matlab.ui.control.StateButton
        Button_18                       matlab.ui.control.StateButton
        SPECIALTab                      matlab.ui.container.Tab
        Button_20                       matlab.ui.control.StateButton
        Button_21                       matlab.ui.control.StateButton
        interhemispheric                matlab.ui.control.StateButton
        ExplicitVoxelMaskSwitchLabel    matlab.ui.control.Label
        ExplicitVoxelMaskSwitch         matlab.ui.control.ToggleSwitch
        RegressLesionVolumeSwitchLabel  matlab.ui.control.Label
        RegressLesionVolumeSwitch       matlab.ui.control.ToggleSwitch
        DeskewDataSwitchLabel           matlab.ui.control.Label
        DeskewDataSwitch                matlab.ui.control.ToggleSwitch
        IncludeWMCSFconnectivitySwitchLabel  matlab.ui.control.Label
        IncludeWMCSFconnectivitySwitch  matlab.ui.control.ToggleSwitch
        TFCESwitchLabel                 matlab.ui.control.Label
        TFCESwitch                      matlab.ui.control.ToggleSwitch
        ReportROIMeansSwitchLabel       matlab.ui.control.Label
        ReportROIMeansSwitch            matlab.ui.control.ToggleSwitch
        SVMSwitchLabel                  matlab.ui.control.Label
        SVMSwitch                       matlab.ui.control.ToggleSwitch
        LowResolutionSwitchLabel        matlab.ui.control.Label
        LowResolutionSwitch             matlab.ui.control.ToggleSwitch
        ChooseMaskButton                matlab.ui.control.Button
        ChosenMaskEditField             matlab.ui.control.EditField
        ClearMaskButton                 matlab.ui.control.Button
        LimitanalysistolefthemisphererighthemisphereorbilateralLabel  matlab.ui.control.Label
        PurgeROIdatafrommatfilesButton  matlab.ui.control.Button
        InsomecasesyoumaywishtoremovetheROIspecificLabel  matlab.ui.control.Label
        portionofthematfilesandrecalculateitforeachfileLabel  matlab.ui.control.Label
        SPECIALTab_2                    matlab.ui.container.Tab
        COMINGSOONLabel                 matlab.ui.control.Label
    end





    

    methods (Access = private)

        % Code that executes after component creation
        function StartupFunction(app)
           roifiles = GetROIFilesGivenDirectory('roi/');
           
           %populate roifiles
           %app.ROIS_one.Items = importdata(fullfile(roifolder,images(i).name));
           %default is typical ROIs selected
           [parentdir,~,~]=fileparts(pwd);
           addpath(parentdir)
           roiList=nii_roi_list;
           num1 = [deblank(roiList(1,:)) '.txt'];
           [x y z] = fileparts(num1);
           app.ROIs_1.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_1.Value = y; 
           roiList=nii_roi_list;
           num1 = [deblank(roiList(2,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_2.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_2.Value = y;
           num1 = [deblank(roiList(3,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_3.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_3.Value = y;
           num1 = [deblank(roiList(4,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_4.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_4.Value = y;
           num1 = [deblank(roiList(5,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_5.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_5.Value = y;
           num1 = [deblank(roiList(6,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_6.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_6.Value = y;
           num1 = [deblank(roiList(7,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_7.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_7.Value = y;
           num1 = [deblank(roiList(8,:)) '.txt']
           [x y z] = fileparts(num1);
           app.ROIs_8.Items = GetROINamesFromFile(fullfile(num1),4);        app.TextArea_8.Value = y;
           
            
            %Fill in blanks from prior cfg file so don't need to reload them
            %if no such directories or excel files then fill in some default values
            orient = which('NiiStatGUI');
            [path file] = fileparts(orient);
            
            if exist(fullfile(path,'niistatGUI_cfg.mat'),'file') == 2
                priorGUI = load(fullfile(path,'niistatGUI_cfg.mat'));
                
                if exist(priorGUI.GUIdata.dataDirectory) == 7
                    app.DataDirEditField.Value = priorGUI.GUIdata.dataDirectory;
                else
                    app.DataDirEditField.Value = pwd;
                end
                
                if exist(priorGUI.GUIdata.outputDirectory) == 7 
                    app.OutputDirEditField.Value = priorGUI.GUIdata.outputDirectory;
                else
                    app.OutputDirEditField.Value = pwd;
                end

                if exist(priorGUI.GUIdata.excelFile) == 2
                    app.ExcelFileEditField.Value = priorGUI.GUIdata.excelFile;
                else
                    app.ExcelFileEditField.Value = fullfile(pwd,'excelfile.xlsx');
                end
                
                app.NameForResultsFolderEditField.Value = priorGUI.GUIdata.resultsFolder; 
                app.numperms.Value = priorGUI.GUIdata.perms;
                app.CorrectedpThresholdEditField.Value = priorGUI.GUIdata.pvalue;
                
                %would be nice to set the selections too, but not trivial
                %app.ROIs_1.Value = priorGUI.GUIdata.brodmann_picks_raw 
               
            end
            
             
        end

        % Callback function
        function SelectExcelFileButtonPushed(app, event)
          [efile, epth] = uigetfile(fullfile(app.DataDirEditField.Value,'*.xlsx;*.xls'));
          excelName = [epth efile];
          app.ExcelFileEditField.Value = excelName;
        end

        % Callback function
        function SelectDataDirectoryButtonPushed(app, event)
           app.DataDirEditField.Value = uigetdir();
        end

        % Callback function
        function SelectOutputDirectoryButtonPushed(app, event)
           app.OutputDirEditField.Value = uigetdir();
        end

        % Callback function
        function ResultsFolderNameEditFieldValueChanged(app, event)
           resultsFolderName = app.NameForResultsFolderEditField.Value;
        end

        % Button pushed function: ChooseMaskButton
        function ChooseMaskButtonPushed(app, event)
          maskname = [];
          [mfile, mpth] = uigetfile(fullfile(app.DataDirEditField.Value,'*.nii;*.nii.gz'));
          maskName = [mpth mfile];
          app.ChosenMaskEditField.Value = maskName;
        end

        % Callback function
        function ChooseCustomROIsFilesinadditiontoatlasesButtonPushed(app, event)
          
        end

        % Value changed function: DataDirEditField
        function DataDirEditFieldValueChanged(app, event)
            
        end

        % Button pushed function: GOButton
        function GOButtonPushed(app, event)
            %this is where we take all our GUI variables and save them
            %as the appropriate value names and types to work with  
            %NiiStat as it was classically implemented by Chris and Grigori
            answer{1} = app.numperms.Value;
            GUIdata.numPermutations = answer{1};
            answer{2} = app.CorrectedpThresholdEditField.Value;
            GUIdata.correctedP = answer{2};
            answer{3} = app.minimumoverlapEditField.Value;
            GUIdata.minOverlap = answer{3};
            tempans = [];
                if app.voxelwiseButton.Value == 1 
                    tempans = cat(2,tempans,[0]);
                end
                if app.areaOneButton.Value == 1 
                    tempans = cat(2,tempans,[1]);
                end    
                if app.areaTwoButton.Value == 1 
                    tempans = cat(2,tempans,[2]);
                end
                if app.areaThreeButton.Value == 1 
                    tempans = cat(2,tempans,[3]);
                end
                if app.areaFourButton.Value == 1 
                    tempans = cat(2,tempans,[4]);
                end
                 if app.areaFiveButton.Value == 1 
                    tempans = cat(2,tempans,[5]);
                end
                if app.areaSixButton.Value == 1 
                    tempans = cat(2,tempans,[6]);
                end
                if app.areaSevenButton.Value == 1 
                    tempans = cat(2,tempans,[7]);
                end
                if app.areaEightButton.Value == 1 
                    tempans = cat(2,tempans,[8]);
                end
              
               
                
               
                
            answer{4} = tempans;
            GUIdata.atlasChoice = answer{4};
            
            GUIdata.atlas1name =  app.TextArea_1.Value;
            GUIdata.atlas2name =  app.TextArea_2.Value;
            GUIdata.atlas3name =  app.TextArea_3.Value;
            GUIdata.atlas4name =  app.TextArea_4.Value;
            GUIdata.atlas5name =  app.TextArea_5.Value;
            GUIdata.atlas6name =  app.TextArea_6.Value;
            GUIdata.atlas7name =  app.TextArea_7.Value;
            GUIdata.atlas8name =  app.TextArea_8.Value;
            
            
            tempans = [];
            
                 if app.LESIONButton.Value == 1 
                    tempans = cat(2,tempans,[1]);
                 end
                 if app.CBFButton.Value == 1 
                    tempans = cat(2,tempans,[2]);
                 end
                 if app.RESTButton.Value == 1 
                    tempans = cat(2,tempans,[3]);
                 end
                 if app.i3mT1Button.Value == 1 
                    tempans = cat(2,tempans,[4]);
                 end
                 if app.i3mT2Button.Value == 1 
                    tempans = cat(2,tempans,[5]);
                 end
                 if app.DTIFAButton.Value == 1 
                    tempans = cat(2,tempans,[6]);
                 end
                 if app.DTIButton.Value == 1 
                    tempans = cat(2,tempans,[7]);
                 end
                 if app.DTIMDButton.Value == 1 
                    tempans = cat(2,tempans,[8]);
                 end
                 if app.TTPButton.Value == 1 
                    tempans = cat(2,tempans,[9]);
                 end
                 if app.MTTButton.Value == 1 
                    tempans = cat(2,tempans,[10]);
                 end
                 if app.CBVButton.Value == 1 
                    tempans = cat(2,tempans,[11]);
                 end
                 if app.DTIFCButton.Value == 1 
                    tempans = cat(2,tempans,[12]);
                 end
                 if app.fMRIButton.Value == 1 
                    tempans = cat(2,tempans,[13]);
                 end
                 if app.fMRIbButton.Value == 1 
                    tempans = cat(2,tempans,[14]);
                 end
                 if app.RESTalfButton.Value == 1 
                    tempans = cat(2,tempans,[15]);
                 end
                 if app.DTIMKButton.Value == 1 
                    tempans = cat(2,tempans,[16]);
                 end
                 if app.RESTpalfButton.Value == 1 
                    tempans = cat(2,tempans,[17]);
                 end
            answer{5} = tempans;
            GUIdata.modalityChoice = answer{5};
            
            tempans = [];
                if app.ExplicitVoxelMaskSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[1]);
                end
                if app.RegressLesionVolumeSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[2]);
                end
                if app.DeskewDataSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[3]);
                end
                if app.IncludeWMCSFconnectivitySwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[4]);
                end
                if app.CustomROIsSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[5]);
                end
                if app.TFCESwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[6]);
                end
                if app.ReportROIMeansSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[7]);
                end
                if app.SVMSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[8]);
                end
                if app.LowResolutionSwitch.Value == 'Yes'
                    tempans = cat(2,tempans,[9]);
                end
                if app.Button_20.Value == 1
                    tempans = cat(2,tempans,[10]);
                end
                if app.Button_21.Value == 1
                    tempans = cat(2,tempans,[11]);
                end
                if app.interhemispheric.Value == 1
                    tempans = cat(2,tempans,[12]);
                end
                
            
                
            answer{6} = tempans;
            GUIdata.specialChoice = answer{6};
             
            answer{7} = app.NameForResultsFolderEditField.Value;
            GUIdata.resultsFolderName = answer{7};
            
            %get my answers into the same format as the old NiiStat wants for their config file
            for i = 1:length(answer)
                answer{i} = num2str(answer{i});
            end
            answer = answer'
            %save over NiiStat cfg .mat file
            %%%%('niistat_cfg.mat', 'answer');
            
            GUIdata.dataDirectory = app.DataDirEditField.Value;
            GUIdata.outputDirectory = app.OutputDirEditField.Value;
            %make sure results are output to the OutpurDirectory
            cd(app.OutputDirEditField.Value);
            GUIdata.resultsFolder = app.NameForResultsFolderEditField.Value;
            GUIdata.excelFile = app.ExcelFileEditField.Value;
            GUIdata.chosenMask = app.ChosenMaskEditField.Value;
            
            
            GUIdata.testtype = app.testtype.SelectedObject.Text;
            %for extra chosen roi files, i.e. custom ones only
         
            GUIdata.perms = app.numperms.Value;
            GUIdata.pvalue = app.CorrectedpThresholdEditField.Value;
            
            %gather and store selected ROIs 
            GUIdata.atlas1picks = roiNames2roiNumbers(app.ROIs_1.Value);
            GUIdata.atlas2picks = roiNames2roiNumbers(app.ROIs_2.Value);
            GUIdata.atlas3picks = roiNames2roiNumbers(app.ROIs_3.Value);
            GUIdata.atlas4picks = roiNames2roiNumbers(app.ROIs_4.Value);
            GUIdata.atlas5picks = roiNames2roiNumbers(app.ROIs_5.Value);
            GUIdata.atlas6picks = roiNames2roiNumbers(app.ROIs_6.Value);
            GUIdata.atlas7picks = roiNames2roiNumbers(app.ROIs_7.Value);
            GUIdata.atlas8picks = roiNames2roiNumbers(app.ROIs_8.Value);
            
            %ANY OTHER other data we need from the GUI to the .mat file ???
            GUIdata.useClassicNiiStat = app.UseNiiStatClassicCheckBox.Value;
            GUIdata.brodmann_picks_raw = app.ROIs_1.Value; %used for testing
            
            %save file, also make sure NiiStat knows how to find this file
            temp = which('NiiStatGUI');
            [filepath, name, ext] = fileparts(temp);
            save(fullfile(filepath,'niistatGUI_cfg.mat'),'GUIdata');
            
            GUIdata
            
            [parentdir,~,~]=fileparts(pwd);
            addpath(parentdir)
            NiiStat;
            
           % close (app.UIFigure);
            
        end

        % Callback function
        function Play(app, event)
            %              [y, Fs] = audioread('backgroundMusic_01.mp3');
            %              player = audioplayer(y, Fs);
            %              play(player)
            %              x = {'triedtoplay'}
        end

        % Selection changed function: SELECTROISUBSETButtonGroup
        function ChangeROIList(app, event)
            selectedButton = app.SELECTROISUBSETButtonGroup.SelectedObject;
            app.ROIs_1.Items = {''};         app.TextArea_1.Value = '';
            app.ROIs_2.Items = {''};         app.TextArea_2.Value = '';
            app.ROIs_3.Items = {''};          app.TextArea_3.Value = '';
            app.ROIs_4.Items = {''};         app.TextArea_4.Value = '';
            app.ROIs_5.Items = {''};         app.TextArea_5.Value = '';
            app.ROIs_6.Items = {''};         app.TextArea_6.Value = '';
            app.ROIs_7.Items = {''};         app.TextArea_7.Value = '';
            app.ROIs_8.Items = {''};         app.TextArea_8.Value = '';     
                
            if selectedButton == app.OriginalROISetButton
              
               %roifiles = GetROIFilesGivenDirectory('roi/');
                [parentdir,~,~]=fileparts(pwd);
                addpath(parentdir)
                roiList=nii_roi_list;
                [x y z] = fileparts([deblank(roiList(1,:)) '.txt']);  
                app.ROIs_1.Items = GetROINamesFromFile([deblank(roiList(1,:)) '.txt'],4);        app.TextArea_1.Value = y;
                [x y z] = fileparts([deblank(roiList(2,:)) '.txt']);  
                app.ROIs_2.Items = GetROINamesFromFile([deblank(roiList(2,:)) '.txt'],4);        app.TextArea_2.Value = y;
                [x y z] = fileparts([deblank(roiList(3,:)) '.txt']);  
                app.ROIs_3.Items = GetROINamesFromFile([deblank(roiList(3,:)) '.txt'],4);        app.TextArea_3.Value = y;
                [x y z] = fileparts([deblank(roiList(4,:)) '.txt']);  
                app.ROIs_4.Items = GetROINamesFromFile([deblank(roiList(4,:)) '.txt'],4);        app.TextArea_4.Value = y;
                [x y z] = fileparts([deblank(roiList(5,:)) '.txt']);  
                app.ROIs_5.Items = GetROINamesFromFile([deblank(roiList(5,:)) '.txt'],4);        app.TextArea_5.Value = y;
                [x y z] = fileparts([deblank(roiList(6,:)) '.txt']);  
                app.ROIs_6.Items = GetROINamesFromFile([deblank(roiList(6,:)) '.txt'],4);        app.TextArea_6.Value = y;
                [x y z] = fileparts([deblank(roiList(7,:)) '.txt']);  
                app.ROIs_7.Items = GetROINamesFromFile([deblank(roiList(7,:)) '.txt'],4);        app.TextArea_7.Value = y;
                [x y z] = fileparts([deblank(roiList(8,:)) '.txt']);  
                app.ROIs_8.Items = GetROINamesFromFile([deblank(roiList(8,:)) '.txt'],4);        app.TextArea_8.Value = y;
                
                
            end
            
            
            if selectedButton == app.IowaButton
            
                %roifiles = GetROIFilesGivenDirectory('roi_uiowa/');
                %roiList = nii_roi_list
                %[deblank(roiList(1,:)) '.txt']
                
                
                %app.ROIs_1.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_uiowa/'),'bro.txt'),4);          app.TextArea_1.Value = 'Brodmann';
                %app.ROIs_2.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_uiowa/'),'jhu.txt'),4);          app.TextArea_2.Value = 'JHU';
                %app.ROIs_3.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_uiowa/'),'aal.txt'),4);          app.TextArea_3.Value = 'aal';
                %app.ROIs_4.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_uiowa/'),'cat.txt'),4);          app.TextArea_4.Value = 'cat';
                %app.ROIs_5.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_uiowa/'),'aalcat.txt'),4);       app.TextArea_5.Value = 'aalcat';
                %app.ROIs_7.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_uiowa/'),'fox.txt'),4);          app.TextArea_7.Value = 'fox';
            end
            
            
            if selectedButton == app.YoungAdultButton
            
                %roifiles = GetROIFilesGivenDirectory('roi_youngadults/');
            
                %app.ROIs_1.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_youngadults/'),'bro.txt'),4);         app.TextArea_1.Value = 'Brodmann';
                %app.ROIs_2.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_youngadults/'),'jhu.txt'),4);         app.TextArea_2.Value = 'JHU';
                %app.ROIs_3.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_youngadults/'),'aal.txt'),4);         app.TextArea_3.Value = 'aal';
                %app.ROIs_7.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_youngadults/'),'fox.txt'),4);         app.TextArea_7.Value = 'fox';
                %app.ROIs_8.Items = GetROINamesFromFile(fullfile(GetROIPathGivenDirectoryName('roi_youngadults/'),'catani.txt'),4);       app.TextArea_8.Value = 'catani';
            end
       
            
        end

        % Value changed function: ROIs_1
        function ROIs_1ValueChanged(app, event)
            value = app.ROIs_1.Value
                    
        end

        % Value changed function: ROIs_2
        function ROIs_2ValueChanged(app, event)
            value = app.ROIs_2.Value;
            
        end

        % Value changed function: ROIs_3
        function ROIs_3ValueChanged(app, event)
            value = app.ROIs_3.Value;
            
        end

        % Value changed function: ROIs_4
        function ROIs_4ValueChanged(app, event)
            value = app.ROIs_4.Value;
            
        end

        % Value changed function: ROIs_5
        function ROIs_5ValueChanged(app, event)
            value = app.ROIs_5.Value;
            
        end

        % Value changed function: ROIs_6
        function ROIs_6ValueChanged(app, event)
            value = app.ROIs_6.Value;
            
        end

        % Value changed function: ROIs_7
        function ROIs_7ValueChanged(app, event)
            value = app.ROIs_7.Value;
            
        end

        % Value changed function: ROIs_8
        function ROIs_8ValueChanged(app, event)
            value = app.ROIs_8.Value;
            
        end

        % Value changed function: CustomROIsSwitch
        function CustomROIsSwitchValueChanged(app, event)
            value = app.CustomROIsSwitch.Value;
           
        
            if value == 'Yes' & app.areaOneButton.Value == 1
                app.ROIs_1.Enable = 'on';
            else
                app.ROIs_1.Enable = 'off';
            end
            if value == 'Yes' & app.areaTwoButton.Value == 1
                app.ROIs_2.Enable = 'on';
            else
                app.ROIs_2.Enable = 'off';
            end
            if value == 'Yes' & app.areaThreeButton.Value == 1
                app.ROIs_3.Enable = 'on';
            else
                app.ROIs_3.Enable = 'off';
            end
            if value == 'Yes' & app.areaFourButton.Value == 1
                app.ROIs_4.Enable = 'on';
            else
                app.ROIs_4.Enable = 'off';
            end
            
            if value == 'Yes' & app.areaFiveButton.Value == 1
                app.ROIs_5.Enable = 'on';
            else
                app.ROIs_5.Enable = 'off';
            end
            
            if value == 'Yes' & app.areaSixButton.Value == 1
                app.ROIs_6.Enable = 'on';
            else
                app.ROIs_6.Enable = 'off';
            end
            
                  if value == 'Yes' & app.areaSevenButton.Value == 1
                app.ROIs_7.Enable = 'on';
            else
                app.ROIs_7.Enable = 'off';
                  end
                    if value == 'Yes' & app.areaEightButton.Value == 1
                app.ROIs_8.Enable = 'on';
            else
                app.ROIs_8.Enable = 'off';
            end
             
        end

        % Value changed function: areaOneButton
        function areaOneButtonValueChanged(app, event)
            value = app.areaOneButton.Value;
            if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_1.Enable = 'off';
             else
                app.ROIs_1.Enable = 'on';
             end  
        end

        % Value changed function: areaTwoButton
        function areaTwoButtonValueChanged(app, event)
            value = app.areaTwoButton.Value;
             if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_2.Enable = 'off';
             else
                app.ROIs_2.Enable = 'on';
             end
        end

        % Value changed function: areaEightButton
        function areaEightButtonValueChanged(app, event)
            value = app.areaEightButton.Value;
              if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_8.Enable = 'off';
             else
                app.ROIs_8.Enable = 'on';
             end
            
        end

        % Value changed function: areaFiveButton
        function areaFiveButtonValueChanged(app, event)
            value = app.areaFiveButton.Value;
             if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_5.Enable = 'off';
             else
                app.ROIs_5.Enable = 'on';
             end
            
        end

        % Value changed function: areaFourButton
        function areaFourButtonValueChanged(app, event)
            value = app.areaFourButton.Value;
             if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_4.Enable = 'off';
             else
                app.ROIs_4.Enable = 'on';
             end
            
        end

        % Value changed function: areaThreeButton
        function areaThreeButtonValueChanged(app, event)
            value = app.areaThreeButton.Value;
             if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_3.Enable = 'off';
             else
                app.ROIs_3.Enable = 'on';
             end
        end

        % Value changed function: areaSevenButton
        function areaSevenButtonValueChanged(app, event)
            value = app.areaSevenButton.Value;
              if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_7.Enable = 'off';
             else
                app.ROIs_7.Enable = 'on';
             end
        end

        % Value changed function: areaSixButton
        function areaSixButtonValueChanged(app, event)
            value = app.areaSixButton.Value;
              if value == 0 | app.CustomROIsSwitch.Value == '_No'
                app.ROIs_6.Enable = 'off';
             else
                app.ROIs_6.Enable = 'on';
             end
        end

        % Selection changed function: testtype
        function testtypeSelectionChanged(app, event)
            selectedButton = app.testtype.SelectedObject;
            if selectedButton.Text(1:3) == 'FDR'
               app.numperms.Enable = 'on';
               app.numperms.Value = -1;
               app.numperms.Enable = 'off';
            end
            if selectedButton.Text(1:3) == 'Bon'
               app.numperms.Enable = 'on';
               app.numperms.Value = 0;
               app.numperms.Enable = 'off';
            end
            if selectedButton.Text(1:3) == 'Nor'
               app.numperms.Enable = 'on';
               app.numperms.Value = 2000;
            end
             if selectedButton.Text(1:3) == 'Fre'
                app.numperms.Enable = 'on';
               app.numperms.Value = -2000;
            end
              
        end

        % Value changed function: numperms
        function numpermsValueChanged(app, event)
            value = app.numperms.Value;
            
            
        end

        % Value changed function: UseNiiStatClassicCheckBox
        function UseNiiStatClassicCheckBoxValueChanged(app, event)
            value = app.UseNiiStatClassicCheckBox.Value;
            
        end

        % Button pushed function: PurgeROIdatafrommatfilesButton
        function PurgeROIdatafrommatfilesButtonPushed(app, event)
            nii_matPurgeRois;
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 640 480];

            % Create MAINTab
            app.MAINTab = uitab(app.TabGroup);
            app.MAINTab.Title = 'MAIN';
            app.MAINTab.BackgroundColor = [0.2745 0.5882 1];

            % Create SelectExcelFileButton
            app.SelectExcelFileButton = uibutton(app.MAINTab, 'push');
            app.SelectExcelFileButton.ButtonPushedFcn = createCallbackFcn(app, @SelectExcelFileButtonPushed, true);
            app.SelectExcelFileButton.Position = [10 231 141 22];
            app.SelectExcelFileButton.Text = 'Select Excel File';

            % Create ExcelFileLabel
            app.ExcelFileLabel = uilabel(app.MAINTab);
            app.ExcelFileLabel.HorizontalAlignment = 'right';
            app.ExcelFileLabel.Position = [161 235 74 15];
            app.ExcelFileLabel.Text = 'Excel File  = ';

            % Create ExcelFileEditField
            app.ExcelFileEditField = uieditfield(app.MAINTab, 'text');
            app.ExcelFileEditField.FontSize = 10;
            app.ExcelFileEditField.FontWeight = 'bold';
            app.ExcelFileEditField.Position = [239 231 391 22];

            % Create NameForResultsFolderLabel
            app.NameForResultsFolderLabel = uilabel(app.MAINTab);
            app.NameForResultsFolderLabel.HorizontalAlignment = 'right';
            app.NameForResultsFolderLabel.Position = [6 194 153 15];
            app.NameForResultsFolderLabel.Text = 'Name For Results Folder  =';

            % Create NameForResultsFolderEditField
            app.NameForResultsFolderEditField = uieditfield(app.MAINTab, 'text');
            app.NameForResultsFolderEditField.ValueChangedFcn = createCallbackFcn(app, @ResultsFolderNameEditFieldValueChanged, true);
            app.NameForResultsFolderEditField.FontSize = 10;
            app.NameForResultsFolderEditField.FontWeight = 'bold';
            app.NameForResultsFolderEditField.Position = [162 190 468 22];
            app.NameForResultsFolderEditField.Value = 'results';

            % Create SelectOutputDirectoryButton
            app.SelectOutputDirectoryButton = uibutton(app.MAINTab, 'push');
            app.SelectOutputDirectoryButton.ButtonPushedFcn = createCallbackFcn(app, @SelectOutputDirectoryButtonPushed, true);
            app.SelectOutputDirectoryButton.Position = [9 267 142 22];
            app.SelectOutputDirectoryButton.Text = 'Select Output Directory';

            % Create OutputDirLabel
            app.OutputDirLabel = uilabel(app.MAINTab);
            app.OutputDirLabel.HorizontalAlignment = 'right';
            app.OutputDirLabel.Position = [160 271 75 15];
            app.OutputDirLabel.Text = 'Output Dir = ';

            % Create OutputDirEditField
            app.OutputDirEditField = uieditfield(app.MAINTab, 'text');
            app.OutputDirEditField.FontSize = 10;
            app.OutputDirEditField.FontWeight = 'bold';
            app.OutputDirEditField.Position = [239 267 391 22];

            % Create SelectDataDirectoryButton
            app.SelectDataDirectoryButton = uibutton(app.MAINTab, 'push');
            app.SelectDataDirectoryButton.ButtonPushedFcn = createCallbackFcn(app, @SelectDataDirectoryButtonPushed, true);
            app.SelectDataDirectoryButton.Position = [10 304 142 22];
            app.SelectDataDirectoryButton.Text = 'Select Data Directory';

            % Create DataDirLabel
            app.DataDirLabel = uilabel(app.MAINTab);
            app.DataDirLabel.HorizontalAlignment = 'right';
            app.DataDirLabel.Position = [161 307 73 15];
            app.DataDirLabel.Text = 'Data Dir    = ';

            % Create DataDirEditField
            app.DataDirEditField = uieditfield(app.MAINTab, 'text');
            app.DataDirEditField.ValueChangedFcn = createCallbackFcn(app, @DataDirEditFieldValueChanged, true);
            app.DataDirEditField.FontSize = 10;
            app.DataDirEditField.FontWeight = 'bold';
            app.DataDirEditField.Position = [239 303 391 22];

            % Create GOButton
            app.GOButton = uibutton(app.MAINTab, 'push');
            app.GOButton.ButtonPushedFcn = createCallbackFcn(app, @GOButtonPushed, true);
            app.GOButton.BackgroundColor = [0.0824 0.9059 0.2745];
            app.GOButton.FontSize = 26;
            app.GOButton.FontColor = [0 0.0196 0];
            app.GOButton.Position = [452 10 179 48];
            app.GOButton.Text = '<<< GO >>>';

            % Create CorrectedpThresholdEditFieldLabel
            app.CorrectedpThresholdEditFieldLabel = uilabel(app.MAINTab);
            app.CorrectedpThresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.CorrectedpThresholdEditFieldLabel.Position = [86 38 126 15];
            app.CorrectedpThresholdEditFieldLabel.Text = 'Corrected p Threshold';

            % Create CorrectedpThresholdEditField
            app.CorrectedpThresholdEditField = uieditfield(app.MAINTab, 'numeric');
            app.CorrectedpThresholdEditField.Limits = [1e-10 1];
            app.CorrectedpThresholdEditField.ValueDisplayFormat = '%11.6g';
            app.CorrectedpThresholdEditField.HorizontalAlignment = 'center';
            app.CorrectedpThresholdEditField.FontWeight = 'bold';
            app.CorrectedpThresholdEditField.Position = [11 36 64 22];
            app.CorrectedpThresholdEditField.Value = 0.05;

            % Create minimumoverlapEditFieldLabel
            app.minimumoverlapEditFieldLabel = uilabel(app.MAINTab);
            app.minimumoverlapEditFieldLabel.Position = [90 156 425 15];
            app.minimumoverlapEditFieldLabel.Text = 'minimum overlap (e.g. how many participants must have signal in that area)';

            % Create minimumoverlapEditField
            app.minimumoverlapEditField = uieditfield(app.MAINTab, 'numeric');
            app.minimumoverlapEditField.Limits = [1 10000];
            app.minimumoverlapEditField.HorizontalAlignment = 'center';
            app.minimumoverlapEditField.FontWeight = 'bold';
            app.minimumoverlapEditField.Position = [11 152 63 22];
            app.minimumoverlapEditField.Value = 1;

            % Create numberofpermutationsifPermutationsorFreedmanLaneEditFieldLabel
            app.numberofpermutationsifPermutationsorFreedmanLaneEditFieldLabel = uilabel(app.MAINTab);
            app.numberofpermutationsifPermutationsorFreedmanLaneEditFieldLabel.Position = [89 79 363.984375 15];
            app.numberofpermutationsifPermutationsorFreedmanLaneEditFieldLabel.Text = 'number of permutations (if Permutations or Freedman Lane)';

            % Create numperms
            app.numperms = uieditfield(app.MAINTab, 'numeric');
            app.numperms.Limits = [-100000 100000];
            app.numperms.ValueChangedFcn = createCallbackFcn(app, @numpermsValueChanged, true);
            app.numperms.HorizontalAlignment = 'center';
            app.numperms.FontWeight = 'bold';
            app.numperms.Position = [11 75 63 22];
            app.numperms.Value = 2000;

            % Create testtype
            app.testtype = uibuttongroup(app.MAINTab);
            app.testtype.SelectionChangedFcn = createCallbackFcn(app, @testtypeSelectionChanged, true);
            app.testtype.BorderType = 'none';
            app.testtype.BackgroundColor = [0.2745 0.5882 0.9804];
            app.testtype.Position = [1 109 468 33];

            % Create FDRButton
            app.FDRButton = uiradiobutton(app.testtype);
            app.FDRButton.Text = 'FDR';
            app.FDRButton.Position = [11 7 45.5625 15];
            app.FDRButton.Value = true;

            % Create BoneferroniButton
            app.BoneferroniButton = uiradiobutton(app.testtype);
            app.BoneferroniButton.Text = 'Boneferroni';
            app.BoneferroniButton.Position = [64 7 84.4375 15];

            % Create NormalPermutationButton
            app.NormalPermutationButton = uiradiobutton(app.testtype);
            app.NormalPermutationButton.Text = 'Normal Permutation';
            app.NormalPermutationButton.Position = [152 7 129.59375 15];

            % Create FreedmanLanePermutationButton
            app.FreedmanLanePermutationButton = uiradiobutton(app.testtype);
            app.FreedmanLanePermutationButton.Text = 'Freedman-Lane Permutation';
            app.FreedmanLanePermutationButton.Position = [285 7 252.828125 15];

            % Create Button_19
            app.Button_19 = uibutton(app.MAINTab, 'state');
            app.Button_19.Enable = 'off';
            app.Button_19.Icon = 'UIBUTTONS/ATLAS/coollogo_com-3202760.png';
            app.Button_19.Text = '';
            app.Button_19.BackgroundColor = [0.2745 0.5882 0.9804];
            app.Button_19.FontColor = [0.2745 0.5882 1];
            app.Button_19.Position = [1 347 638 111];

            % Create TextArea_9
            app.TextArea_9 = uitextarea(app.MAINTab);
            app.TextArea_9.Editable = 'off';
            app.TextArea_9.BackgroundColor = [0.902 0.5608 0.9333];
            app.TextArea_9.Position = [1 346 639 15];

            % Create EditField_2
            app.EditField_2 = uieditfield(app.MAINTab, 'text');
            app.EditField_2.Editable = 'off';
            app.EditField_2.FontSize = 22;
            app.EditField_2.BackgroundColor = [0.2745 0.5882 0.9804];
            app.EditField_2.Position = [537 373 84.28125 32];
            app.EditField_2.Value = 'Ver 1.1';

            % Create UseNiiStatClassicCheckBox
            app.UseNiiStatClassicCheckBox = uicheckbox(app.MAINTab);
            app.UseNiiStatClassicCheckBox.ValueChangedFcn = createCallbackFcn(app, @UseNiiStatClassicCheckBoxValueChanged, true);
            app.UseNiiStatClassicCheckBox.Text = 'Use NiiStat Classic';
            app.UseNiiStatClassicCheckBox.Position = [507 64 124.4375 15];

            % Create ATLASTab
            app.ATLASTab = uitab(app.TabGroup);
            app.ATLASTab.Title = 'ATLAS';
            app.ATLASTab.BackgroundColor = [0.2745 0.5882 1];

            % Create TextArea_1
            app.TextArea_1 = uitextarea(app.ATLASTab);
            app.TextArea_1.HorizontalAlignment = 'center';
            app.TextArea_1.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_1.Position = [47 376 265.40625 20];
            app.TextArea_1.Value = {'brodmann'};

            % Create ROIs_1
            app.ROIs_1 = uilistbox(app.ATLASTab);
            app.ROIs_1.Items = {};
            app.ROIs_1.Multiselect = 'on';
            app.ROIs_1.ValueChangedFcn = createCallbackFcn(app, @ROIs_1ValueChanged, true);
            app.ROIs_1.Enable = 'off';
            app.ROIs_1.FontSize = 9;
            app.ROIs_1.FontWeight = 'bold';
            app.ROIs_1.Position = [13 309 298 60];
            app.ROIs_1.Value = {};

            % Create TextArea_2
            app.TextArea_2 = uitextarea(app.ATLASTab);
            app.TextArea_2.HorizontalAlignment = 'center';
            app.TextArea_2.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_2.Position = [358 376 265.40625 20];
            app.TextArea_2.Value = {'jhu'};

            % Create ROIs_2
            app.ROIs_2 = uilistbox(app.ATLASTab);
            app.ROIs_2.Items = {};
            app.ROIs_2.Multiselect = 'on';
            app.ROIs_2.ValueChangedFcn = createCallbackFcn(app, @ROIs_2ValueChanged, true);
            app.ROIs_2.Enable = 'off';
            app.ROIs_2.FontSize = 9;
            app.ROIs_2.FontWeight = 'bold';
            app.ROIs_2.Position = [325 309 298 60];
            app.ROIs_2.Value = {};

            % Create areaSixButton
            app.areaSixButton = uibutton(app.ATLASTab, 'state');
            app.areaSixButton.ValueChangedFcn = createCallbackFcn(app, @areaSixButtonValueChanged, true);
            app.areaSixButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaSixButton.Text = '';
            app.areaSixButton.BackgroundColor = [1 1 1];
            app.areaSixButton.Position = [325 177 34 28];

            % Create TextArea_6
            app.TextArea_6 = uitextarea(app.ATLASTab);
            app.TextArea_6.HorizontalAlignment = 'center';
            app.TextArea_6.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_6.Position = [358 181 265.40625 20];
            app.TextArea_6.Value = {'aicha'};

            % Create ROIs_6
            app.ROIs_6 = uilistbox(app.ATLASTab);
            app.ROIs_6.Items = {};
            app.ROIs_6.Multiselect = 'on';
            app.ROIs_6.ValueChangedFcn = createCallbackFcn(app, @ROIs_6ValueChanged, true);
            app.ROIs_6.Enable = 'off';
            app.ROIs_6.FontSize = 9;
            app.ROIs_6.FontWeight = 'bold';
            app.ROIs_6.Position = [325 113 298 59];
            app.ROIs_6.Value = {};

            % Create areaSevenButton
            app.areaSevenButton = uibutton(app.ATLASTab, 'state');
            app.areaSevenButton.ValueChangedFcn = createCallbackFcn(app, @areaSevenButtonValueChanged, true);
            app.areaSevenButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaSevenButton.Text = '';
            app.areaSevenButton.BackgroundColor = [1 1 1];
            app.areaSevenButton.Position = [14 78 34 28];

            % Create TextArea_7
            app.TextArea_7 = uitextarea(app.ATLASTab);
            app.TextArea_7.HorizontalAlignment = 'center';
            app.TextArea_7.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_7.Position = [47 82 265.390625 20];
            app.TextArea_7.Value = {'fox'};

            % Create ROIsListBoxLabel_4
            app.ROIsListBoxLabel_4 = uilabel(app.ATLASTab);
            app.ROIsListBoxLabel_4.HorizontalAlignment = 'center';
            app.ROIsListBoxLabel_4.Position = [669 -34 69 15];
            app.ROIsListBoxLabel_4.Text = 'ROIs';

            % Create ROIs_7
            app.ROIs_7 = uilistbox(app.ATLASTab);
            app.ROIs_7.Items = {};
            app.ROIs_7.Multiselect = 'on';
            app.ROIs_7.ValueChangedFcn = createCallbackFcn(app, @ROIs_7ValueChanged, true);
            app.ROIs_7.Enable = 'off';
            app.ROIs_7.FontSize = 9;
            app.ROIs_7.FontWeight = 'bold';
            app.ROIs_7.Position = [14 14 298 59];
            app.ROIs_7.Value = {};

            % Create areaThreeButton
            app.areaThreeButton = uibutton(app.ATLASTab, 'state');
            app.areaThreeButton.ValueChangedFcn = createCallbackFcn(app, @areaThreeButtonValueChanged, true);
            app.areaThreeButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaThreeButton.Text = '';
            app.areaThreeButton.BackgroundColor = [1 1 1];
            app.areaThreeButton.Position = [15 277 33 27];

            % Create TextArea_3
            app.TextArea_3 = uitextarea(app.ATLASTab);
            app.TextArea_3.HorizontalAlignment = 'center';
            app.TextArea_3.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_3.Position = [46 280 265.40625 20];
            app.TextArea_3.Value = {'aal'};

            % Create areaFourButton
            app.areaFourButton = uibutton(app.ATLASTab, 'state');
            app.areaFourButton.ValueChangedFcn = createCallbackFcn(app, @areaFourButtonValueChanged, true);
            app.areaFourButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaFourButton.Text = '';
            app.areaFourButton.BackgroundColor = [1 1 1];
            app.areaFourButton.Position = [325 276 34 28];

            % Create TextArea_4
            app.TextArea_4 = uitextarea(app.ATLASTab);
            app.TextArea_4.HorizontalAlignment = 'center';
            app.TextArea_4.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_4.Position = [358 280 265.40625 20];
            app.TextArea_4.Value = {'cat'};

            % Create ROIs_4
            app.ROIs_4 = uilistbox(app.ATLASTab);
            app.ROIs_4.Items = {};
            app.ROIs_4.Multiselect = 'on';
            app.ROIs_4.ValueChangedFcn = createCallbackFcn(app, @ROIs_4ValueChanged, true);
            app.ROIs_4.Enable = 'off';
            app.ROIs_4.FontSize = 9;
            app.ROIs_4.FontWeight = 'bold';
            app.ROIs_4.Position = [325 212 298 59];
            app.ROIs_4.Value = {};

            % Create areaFiveButton
            app.areaFiveButton = uibutton(app.ATLASTab, 'state');
            app.areaFiveButton.ValueChangedFcn = createCallbackFcn(app, @areaFiveButtonValueChanged, true);
            app.areaFiveButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaFiveButton.Text = '';
            app.areaFiveButton.BackgroundColor = [1 1 1];
            app.areaFiveButton.Position = [15 178 33 27];

            % Create TextArea_5
            app.TextArea_5 = uitextarea(app.ATLASTab);
            app.TextArea_5.HorizontalAlignment = 'center';
            app.TextArea_5.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_5.Position = [47 181 264.40625 20];
            app.TextArea_5.Value = {'aalcat'};

            % Create ROIs_5
            app.ROIs_5 = uilistbox(app.ATLASTab);
            app.ROIs_5.Items = {};
            app.ROIs_5.Multiselect = 'on';
            app.ROIs_5.ValueChangedFcn = createCallbackFcn(app, @ROIs_5ValueChanged, true);
            app.ROIs_5.Enable = 'off';
            app.ROIs_5.FontSize = 9;
            app.ROIs_5.FontWeight = 'bold';
            app.ROIs_5.Position = [14 113 298 59];
            app.ROIs_5.Value = {};

            % Create voxelwiseButton
            app.voxelwiseButton = uibutton(app.ATLASTab, 'state');
            app.voxelwiseButton.Icon = 'UIBUTTONS/ATLAS/voxels.png';
            app.voxelwiseButton.Text = '';
            app.voxelwiseButton.BackgroundColor = [1 1 1];
            app.voxelwiseButton.Position = [366 402 95 51];

            % Create ROIs_3
            app.ROIs_3 = uilistbox(app.ATLASTab);
            app.ROIs_3.Items = {};
            app.ROIs_3.Multiselect = 'on';
            app.ROIs_3.ValueChangedFcn = createCallbackFcn(app, @ROIs_3ValueChanged, true);
            app.ROIs_3.Enable = 'off';
            app.ROIs_3.FontSize = 9;
            app.ROIs_3.FontWeight = 'bold';
            app.ROIs_3.Position = [14 212 298 59];
            app.ROIs_3.Value = {};

            % Create areaTwoButton
            app.areaTwoButton = uibutton(app.ATLASTab, 'state');
            app.areaTwoButton.ValueChangedFcn = createCallbackFcn(app, @areaTwoButtonValueChanged, true);
            app.areaTwoButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaTwoButton.Text = '';
            app.areaTwoButton.BackgroundColor = [1 1 1];
            app.areaTwoButton.Position = [326 373 33 27];

            % Create areaOneButton
            app.areaOneButton = uibutton(app.ATLASTab, 'state');
            app.areaOneButton.ValueChangedFcn = createCallbackFcn(app, @areaOneButtonValueChanged, true);
            app.areaOneButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaOneButton.Text = '';
            app.areaOneButton.BackgroundColor = [1 1 1];
            app.areaOneButton.Position = [15 373 33 27];

            % Create EditField
            app.EditField = uieditfield(app.ATLASTab, 'text');
            app.EditField.Position = [462 405 161.921875 25];
            app.EditField.Value = 'All voxels will be analyzed...';

            % Create SELECTROISUBSETButtonGroup
            app.SELECTROISUBSETButtonGroup = uibuttongroup(app.ATLASTab);
            app.SELECTROISUBSETButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ChangeROIList, true);
            app.SELECTROISUBSETButtonGroup.TitlePosition = 'centertop';
            app.SELECTROISUBSETButtonGroup.Title = 'SELECT ROI SUBSET';
            app.SELECTROISUBSETButtonGroup.BackgroundColor = [0.2745 0.5882 0.9804];
            app.SELECTROISUBSETButtonGroup.FontWeight = 'bold';
            app.SELECTROISUBSETButtonGroup.Position = [13 402 231 51];

            % Create OriginalROISetButton
            app.OriginalROISetButton = uitogglebutton(app.SELECTROISUBSETButtonGroup);
            app.OriginalROISetButton.Text = ' Original ROI Set';
            app.OriginalROISetButton.Position = [63 5 105 22];
            app.OriginalROISetButton.Value = true;

            % Create TextArea_VOXELWISE
            app.TextArea_VOXELWISE = uitextarea(app.ATLASTab);
            app.TextArea_VOXELWISE.HorizontalAlignment = 'center';
            app.TextArea_VOXELWISE.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_VOXELWISE.Position = [462 432 162.40625 20];
            app.TextArea_VOXELWISE.Value = {'Voxel Wise'; ''};

            % Create areaEightButton
            app.areaEightButton = uibutton(app.ATLASTab, 'state');
            app.areaEightButton.ValueChangedFcn = createCallbackFcn(app, @areaEightButtonValueChanged, true);
            app.areaEightButton.Icon = 'UIBUTTONS/UI/roundbuttonblue.png';
            app.areaEightButton.Text = '';
            app.areaEightButton.BackgroundColor = [1 1 1];
            app.areaEightButton.Position = [325 78 34 28];

            % Create TextArea_8
            app.TextArea_8 = uitextarea(app.ATLASTab);
            app.TextArea_8.HorizontalAlignment = 'center';
            app.TextArea_8.BackgroundColor = [0.6275 0.9333 0.6157];
            app.TextArea_8.Position = [358 82 265.390625 20];
            app.TextArea_8.Value = {'catani'};

            % Create ROIs_8
            app.ROIs_8 = uilistbox(app.ATLASTab);
            app.ROIs_8.Items = {};
            app.ROIs_8.Multiselect = 'on';
            app.ROIs_8.ValueChangedFcn = createCallbackFcn(app, @ROIs_8ValueChanged, true);
            app.ROIs_8.Enable = 'off';
            app.ROIs_8.FontSize = 9;
            app.ROIs_8.FontWeight = 'bold';
            app.ROIs_8.Position = [325 14 298 59];
            app.ROIs_8.Value = {};

            % Create CustomROIsSwitchLabel
            app.CustomROIsSwitchLabel = uilabel(app.ATLASTab);
            app.CustomROIsSwitchLabel.HorizontalAlignment = 'center';
            app.CustomROIsSwitchLabel.Position = [268 432 78 15];
            app.CustomROIsSwitchLabel.Text = 'Custom ROIs';

            % Create CustomROIsSwitch
            app.CustomROIsSwitch = uiswitch(app.ATLASTab, 'toggle');
            app.CustomROIsSwitch.Items = {'_No', 'Yes'};
            app.CustomROIsSwitch.Orientation = 'horizontal';
            app.CustomROIsSwitch.ValueChangedFcn = createCallbackFcn(app, @CustomROIsSwitchValueChanged, true);
            app.CustomROIsSwitch.Position = [283 407 45 20];
            app.CustomROIsSwitch.Value = '_No';

            % Create MODALITYTab
            app.MODALITYTab = uitab(app.TabGroup);
            app.MODALITYTab.Title = 'MODALITY';
            app.MODALITYTab.BackgroundColor = [0.2745 0.5882 1];

            % Create LESIONButton
            app.LESIONButton = uibutton(app.MODALITYTab, 'state');
            app.LESIONButton.Text = 'LESION';
            app.LESIONButton.Position = [10 281 145 41];

            % Create CBFButton
            app.CBFButton = uibutton(app.MODALITYTab, 'state');
            app.CBFButton.Text = 'CBF';
            app.CBFButton.Position = [485 281 145 41];

            % Create RESTButton
            app.RESTButton = uibutton(app.MODALITYTab, 'state');
            app.RESTButton.Text = 'REST';
            app.RESTButton.Position = [327 161 145 41];

            % Create i3mT1Button
            app.i3mT1Button = uibutton(app.MODALITYTab, 'state');
            app.i3mT1Button.Text = 'i3mT1';
            app.i3mT1Button.Position = [10 221 145 41];

            % Create MTTButton
            app.MTTButton = uibutton(app.MODALITYTab, 'state');
            app.MTTButton.Text = 'MTT';
            app.MTTButton.Position = [485 101 145 41];

            % Create DTIMDButton
            app.DTIMDButton = uibutton(app.MODALITYTab, 'state');
            app.DTIMDButton.Text = 'DTI (MD)';
            app.DTIMDButton.Position = [169 161 145 41];

            % Create TTPButton
            app.TTPButton = uibutton(app.MODALITYTab, 'state');
            app.TTPButton.Text = 'TTP';
            app.TTPButton.Position = [485 161 145 41];

            % Create DTIFAButton
            app.DTIFAButton = uibutton(app.MODALITYTab, 'state');
            app.DTIFAButton.Text = 'DTI (FA)';
            app.DTIFAButton.Position = [169 221 145 41];

            % Create i3mT2Button
            app.i3mT2Button = uibutton(app.MODALITYTab, 'state');
            app.i3mT2Button.Text = 'i3mT2';
            app.i3mT2Button.Position = [10 161 145 41];

            % Create CBVButton
            app.CBVButton = uibutton(app.MODALITYTab, 'state');
            app.CBVButton.Text = 'CBV';
            app.CBVButton.Position = [485 221 145 41];

            % Create DTIFCButton
            app.DTIFCButton = uibutton(app.MODALITYTab, 'state');
            app.DTIFCButton.Text = 'DTI (FC)';
            app.DTIFCButton.Position = [169 41 145 41];

            % Create fMRIButton
            app.fMRIButton = uibutton(app.MODALITYTab, 'state');
            app.fMRIButton.Text = 'fMRI';
            app.fMRIButton.Position = [327 281 145 41];

            % Create fMRIbButton
            app.fMRIbButton = uibutton(app.MODALITYTab, 'state');
            app.fMRIbButton.Text = 'fMRIb';
            app.fMRIbButton.Position = [327 221 145 41];

            % Create RESTalfButton
            app.RESTalfButton = uibutton(app.MODALITYTab, 'state');
            app.RESTalfButton.Text = 'REST-alf';
            app.RESTalfButton.Position = [327 101 145 41];

            % Create RESTpalfButton
            app.RESTpalfButton = uibutton(app.MODALITYTab, 'state');
            app.RESTpalfButton.Text = 'REST-palf';
            app.RESTpalfButton.Position = [327 38 145 41];

            % Create DTIMKButton
            app.DTIMKButton = uibutton(app.MODALITYTab, 'state');
            app.DTIMKButton.Text = 'DTI (MK)';
            app.DTIMKButton.Position = [169 101 145 41];

            % Create Button_11
            app.Button_11 = uibutton(app.MODALITYTab, 'state');
            app.Button_11.Icon = 'uibuttons/ATLAS/LESION.png';
            app.Button_11.Text = '';
            app.Button_11.BackgroundColor = [0.2745 0.5882 1];
            app.Button_11.Position = [9 347 145 82];

            % Create Button_12
            app.Button_12 = uibutton(app.MODALITYTab, 'state');
            app.Button_12.Icon = 'uibuttons/ATLAS/fmri.jpg';
            app.Button_12.Text = '';
            app.Button_12.BackgroundColor = [0.2745 0.5882 1];
            app.Button_12.Position = [326 347 145 82];

            % Create Button_13
            app.Button_13 = uibutton(app.MODALITYTab, 'state');
            app.Button_13.Icon = 'uibuttons/ATLAS/download.jpeg';
            app.Button_13.Text = '';
            app.Button_13.BackgroundColor = [0.2745 0.5882 1];
            app.Button_13.Position = [167 347 145 82];

            % Create Button_14
            app.Button_14 = uibutton(app.MODALITYTab, 'state');
            app.Button_14.Icon = 'uibuttons/ATLAS/cbf.png';
            app.Button_14.Text = '';
            app.Button_14.BackgroundColor = [0.2745 0.5882 1];
            app.Button_14.Position = [484 347 145 82];

            % Create Button_15
            app.Button_15 = uibutton(app.MODALITYTab, 'state');
            app.Button_15.Text = '';
            app.Button_15.Position = [485 38 145 41];

            % Create Button_16
            app.Button_16 = uibutton(app.MODALITYTab, 'state');
            app.Button_16.Text = '';
            app.Button_16.Position = [10 101 145 41];

            % Create DTIButton
            app.DTIButton = uibutton(app.MODALITYTab, 'state');
            app.DTIButton.Text = 'DTI';
            app.DTIButton.Position = [170 281 145 41];

            % Create Button_18
            app.Button_18 = uibutton(app.MODALITYTab, 'state');
            app.Button_18.Text = '';
            app.Button_18.Position = [10 38 145 41];

            % Create SPECIALTab
            app.SPECIALTab = uitab(app.TabGroup);
            app.SPECIALTab.Title = 'SPECIAL';
            app.SPECIALTab.BackgroundColor = [0.2745 0.5882 1];

            % Create Button_20
            app.Button_20 = uibutton(app.SPECIALTab, 'state');
            app.Button_20.Icon = 'uibuttons/ATLAS/left.png';
            app.Button_20.Text = '';
            app.Button_20.BackgroundColor = [0.3686 1 0.8941];
            app.Button_20.FontSize = 10;
            app.Button_20.Position = [16 19 161 81];

            % Create Button_21
            app.Button_21 = uibutton(app.SPECIALTab, 'state');
            app.Button_21.Icon = 'uibuttons/ATLAS/right.png';
            app.Button_21.Text = '';
            app.Button_21.BackgroundColor = [0.3686 1 0.8941];
            app.Button_21.FontSize = 10;
            app.Button_21.Position = [465 19 161 81];

            % Create interhemispheric
            app.interhemispheric = uibutton(app.SPECIALTab, 'state');
            app.interhemispheric.Icon = 'uibuttons/ATLAS/InterHemispheric.png';
            app.interhemispheric.Text = '';
            app.interhemispheric.BackgroundColor = [0.3686 1 0.8941];
            app.interhemispheric.FontSize = 10;
            app.interhemispheric.Position = [230 19 183 81];

            % Create ExplicitVoxelMaskSwitchLabel
            app.ExplicitVoxelMaskSwitchLabel = uilabel(app.SPECIALTab);
            app.ExplicitVoxelMaskSwitchLabel.VerticalAlignment = 'center';
            app.ExplicitVoxelMaskSwitchLabel.Position = [18 416 110 15];
            app.ExplicitVoxelMaskSwitchLabel.Text = 'Explicit Voxel Mask';

            % Create ExplicitVoxelMaskSwitch
            app.ExplicitVoxelMaskSwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.ExplicitVoxelMaskSwitch.Items = {'_No', 'Yes'};
            app.ExplicitVoxelMaskSwitch.Orientation = 'horizontal';
            app.ExplicitVoxelMaskSwitch.Position = [224 413 45 20];
            app.ExplicitVoxelMaskSwitch.Value = '_No';

            % Create RegressLesionVolumeSwitchLabel
            app.RegressLesionVolumeSwitchLabel = uilabel(app.SPECIALTab);
            app.RegressLesionVolumeSwitchLabel.VerticalAlignment = 'center';
            app.RegressLesionVolumeSwitchLabel.Position = [18 380 132 15];
            app.RegressLesionVolumeSwitchLabel.Text = 'Regress Lesion Volume';

            % Create RegressLesionVolumeSwitch
            app.RegressLesionVolumeSwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.RegressLesionVolumeSwitch.Items = {'_No', 'Yes'};
            app.RegressLesionVolumeSwitch.Orientation = 'horizontal';
            app.RegressLesionVolumeSwitch.Position = [224 377 45 20];
            app.RegressLesionVolumeSwitch.Value = '_No';

            % Create DeskewDataSwitchLabel
            app.DeskewDataSwitchLabel = uilabel(app.SPECIALTab);
            app.DeskewDataSwitchLabel.VerticalAlignment = 'center';
            app.DeskewDataSwitchLabel.Position = [19 345 106 15];
            app.DeskewDataSwitchLabel.Text = 'De-skew Data';

            % Create DeskewDataSwitch
            app.DeskewDataSwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.DeskewDataSwitch.Items = {'_No', 'Yes'};
            app.DeskewDataSwitch.Orientation = 'horizontal';
            app.DeskewDataSwitch.Position = [224 342 45 20];
            app.DeskewDataSwitch.Value = '_No';

            % Create IncludeWMCSFconnectivitySwitchLabel
            app.IncludeWMCSFconnectivitySwitchLabel = uilabel(app.SPECIALTab);
            app.IncludeWMCSFconnectivitySwitchLabel.VerticalAlignment = 'center';
            app.IncludeWMCSFconnectivitySwitchLabel.Position = [19 310 165 15];
            app.IncludeWMCSFconnectivitySwitchLabel.Text = 'Include WM/CSF connectivity';

            % Create IncludeWMCSFconnectivitySwitch
            app.IncludeWMCSFconnectivitySwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.IncludeWMCSFconnectivitySwitch.Items = {'_No', 'Yes'};
            app.IncludeWMCSFconnectivitySwitch.Orientation = 'horizontal';
            app.IncludeWMCSFconnectivitySwitch.Position = [224 307 45 20];
            app.IncludeWMCSFconnectivitySwitch.Value = '_No';

            % Create TFCESwitchLabel
            app.TFCESwitchLabel = uilabel(app.SPECIALTab);
            app.TFCESwitchLabel.VerticalAlignment = 'center';
            app.TFCESwitchLabel.Position = [18 278 35 15];
            app.TFCESwitchLabel.Text = 'TFCE';

            % Create TFCESwitch
            app.TFCESwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.TFCESwitch.Items = {'_No', 'Yes'};
            app.TFCESwitch.Orientation = 'horizontal';
            app.TFCESwitch.Position = [223 275 45 20];
            app.TFCESwitch.Value = '_No';

            % Create ReportROIMeansSwitchLabel
            app.ReportROIMeansSwitchLabel = uilabel(app.SPECIALTab);
            app.ReportROIMeansSwitchLabel.VerticalAlignment = 'center';
            app.ReportROIMeansSwitchLabel.Position = [17 241 105 15];
            app.ReportROIMeansSwitchLabel.Text = 'Report ROI Means';

            % Create ReportROIMeansSwitch
            app.ReportROIMeansSwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.ReportROIMeansSwitch.Items = {'_No', 'Yes'};
            app.ReportROIMeansSwitch.Orientation = 'horizontal';
            app.ReportROIMeansSwitch.Position = [222 238 45 20];
            app.ReportROIMeansSwitch.Value = '_No';

            % Create SVMSwitchLabel
            app.SVMSwitchLabel = uilabel(app.SPECIALTab);
            app.SVMSwitchLabel.VerticalAlignment = 'center';
            app.SVMSwitchLabel.Position = [17 206 31 15];
            app.SVMSwitchLabel.Text = 'SVM';

            % Create SVMSwitch
            app.SVMSwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.SVMSwitch.Items = {'_No', 'Yes'};
            app.SVMSwitch.Orientation = 'horizontal';
            app.SVMSwitch.Position = [222 203 45 20];
            app.SVMSwitch.Value = '_No';

            % Create LowResolutionSwitchLabel
            app.LowResolutionSwitchLabel = uilabel(app.SPECIALTab);
            app.LowResolutionSwitchLabel.VerticalAlignment = 'center';
            app.LowResolutionSwitchLabel.Position = [17 170 88 15];
            app.LowResolutionSwitchLabel.Text = 'Low Resolution';

            % Create LowResolutionSwitch
            app.LowResolutionSwitch = uiswitch(app.SPECIALTab, 'toggle');
            app.LowResolutionSwitch.Items = {'_No', 'Yes'};
            app.LowResolutionSwitch.Orientation = 'horizontal';
            app.LowResolutionSwitch.Position = [222 167 45 20];
            app.LowResolutionSwitch.Value = '_No';

            % Create ChooseMaskButton
            app.ChooseMaskButton = uibutton(app.SPECIALTab, 'push');
            app.ChooseMaskButton.ButtonPushedFcn = createCallbackFcn(app, @ChooseMaskButtonPushed, true);
            app.ChooseMaskButton.Position = [317 412 309 22];
            app.ChooseMaskButton.Text = 'Choose Mask';

            % Create ChosenMaskEditField
            app.ChosenMaskEditField = uieditfield(app.SPECIALTab, 'text');
            app.ChosenMaskEditField.FontSize = 10;
            app.ChosenMaskEditField.FontWeight = 'bold';
            app.ChosenMaskEditField.Position = [318 388 308 22];

            % Create ClearMaskButton
            app.ClearMaskButton = uibutton(app.SPECIALTab, 'push');
            app.ClearMaskButton.Position = [317 364 310 22];
            app.ClearMaskButton.Text = 'Clear Mask';

            % Create LimitanalysistolefthemisphererighthemisphereorbilateralLabel
            app.LimitanalysistolefthemisphererighthemisphereorbilateralLabel = uilabel(app.SPECIALTab);
            app.LimitanalysistolefthemisphererighthemisphereorbilateralLabel.Position = [16 107 504 15];
            app.LimitanalysistolefthemisphererighthemisphereorbilateralLabel.Text = 'Limit analysis to left hemisphere, right hemisphere or just interhemispheric. *Default is ''ALL''.';

            % Create PurgeROIdatafrommatfilesButton
            app.PurgeROIdatafrommatfilesButton = uibutton(app.SPECIALTab, 'push');
            app.PurgeROIdatafrommatfilesButton.ButtonPushedFcn = createCallbackFcn(app, @PurgeROIdatafrommatfilesButtonPushed, true);
            app.PurgeROIdatafrommatfilesButton.Position = [318 166 309 22];
            app.PurgeROIdatafrommatfilesButton.Text = 'Purge ROI data from .mat files';

            % Create InsomecasesyoumaywishtoremovetheROIspecificLabel
            app.InsomecasesyoumaywishtoremovetheROIspecificLabel = uilabel(app.SPECIALTab);
            app.InsomecasesyoumaywishtoremovetheROIspecificLabel.Position = [319 210 320 19];
            app.InsomecasesyoumaywishtoremovetheROIspecificLabel.Text = 'In some cases you may wish to remove the ROI specific ';

            % Create portionofthematfilesandrecalculateitforeachfileLabel
            app.portionofthematfilesandrecalculateitforeachfileLabel = uilabel(app.SPECIALTab);
            app.portionofthematfilesandrecalculateitforeachfileLabel.Position = [319 192 320 19];
            app.portionofthematfilesandrecalculateitforeachfileLabel.Text = 'portion of the .mat files and recalculate it for each file. ';

            % Create SPECIALTab_2
            app.SPECIALTab_2 = uitab(app.TabGroup);
            app.SPECIALTab_2.Title = 'SPECIAL+';

            % Create COMINGSOONLabel
            app.COMINGSOONLabel = uilabel(app.SPECIALTab_2);
            app.COMINGSOONLabel.FontSize = 36;
            app.COMINGSOONLabel.Position = [168 205 304 47];
            app.COMINGSOONLabel.Text = 'COMING SOON!!!';
        end
    end

    methods (Access = public)

        % Construct app
        function app = NiiStatGUI

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @StartupFunction)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end

