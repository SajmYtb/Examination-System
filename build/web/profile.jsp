
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           if(user.getType().endsWith("admin")){
        %>
         <!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Examination System
					</h2>

					<div class="left-menu">
						<a class="active" href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>Courses</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Questions</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2>Accounts</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 600px">
        
                                
        
            <%
           }else{
               %>
               
               <!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Examination System
					</h2>
					<div class="left-menu">
						<a class="active" href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>Exams</h2></a>
						<a href="std-page.jsp?pgprt=2"><h2>Results</h2></a>
					</div>
				</div>
		
                       </div>
               <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 600px">
               <%
           }
           if(request.getParameter("pedt")==null){
           %>
           <div class="title">Profile</div>
           <div class="profile ">
               <h2><span class="tag">Your Name</span><span class="val"><%=user.getFirstName()+" " %><%=user.getLastName() %></span><br/>
               <span class="tag">Email</span><span class="val"><%=user.getEmail() %></span><br/>
               <span class="tag">Contact No</span><span class="val"><%=user.getContact() %></span><br/>
               <span class="tag">City</span><span class="val"><%=user.getCity() %></span><br/>
               <span class="tag">Address</span><span class="val"><%=user.getAddress() %></span></h2>
           </div>
               <%
               if(user.getType().equals("admin")){
               %>
               <br/>
               <a href="adm-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <% 
               }else{
               %><br/>
               <a href="std-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <% 
               }
               %>
           
           <%
           }else{
               %>
               
               <!-- Start of Edit Form --->
               <div class="title">Edit Profile</div>
               <div class="central-div form-style-6" style="position:inherit;margin-top: 70px;" >
                    <form action="controller.jsp">
                        <input type="hidden" name="page" value="profile"> 
                        <input type="hidden" name="utype" value="<%=user.getType()%>">
				<table>
					
					<tr>
						<td>
							<label>First Name</label>
						</td>
						<td>
                                                    <input type="text" name="fname" value="<%=user.getFirstName() %>" class="text" placeholder="First Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>Last Name</label>
						</td>
						<td>
                                                    <input type="text"  name="lname" value="<%=user.getLastName() %>" class="text" placeholder="Last Name">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>User Name</label>
						</td>
						<td>
                                                    <input type="text" name="uname" value="<%=user.getUserName() %>" class="text" placeholder="User Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>Email</label>
						</td>
						<td>
                                                    <input type="email" name="email" value="<%=user.getEmail() %>" class="text" placeholder="Email">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>Password</label>
						</td>
						<td>
                                                    <input type="password" value="<%=user.getPassword() %>" name="pass" class="text" placeholder="Password">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Contact No</label>
						</td>
						<td>
                                                    <input type="text" name="contactno" value="<%=user.getContact() %>" class="text" placeholder="Contact No">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>City</label>
						</td>
						<td>
                                                    <input type="text" name="city" value="<%=user.getCity() %>" class="text" placeholder="City">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Address</label>
						</td>
						<td>
                                                    <input type="text" name="address" value="<%=user.getAddress() %>" class="text" placeholder="Address">
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<center>
							
							<input type="submit" value="Done" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>

                
               <%
           }
           %>
    
        </div>
    </div>