package pms.a01_Heonyong.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Heonyong.a02_Service.RiskService;

@Controller
public class RiskController {
    @Autowired(required = false)
    private RiskService service;
    // http://localhost:7080/pms/rmpList.do
    @RequestMapping("rmpList.do")
    public String riskList(@RequestParam(value ="prjno",defaultValue = "1")
    int prjno, Model d) {
        d.addAttribute("rmpList", service.getRMPlanList(prjno));
        return "WEB-INF\\views\\a01_Heonyong\\00.riskManagementPrjList.jsp";
    }

}
