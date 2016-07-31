package com.mfu.rest;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.Produces;
import javax.ws.rs.FormParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.log4j.Logger;
import org.restlet.data.Status;

import com.mfu.dao.TrainingProjectDAO;
import com.mfu.dao.TrainingTypeDAO;
import com.mfu.entity.TrainingProject;
import com.mfu.entity.TrainingType;

@Path("/trainingtype")
public class TrainingTypeController {

	private static final Logger logger = Logger.getLogger(TrainingTypeController.class);

	@GET
	@Path("/<add method name here>")
    @Produces(MediaType.TEXT_PLAIN)
	public String getSomething(@QueryParam("request") String request ,
			 @DefaultValue("1") @QueryParam("version") int version) {

		if (logger.isDebugEnabled()) {
			logger.debug("Start getSomething");
			logger.debug("data: '" + request + "'");
			logger.debug("version: '" + version + "'");
		}

		String response = null;

        try{			
            switch(version){
	            case 1:
	                if(logger.isDebugEnabled()) logger.debug("in version 1");

	                response = "Response from Jersey Restful Webservice : " + request;
                    break;
                default: throw new Exception("Unsupported version: " + version);
            }
        }
        catch(Exception e){
        	response = e.getMessage().toString();
        }
        
        if(logger.isDebugEnabled()){
            logger.debug("result: '"+response+"'");
            logger.debug("End getSomething");
        }
        return response;	
	}

	@POST
	@Path("/<add method name here>")
    @Produces(MediaType.TEXT_PLAIN)
	public String postSomething(@FormParam("request") String request ,  @DefaultValue("1") @FormParam("version") int version) {

		if (logger.isDebugEnabled()) {
			logger.debug("Start postSomething");
			logger.debug("data: '" + request + "'");
			logger.debug("version: '" + version + "'");
		}

		String response = null;

        try{			
            switch(version){
	            case 1:
	                if(logger.isDebugEnabled()) logger.debug("in version 1");

	                response = "Response from Jersey Restful Webservice : " + request;
                    break;
                default: throw new Exception("Unsupported version: " + version);
            }
        }
        catch(Exception e){
        	response = e.getMessage().toString();
        }
        
        if(logger.isDebugEnabled()){
            logger.debug("result: '"+response+"'");
            logger.debug("End postSomething");
        }
        return response;	
	}

	@PUT
	@Path("/showhide/{typeid}")
    @Consumes(MediaType.APPLICATION_JSON)
	public Response editShowHide(@PathParam("typeid") String typeid) {
			TrainingType trainingtype = new TrainingTypeDAO().findTrainingTypeById(Long.parseLong(typeid));
			try{
				if(trainingtype.isShow() == true){
					trainingtype.setShow(false);
				}else{
					trainingtype.setShow(true);
				}
				
				TrainingTypeDAO typedao = new TrainingTypeDAO();
				typedao.update(trainingtype);
				return Response.ok().status(200).build();
			}catch(Exception e){
				return Response.status(400).build();
			}
	}
	
	@PUT
	@Path("/edittitle/{typeid}/{title}/{year}")
    @Consumes(MediaType.APPLICATION_JSON)
	public Response editTitle(@PathParam("typeid") String typeid,@PathParam("title") String title,@PathParam("year") String year) throws UnsupportedEncodingException {
			TrainingType trainingtype = new TrainingTypeDAO().findTrainingTypeById(Long.parseLong(typeid));
			
			
			System.out.println(title);
			try{
				TrainingTypeDAO traindao = new TrainingTypeDAO();
				boolean pass = true ;
				List<TrainingType> listtraining = traindao.getAllTrainingType();
				for(TrainingType type : listtraining){
					if(type.getTrainingtypename().equals(title) && type.getYear().equals(year)){
						pass = false ;
						break;
					}
				}
				if(pass == true){
					trainingtype.setTrainingtypename(title);
					trainingtype.setYear(year);
					
					TrainingTypeDAO dao = new TrainingTypeDAO();
					dao.update(trainingtype);
					return Response.ok().status(200).build();
				}else{
					return Response.status(400).build();
				}
			}catch(Exception e){
				return Response.status(400).build();
			}
	}

	@DELETE
	@Path("/deletetrainingtype/{typeid}")
	public Response deleteTrainingType(@PathParam("typeid") String typeid) {
		try{
			TrainingTypeDAO dao = new TrainingTypeDAO();
			List<TrainingProject> listtraining = dao.getTrainingProjectByTrainingType(Long.parseLong(typeid)); 
			for(TrainingProject training : listtraining){
				new TrainingProjectDAO().delete(training.getId());
			}
			dao.delete(Long.parseLong(typeid));
			return Response.ok().status(200).build();
		}catch(Exception e){
			return Response.status(400).build();
		}
	}
}
