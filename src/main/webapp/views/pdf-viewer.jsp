<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdnjs/cloudfare.com/ajax/libs/html2pdf.js/0.9.1/html2pdf.bundle.min.js"></script>
 <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<title>Insert title here</title>
<style>
body {
    margin-top: 170px;
}
.well{
padding:47px;}
</style>
</head>
<body>
 <div class="container" id="invoice">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>Medicure Consultancy</strong>
                       
                        <br>
                        <abbr title="Phone">Phone:</abbr> 7985855652
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 28 April,2020</em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
              <div class="row">
                <div class="text-center">
                    <h1>Patient Details</h1>
                    
                </div>
                   <tr>
                   <th>Patient Id: 17</th>
                      
                        </tr>
                
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Appointment</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em>Dentist</em></h4></td>
                         
                            <td class="col-md-1 text-center">Rs. 700</td>
                            <td class="col-md-1 text-center">Rs. 700</td>
                        </tr>
                    
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Tax: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>Rs. 700</strong>
                            </p>
                            <p>
                                <strong>Rs. 6.94</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>Rs. 706.94</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
             <!--    < class="btn btn-success btn-lg btn-block"  >Pay now</button>-->
               
                <a type="button" class="btn btn-success btn-lg btn-block" href="../loginUs/welcomePatient">
                 Pay now <span class="glyphicon glyphicon-chevron-right"></span>
                </a> 
                </td>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>