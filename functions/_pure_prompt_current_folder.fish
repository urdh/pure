set FAIL 1

function _pure_prompt_current_folder --argument-names current_prompt_width

    if test -z "$current_prompt_width"; return $FAIL; end

    set --local current_folder (_pure_parse_directory (math $COLUMNS - $current_prompt_width - 1))
    set --local current_folder_color "$pure_color_blue"

    echo "$current_folder_color$current_folder"
end