package Main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SSServlet
 */
@WebServlet("/SSServlet")
public class SSServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SSServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Emulator emu = new Emulator();
		PrintWriter out = response.getWriter();
	    response.setContentType("text/plain");
		
	    
	    
	    float batteryDODLimit = Float.parseFloat(request.getParameter("batteryDODLimit"));
	    float batteryAH = Float.parseFloat(request.getParameter("batteryAH"));
	    float batteryCuurentDOD = Float.parseFloat(request.getParameter("batteryCurrentDOD"));
	    emu.setBattery(batteryDODLimit, batteryAH, batteryCuurentDOD);
	    
	    
	    float solarWatts = Float.parseFloat(request.getParameter("solarWatts"));
	    float solarHOU = Float.parseFloat(request.getParameter("solarHOU"));
	    emu.setPanel(solarWatts, solarHOU);
        
        
        
        
        
        
        
       
 
        Enumeration<String> parameterNames = request.getParameterNames();
        parameterNames.nextElement();
        parameterNames.nextElement();
        parameterNames.nextElement();
        parameterNames.nextElement();
        parameterNames.nextElement();
        
        
        Float[] DCWatts= new Float[0];
        Float[] DCHOU= new Float[0];
        Float[] ACWatts= new Float[0];
        Float[] ACHOU= new Float[0];;
        while (parameterNames.hasMoreElements()) {
 
            String paramName = parameterNames.nextElement();
            String[] paramValues = Arrays.copyOfRange(request.getParameterValues(paramName),1,request.getParameterValues(paramName).length);
            switch(paramName)
            {
            	case "DCWatts":
            		DCWatts = Arrays.stream(paramValues).map(Float::valueOf).toArray(Float[]::new);
            		break;
            	case "DCHOU":
            		DCHOU =Arrays.stream(paramValues).map(Float::valueOf).toArray(Float[]::new);
            		break;
            	case "ACWatts":
            		ACWatts = Arrays.stream(paramValues).map(Float::valueOf).toArray(Float[]::new);
            		break;
            	case "ACHOU":
            		ACHOU = Arrays.stream(paramValues).map(Float::valueOf).toArray(Float[]::new);
            		break;
            }
 
        }
        
        float[][] DC = new float[DCWatts.length][2];
        float[][] AC = new float[ACWatts.length][2];
        
        
        
        for(int i = 0; i < DC.length;i++)
        {
        	DC[i][0] = DCWatts[i];
        	DC[i][1] = DCHOU[i];
        }
        for(int i = 0; i < AC.length;i++)
        {
        	AC[i][0] = ACWatts[i];
        	AC[i][1] = ACHOU[i];
        }
        for(int i = 0; i<DC.length;i++)
        {
        	emu.addDCAppliance(DC[i][0],DC[i][1]);
        }
        for(int i = 0; i<AC.length;i++)
        {
        	emu.addACAppliance(AC[i][0],AC[i][1]);
        }
        
        Double[] runOverDays = emu.run(100);
        
        request.setAttribute("runOverDays", Arrays.asList(runOverDays));
        
        
        RequestDispatcher rd = request.getRequestDispatcher("DataRet.jsp");
        rd.forward(request, response);
        out.println("</body>");
        out.println("</html>");
		
        
        
        
        for(int i=0;i<runOverDays.length;i++)
			System.out.println(runOverDays[i]);
 
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
