<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/constants.jsp"%>
<!-- wrap -->
<div id="wrapIframe">
	<!---->
	<div>
		<!---->
		<div class="tbws1 w1025">
			<form name="ConfigurationForm" id="ConfigurationForm">
				<table class="dCase">
					<colgroup>
						<col width="188" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th class="dCase txStr">Default Tab</th>
							<td class="dCase">
								<div class="required">
									<c:forEach var="code" items="${ct:getCodeValues(ct:getConstDef('CD_DEFAULT_TAB'))}" varStatus="status">
										<div class="lh20 mb5">
											<input type="checkbox" name="defaultTab" id="defaultTab${code[0]}" value="${code[0]}"/><label for="single">${code[1]}</label>
											<button type="button" class="btnColor red right" onclick="createTabInFrame(fn.retrieveDestinationName('${code[0]}'), fn.retrieveDestinationURI('${code[0]}'))">Config</button>
										</div>
									</c:forEach>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<!---->
		<div class="btnLayout w1025">
			<input id="save" type="button" value="Save" class="btnColor red right" />
		</div>
		<!---->
		<c:if test="${ct:getCodeExpString(ct:getConstDef('CD_SYSTEM_SETTING'), ct:getConstDef('CD_LDAP_USED_FLAG')) eq 'N'}">
			<div class="tbws1 w1025">
				<table class="dCase">
					<colgroup>
						<col width="188" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th class="dCase txStr">Password</th>
							<td class="dCase">
								<input type="password" name="password" id="password" value=""/>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!---->
			<div class="btnLayout w1025">
				<input type="button" value="change" class="btnColor red right" onclick="fn.changePassword()"/>
			</div>
			<!---->
		</c:if>
	</div>
	<!-- //wrap --> 

</div>