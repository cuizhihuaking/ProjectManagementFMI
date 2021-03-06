<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Affect Contributor</h2>

					<script type="text/javascript">
						function confirmation(id) {
							var conf = confirm("êtes-vous sûr de vouloir supprimer? ");
							if (conf == true)
								document.location = "removeAffectation.action?id="
										+ id;
						}
					</script>

					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br>
					<form id="demo-form2" data-parsley-validate=""
						class="form-horizontal form-label-left" novalidate="" method="get"
						action="doAffectThirdParty.action">

						<input type="hidden" name="id" value="<s:property value="id"/>" />
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


						<table class="table table-bordered table-hover table-sortable"
							id="tab_logic">
							<thead>
								<tr>

									<th class="text-center">Mission Name</th>
									<th class="text-center">Start Date</th>
									<th class="text-center">End Date</th>

									<th class="text-center"
										style="border-top: 1px solid #ffffff; border-right: 1px solid #ffffff;">
									</th>
								</tr>
							</thead>

							<tbody>

								<tr id='addr0' data-id="0">
									<td data-name="selectedMission0"><s:select
											id="missionSelect" cssStyle="padding:5px" theme="simple"
											list="missions" listKey="missionName" listValue="missionName"
											headerKey="0" headerValue="Select a mission"
											name="selectedMission0" /></td>
									<td data-name="startDate"><input style="padding: 5px;"
										type="date" name="startDate0" /></td>
									<td data-name="endDate"><input style="padding: 5px;"
										type="date" name="endDate0" /></td>
									<td data-name="del">
										<button name="del0"
											class=' glyphicon glyphicon-remove row-remove'></button>
									</td>
								</tr>

							</tbody>
						</table>
						<input type="submit" class="btn btn-success" value="Submit" /> <a
							id="add_row" class="btn btn-default pull-right">Add Row</a>
					</form>
				</div>

			</div>


		</div>






		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							Affectation <small>Listing</small>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false"><i
									class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Settings 1</a></li>
									<li><a href="#">Settings 2</a></li>
								</ul></li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Mission Name</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th style="width: 20%">#Edit</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="thirdParty.association" var="affectation"
									status="rowstatus">
									<tr>
										<td><s:property value="#affectation.id" /></td>
										<td><s:property value="#affectation.mission.missionName" /></td>
										<td><s:property value="#affectation.startDate" /></td>
										<td><s:property value="#affectation.endDate" /></td>
										<td>
											<!--  EDIT AFFECTATION --> <s:url id="editURL"
												action="modifyAffectation.action">
												<s:param name="id" value="%{id}"></s:param>

											</s:url> <s:a href="%{editURL}" cssClass="btn btn-info btn-xs">
												<i class="fa fa-pencil"></i> Edit </s:a> <!--  REMOVE AFFECTATION -->
											<s:url id="removeURL" action="removeAffectation.action">
												<s:param name="id" value="%{id}"></s:param>
											</s:url> <s:a href="javascript:confirmation(%{id})"
												cssClass="btn btn-danger btn-xs">
												<i class="fa fa-trash-o"></i> Delete </s:a>

										</td>

									</tr>
								</s:iterator>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>


