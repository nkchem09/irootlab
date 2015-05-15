%>@brief  Generated by a @ref as_grades object, carries a "grades" vector; usually
classdef log_grades < irlog
    properties
        %> Grades vector
        grades;
        
        %> Extracted from data
        fea_x;
        %> Extracted from data
        xname = '';
        %> Extracted from data
        xunit;
        %> Describes what the "grades" represent
        yname;
        %> Describes what the "grades" represent
        yunit;
    end;
    
    properties
        nf;
    end;
    
    methods
        function o = log_grades()
            o.flag_ui = 0;
        end;
        
        function n = get.nf(o)
            n = numel(o.fea_x);
        end;
        
%         function o = draw(.....)
%         function o = draw(o, data_hint, flag_mark)
%             if ~exist('data_hint', 'var')
%                 data_hint = [];
%             end;
%             
%             o.draw_grades(data_hint, 1);
%             o.draw_markers();
%             o.draw_finish();
%         end;
% 

        
        
    end;
end
