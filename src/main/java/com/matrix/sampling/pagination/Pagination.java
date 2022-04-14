package com.matrix.sampling.pagination;

import java.util.List;

import com.matrix.sampling.model.CPS;

public  class Pagination {
 
    
    public static List<CPS> getCPSForCurrentPage(int currentPage, int recordsPerPage, List<CPS> listCPS) {
    	
    	int start = currentPage * recordsPerPage - recordsPerPage;
    	int end = start + recordsPerPage;
    	int recordSize = listCPS.size();    	
    	if(end > recordSize)
    		end = recordSize;
    	List<CPS> customizedList = listCPS.subList(start,end);    	
    	return customizedList;
    }
    

}
