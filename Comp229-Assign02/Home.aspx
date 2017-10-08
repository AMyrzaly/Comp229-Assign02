﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<link href="Content/HomePage.css" rel="stylesheet" />
<div class = "background">
    <div class="jumbotron">
        <h1>MicroSystem</h1>
        <p class="lead">MiscroSystem is a website to discover necessary and poweful microsystems for your purposes.</p>
        <p><a href="https://en.wikipedia.org/wiki/Microsystem" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Survey Page</h2>
            <p>
                Survey Page gives opportunity to write your experience with our website for us to fix them and make your journey more reliable.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Take a survey &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Disclaimers and privacy statement</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</div>

</asp:Content>