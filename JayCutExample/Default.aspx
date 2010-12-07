<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JayCutExample.Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Editor of My Cute Dog Video Site!</title>
   
    <style type="text/css">
        
        #jaycut-editor {  width: 900px; height: 660px; }
        /*  The mixer scales pretty well to most ratios, but we recommend
            at least 900x660. */
            
    </style>
    
</head>
<body>
    <form runat="server">
        <h1>Make your cute dog video!</h1>
        <div id="jaycut-editor">
            <!--    When JC.init is called below, the contents of this div will be replaced with the video editor. 
                    This div MUST be present, and it MUST have the id 'jaycut-editor'. -->
            This text is displayed if you don't have Flash installed. Install Flash!
        </div>
        <div>Aren't puppies adorable? Weeee!</div>
    </form>
    
    <!--    Include the JayCut JavaScript SDK. Like all good developers, 
            we place our JavaScript just before the closing </body> tag. -->
    <script src="http://api.jaycut.com/assets/javascripts/sdk.0.3.1.js" type="text/javascript"></script> 
    <script type="text/javascript">
        JC.init(
            '<%= JayCutAuthority %>',
            '<%= JayCutLoginUri %>'
        );
    </script>
</body>
</html>
