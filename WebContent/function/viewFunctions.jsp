<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="s" uri="/struts-tags"%> 

<script type="text/javascript">
function confirmation(id){
	var conf=confirm("êtes-vous sûr de vouloir supprimer? ");
	if(conf==true)
		document.location="removeFunction.action?id="+id;
}

</script>

<div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Functions <small>Listing design</small></h3>
              </div>
			
		
					
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Missions</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
               <div class="x_content">
                 <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="" method="post" action="saveMission.action">
					<p style="color: red;">
						<s:if test="hasActionErrors()">
							<div id="loginMsg"
								style="padding-left: 10px; padding-right: 10px; color: red;">
								<s:iterator value="actionErrors">
									<p class="msg error">
										<s:property escape="false" />
									</p>
								</s:iterator>
							</div>
						</s:if>
						<s:elseif test="hasActionMessages()">
							<div
								style="padding-left: 10px; padding-right: 10px; color: green;">
								<s:iterator value="actionMessages">
									<p class="msg info" style="color: green;">
										<s:property escape="false" />
									</p>
								</s:iterator>
							</div>
						</s:elseif>
					</p>
					</form>
				
				<form action="" method="post">
                    <!-- start mission list -->
                    <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th style="width: 1%">#</th>
                          <th style="width: 20%">Function Name</th>
                          <th> Mission Name </th>
                          <th> Description </th>
                          <th>Function Progress</th>
                          <th style="width: 20%">#Edit</th>
                        </tr>
                      </thead>
                      <tbody>
                      <s:iterator value="functions" var="function" status="rowstatus">
                        <tr>
                          <td><s:property value="#function.id"/></td>
                          <td>
                            <a><s:property value="#function.functionName"/></a>
                          </td>
                          <td> <s:property value="selectedMission"/> </td>
                          
                          
                          <td> <s:property value="#function.description"/> </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="<s:property value="#function.status"/>"></div>
                            </div>
                            <s:property value="status"/>
                            <small> Complete</small>
                          </td>
                          
                          <td>
                            <!--  VIEW FUNCTION -->
                          <s:url id="viewURL" action="viewFunction.action" >
                          <s:param name="id" value="%{id}"></s:param>
                          </s:url>
                         
                            <s:a href="%{viewURL}" cssClass="btn btn-primary btn-xs"> <i class="fa fa-folder"></i> View </s:a>
                         
	                     <!--  EDIT FUNCTION -->
	                         <s:url id="editURL" action="modifyFunction.action" >
	                          <s:param name="id" value="%{id}"></s:param>
	                          
	                          </s:url>
                         
                         <s:a href="%{editURL}" cssClass="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </s:a>
                         
                         <!--  REMOVE FUNCTION -->
                          <s:url id="removeURL" action="removeFunction.action" >
                          <s:param name="id" value="%{id}"></s:param>
                          </s:url>
                            
                            <s:a href="javascript:confirmation(%{id})" cssClass="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </s:a>
                            
                          </td>
                        
                        </tr>
                        </s:iterator>
                        
                      
                      </tbody>
                    </table>
                    </form>
                    <!-- end function list -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->