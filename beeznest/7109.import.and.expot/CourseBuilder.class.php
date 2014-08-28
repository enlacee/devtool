<?php

    /**
     * Build the course-object
     *
     * @param int      session_id
     * @param string   course_code
     * @param bool     true if you want to get the elements that exists in the course and
     *                 in the session, (session_id = 0 or session_id = X)
     */
	public function build($session_id = 0, $course_code = '', $with_base_content = false)
    {
        $table_link       = Database :: get_course_table(TABLE_LINKED_RESOURCES);
        $table_properties = Database :: get_course_table(TABLE_ITEM_PROPERTY);
        $course_info      = api_get_course_info($course_code);
        $course_id        = $course_info['real_id'];
        
        $course_code = empty($course_code) ? $course_info['code'] : $course_code;

        foreach ($this->tools_to_build as $tool) {
            $function_build = 'build_'.$tool;
            $specificIdList = isset($this->specific_id_list[$tool]) ? $this->specific_id_list[$tool] : null;

            $this->$function_build(
                $session_id,
                $course_code,
                $with_base_content,
                $specificIdList
            );
        }



	}




    /**
     * Build tool intro
     */
    public function build_tool_intro($session_id = 0, $course_code = '', $with_base_content = false, $id_list = array())
    {
        $table = Database :: get_course_table(TABLE_TOOL_INTRO);
        $course_id = api_get_course_int_id();
        $sql = "SELECT * FROM $table WHERE c_id = $course_id ";
        $db_result = Database::query($sql);
        while ($obj = Database::fetch_object($db_result)) {
            $tool_intro = new ToolIntro($obj->id, $obj->intro_text);
            $this->course->add_resource($tool_intro);
        }
    }

    /**
     * ayuda a filtrar si existen imagenes q apuntan ah un usuario o a muchos
     * formatea String para que todo los recursos direccionen ah
     * document/shared_folder/imagen.jpg
     * @param string $introText cadena a filtrar
     */
    private function _filterToolIntro($course_code, $string)
    {
        $stringSearch = '/courses/' . $course_code . '/document/shared_folder/';
        $pos = strpos($string, $stringSearch);

        if ($pos === false) {
            //
        } else {
            // Se encontro cadena podemos formatear

        }

    }