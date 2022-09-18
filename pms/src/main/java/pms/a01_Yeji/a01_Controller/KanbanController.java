package pms.a01_Yeji.a01_Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
@Controller
public class KanbanController {
	// http://localhost:7080/pms/kanban.do
	@RequestMapping("kanban.do")
	public String kanban() {
		return "WEB-INF\\views\\a01_Yeji\\kanban.jsp";
	}
}
