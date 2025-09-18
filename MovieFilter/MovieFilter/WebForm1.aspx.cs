using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static MovieFilter.WebForm1;

namespace MovieFilter
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        [Serializable]
            public class Movie
        {
            public string MovieId { get; set; }
            public string MovieName { get; set; }
            public string Director {  get; set; }
            public int Rating { get; set; }


            public Movie()
            {

            }
        }

        List<Movie> MovieList
        {
            get
            {
                if (ViewState["MovieList"] == null)
                    ViewState["MovieList"] = new List<Movie>();
                return (List<Movie>)ViewState["MovieList"];
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add(object sender,EventArgs e)
        {
            MovieList.Add(new Movie { MovieId = IdInput.Text, MovieName = NameInput.Text, Director = directorInput.Text, Rating = int.Parse(ratingInput.Text) });
            IdInput.Text = "";
            NameInput.Text = "";
            directorInput.Text = "";
            ratingInput.Text = "";
        }
        protected void Display(object sender,EventArgs e)
        {
            result.Text += "<br/><h1>Movie Details</h1>";
            foreach (Movie movie in MovieList)
            {
                result.Text = "<br/> id : " + movie.MovieId
                    + "<br/> name : " + movie.MovieName
                    + "<br/> director : " + movie.Director
                    + "<br/> rating : " + movie.Rating;
            }

            result.Text += "<br/><h1>Movie Details Rating > 8</h1>";
            foreach (Movie movie in MovieList)
            {
                if (movie.Rating > 8)
                {
                    result.Text = "<br/> id : " + movie.MovieId
                        + "<br/> name : " + movie.MovieName
                        + "<br/> director : " + movie.Director
                        + "<br/> rating : " + movie.Rating;
                }
            }

            result.Text += "<br/><h1>Movie Directed By Christopher nolan</h1>";
            foreach (Movie movie in MovieList)
            {
                if (movie.Director.Equals("Christopher nolan"))
                {
                    result.Text = "<br/> id : " + movie.MovieId
                        + "<br/> name : " + movie.MovieName
                        + "<br/> director : " + movie.Director
                        + "<br/> rating : " + movie.Rating;
                }
            }
            result.Text += "<h1>5th Movie Details</h1>";
            result.Text = "<br/> id : " + MovieList[4].MovieId
                       + "<br/> name : " + MovieList[4].MovieName
                       + "<br/> director : " + MovieList[4].Director
                       + "<br/> rating : " + MovieList[4].Rating;

            result.Text += "<br/><h1>Movie Ends With A</h1>";
            foreach (Movie movie in MovieList)
            {
                if (movie.MovieName.EndsWith("a"))
                {
                    result.Text = "<br/> id : " + movie.MovieId
                        + "<br/> name : " + movie.MovieName
                        + "<br/> director : " + movie.Director
                        + "<br/> rating : " + movie.Rating;
                }
            }

            result.Text += "<br/>Order By rating";
            var s1 = MovieList.OrderBy(c => c.Rating).Select(p => p.MovieId);
            result.Text += "<br/>Movies : " + string.Join(" , ", s1);



        }
    }
}