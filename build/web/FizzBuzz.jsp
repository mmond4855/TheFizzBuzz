

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> The Result of Fizz Buzz</title>
    </head>
    <body color='red'>
        <h1>The Results of Fizz Buzz</h1>
        <% 
            int fizz = Integer.parseInt(request.getParameter("FzBz"));
            int a = 0;
            int [] fizzBuzzArray = new int[fizz];
            String [] result = new String[fizz];
            
            String f = "fizz";
            String b = "buzz";
            String fb = "fizzbuzz";
            
          
            
            for(int i = 0; i < fizz; i++)
            {
                fizzBuzzArray[i] = i + 1; 
            }
            
            for(int j = 0; j < fizz; j++)
            {
                if (fizzBuzzArray[j] % 15 == 0)
                {
                    result[j] = fb;
                }
                else if (fizzBuzzArray[j] % 3 == 0)
                {
                    result[j] = f;
                }
                else if (fizzBuzzArray[j] % 5 == 0)
                {
                    result[j] = b;
                }
                else
                {
                    String num = String.valueOf(j);
                    result[j] = num;
                }
            } %>
        
        <table border='10'>
            <tr>
                <th> Number </th>
                <th> Result </th>
            </tr>
            
            <% for (int k = 0; k < fizzBuzzArray.length; k++) {%>
            <tr>
                <td> <%= fizzBuzzArray[k] %> </td>
                <td> <%= result[k] %></td>
            </tr>
            <% } %>
            
        </table>
    </body>
</html>
