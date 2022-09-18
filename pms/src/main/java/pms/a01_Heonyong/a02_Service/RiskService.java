package pms.a01_Heonyong.a02_Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pms.a01_Heonyong.a03_DAO.riskManagementPlanDao;
import pms.a01_Heonyong.a04_VO.riskManagementPlan;

@Service
public class RiskService {
    @Autowired(required = false)
    private riskManagementPlanDao dao;
    
    public List<riskManagementPlan> getRMPlanList(int prjno){
        return dao.getRMPlanList(prjno);
    }
    
}
