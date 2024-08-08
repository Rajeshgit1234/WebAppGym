<%
    System.out.println("session.getAttribute(\"userid\") "+session.getAttribute("userid"));

    if (session.getAttribute("userid") == null) {
        System.out.println("invalid session");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

%>