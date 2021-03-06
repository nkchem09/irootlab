%> @brief Log generated by a @ref as_fsel_forward
classdef log_as_fsel_forward < log_as_fsel
    properties
        %> "Number of features x grade"
        nfxgrade;
    end;
    
    methods
        function o = log_as_fsel_forward()
            o.classtitle = 'Forward';
            o.moreactions = [o.moreactions, {'extract_dataset'}];
        end;

        %> Draws in histogram shape
        function o = draw(o, data_hint, flag_mark) %#ok<INUSD>
            if ~exist('data_hint', 'var')
                data_hint = [];
            end;
            
            o.draw_grades(data_hint, 1);
            o.draw_markers();
            o.draw_finish();
        end;
        
        %> Creates a dataset with one row containing the @ref nfxgrades property.
        %>
        %> @sa as_fsel_grades
        function out = extract_dataset(o)
            out = irdata();    
            out.X = o.nfxgrade(:)';  % row vector
            out.classes = 0;
            out.classlabels = {o.yname};
            out.fea_x = 1:numel(o.nfxgrade);
            out.xname = 'Number of features';
            out.xunit = '';
            out.yname = o.yname;
            out.yunit = o.yunit;
            out.title = 'Number of features X Grade';
            out = out.assert_fix();
        end;
    end;   
end
