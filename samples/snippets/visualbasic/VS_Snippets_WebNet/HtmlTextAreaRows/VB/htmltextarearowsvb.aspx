<!--<Snippet1>-->
<%@ Page Language="VB" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  Sub SubmitBtn_Click(ByVal sender As Object, ByVal e As EventArgs)
      
    TextArea1.Rows = CInt(Select1.Value)
    Span1.InnerHtml = "You wrote: <br />" + TextArea1.Value
      
  End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
   <title>HtmlTextArea Example</title>
</head>
<body>

   <form id="form1" runat="server">

      <h3>HtmlTextArea Example</h3>

      Enter your comments: <br />

      <textarea rows="2" cols="20" id="TextArea1" 
                runat="server"/>

      <br />

      Select row height: <br />

      <select id="Select1" 
              runat="server">

         <option value="1" selected="selected"> 1 </option>
         <option value="2"> 2 </option>
         <option value="3"> 3 </option>
         <option value="4"> 4 </option>
         <option value="5"> 5 </option>
         <option value="6"> 6 </option>

      </select>

      <br /><br />

      <input type="submit"  
             value="Submit" 
             onserverclick="SubmitBtn_Click" 
             runat="server"/>

      <br />

      <span id="Span1" 
            runat="server" />

   </form>

</body>
</html>
<!--</Snippet1>-->
