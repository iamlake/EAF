package com.icelake.modules.sys.techcomp.codelist.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icelake.common.service.CrudService;
import com.icelake.modules.sys.techcomp.codelist.dao.CodelistDAO;
import com.icelake.modules.sys.techcomp.codelist.entity.Codelist;

@Service("codelistService")
@Transactional(readOnly = true)
public class CodelistService extends CrudService<CodelistDAO, Codelist> {

}
