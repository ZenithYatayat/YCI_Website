<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="6_Visitor_Contact.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI Contact Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div id="map" style="width: 1366px; height: 400px; background: grey">
        </div>

        <script type="text/javascript">  
            function myMap() 
            {  
                var mapOptions = 
                {  
                    center: new google.maps.LatLng(51.5, -0.12),  
                    zoom: 10,  
                    mapTypeId: google.maps.MapTypeId.HYBRID  
                }  
                    var map = new google.maps.Map(document.getElementById("map"), mapOptions);  
            }  
        </script>

        <script type="text/javascript" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJHUo6tsiFXjkR6itmT0tLBQo&key=..."></script>

    </div>
    <div style="height: 150px;">
    </div>
</asp:Content>
