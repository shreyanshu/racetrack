
<%@ page import="racetrack.Race" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="nav">
		<g:render template="/adminmenubar" />
	</div>
		<a href="#list-race" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><span class="menuButton"><g:link action="search">Search for Races</g:link> </span></li>
			</ul>
		</div>
		<div id="list-race" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'race.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startDateTime" title="${message(code: 'race.startDateTime.label', default: 'Start Date Time')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'race.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'race.state.label', default: 'State')}" />
					
						<g:sortableColumn property="distance" title="${message(code: 'race.distance.label', default: 'Distance')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'race.cost.label', default: 'Cost')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${raceInstanceList}" status="i" var="raceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${raceInstance.id}">${fieldValue(bean: raceInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${raceInstance.startDateTime}"   format="yyyy-MM-dd HH:mm"/> </td>
					
						<td>${fieldValue(bean: raceInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: raceInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: raceInstance, field: "distance")}</td>

						<td><g:formatNumber number="${raceInstance.cost}"   format="\$##0.00"/> </td>

					</tr>
				</g:each>
				</tbody>
			</table>
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${raceInstanceTotal}" />--}%
			%{--</div>--}%
		</div>
	</body>
</html>
