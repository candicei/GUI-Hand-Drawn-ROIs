%% Test script
% function [data_struct] = fn_runApp(pNum, sNum, roi_lwi_zone)
%     theapp = fitROIsGUI(pNum, sNum, roi_lwi_zone);
function [data_struct] = fn_runApp(pNum, sNum, roi_lwi_zone,overlayIm)
    theapp = fitROIsGUI_processAfter(pNum, sNum, roi_lwi_zone,overlayIm);
%     theapp = fitROIsGUI_processAfter_may29th(pNum, sNum, roi_lwi_zone,overlayIm);
    
    waitfor(theapp.UIFigure,'UserData');
    
    data_struct = theapp.UIFigure.UserData;
    delete(theapp)

end