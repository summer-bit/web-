public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    AllNewsDao allNewsDao=new AllNewsDao();
    List<AllNewsModel> allNews=allNewsDao.getAllNews();
    request.setAttribute("AllNews", allNews);
    request.getRequestDispatcher("/AllNews.jsp").forward(request, response);
 
}