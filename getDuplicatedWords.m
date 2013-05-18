function duplicated = getDuplicatedWords(t1,t2)
    t1 = deleteNotAlfanumericElements(t1);
    t2 = deleteNotAlfanumericElements(t2);
    vec_1 = regexp(t1,' ','split');
    vec_2 = regexp(t2,' ','split');
    duplicated = getDuplicatedElements(vec_1,vec_2);
end

function duplicated = getDuplicatedElements(vec_1,vec_2)   
    duplicated = [];
    for i=1:length(vec_1)
        for j=1:length(vec_2)
            if(strcmp(vec_1(i),vec_2(j)))
                if(isNotIncluded(duplicated,vec_1(i)))
                    duplicated = [duplicated,vec_1(i)];
                end
            end
        end
    end
end

function result = isNotIncluded(array,element)
    result = 1;
    for i=1:length(array)
        if(strcmp(array(i),element))
            result = 0;
        end
    end
end

function result = deleteNotAlfanumericElements(string)
    result = strrep(string,',','');
    result = strrep(result,'.','');
    result = strrep(result,';','');
    result = strrep(result,':','');
    result = strrep(result,'¡','');
    result = strrep(result,'!','');
    result = strrep(result,'?','');
    result = strrep(result,'¿','');
end