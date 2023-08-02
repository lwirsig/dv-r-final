> library(shiny)
> library(tidyverse)
> shinyUI(fluidPage(br()))
<div class="container-fluid">
  <br/>
</div>
> titlePanel("Target Demographic")
<h2>Target Demographic</h2>
> fluidRow(column(12, wellPanel(selectInput("country", "Country", choices = c("United-States", "Canada", "Mexico", "Germany", "Phillipines")))))
<div class="row">
  <div class="col-sm-12">
    <div class="well">
      <div class="form-group shiny-input-container">
        <label class="control-label" id="country-label" for="country">Country</label>
        <div>
          <select id="country"><option value="United-States" selected>United-States</option>
<option value="Canada">Canada</option>
<option value="Mexico">Mexico</option>
<option value="Germany">Germany</option>
<option value="Phillipines">Phillipines</option></select>
          <script type="application/json" data-for="country" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
        </div>
      </div>
    </div>
  </div>
</div>
> fluidRow(column(3, wellPanel(radioButtons("radio_continuous", "Continuous", choices = c("histogram", "boxplot"))))), column(9, plotOutput("p1"))
Error: unexpected ',' in "fluidRow(column(3, wellPanel(radioButtons("radio_continuous", "Continuous", choices = c("histogram", "boxplot"))))),"
> fluidRow(column(3, wellPanel(radioButtons("radio_continuous", "Continuous", choices = c("age", "hours_per_week")))))
<div class="row">
  <div class="col-sm-3">
    <div class="well">
      <div id="radio_continuous" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="radio_continuous-label">
        <label class="control-label" id="radio_continuous-label" for="radio_continuous">Continuous</label>
        <div class="shiny-options-group">
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="age" checked="checked"/>
              <span>age</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="hours_per_week"/>
              <span>hours_per_week</span>
            </label>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
> radioButtons("graph_type", "Graph", choices = c"histogram", "boxplot"), column(9, plotOutput("p1"))
Error: unexpected string constant in "radioButtons("graph_type", "Graph", choices = c"histogram""
> +radioButtons("graph_type", "Graph", choices = c("histogram", "boxplot"))
Error in +radioButtons("graph_type", "Graph", choices = c("histogram",  : 
  invalid argument to unary operator
> fluidRow(column(3, wellPanel(radioButtons("radio_continuous", "continuous", choices = c("age", "hours_per_week")), radioButtons("graph_type", "Graph", choices = c("histogram", "boxplot")), column(9, plotOutput("p1")))))
<div class="row">
  <div class="col-sm-3">
    <div class="well">
      <div id="radio_continuous" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="radio_continuous-label">
        <label class="control-label" id="radio_continuous-label" for="radio_continuous">continuous</label>
        <div class="shiny-options-group">
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="age" checked="checked"/>
              <span>age</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="hours_per_week"/>
              <span>hours_per_week</span>
            </label>
          </div>
        </div>
      </div>
      <div id="graph_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="graph_type-label">
        <label class="control-label" id="graph_type-label" for="graph_type">Graph</label>
        <div class="shiny-options-group">
          <div class="radio">
            <label>
              <input type="radio" name="graph_type" value="histogram" checked="checked"/>
              <span>histogram</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="graph_type" value="boxplot"/>
              <span>boxplot</span>
            </label>
          </div>
        </div>
      </div>
      <div class="col-sm-9">
        <div class="shiny-plot-output html-fill-item" id="p1" style="width:100%;height:400px;"></div>
      </div>
    </div>
  </div>
</div>
> fluidRow(column(3, wellPanel(radioButtons("radio_continuous", "Categorical", choices = c("education", "workclass", "sex"), checkboxInput("is_stacked", "Stack bars", FALSE)))))
<div class="row">
  <div class="col-sm-3">
    <div class="well">
      <div id="radio_continuous" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="radio_continuous-label">
        <label class="control-label" id="radio_continuous-label" for="radio_continuous">Categorical</label>
        <div class="shiny-options-group">
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="education"/>
              <span>education</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="workclass"/>
              <span>workclass</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="radio_continuous" value="sex"/>
              <span>sex</span>
            </label>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
> 
> shinyServer(function(input, output){})
> 
> runApp()

Listening on http://127.0.0.1:5596
Warning: Error in dots_list: '...' used in an incorrect context
  67: dots_list
  66: div
  63: fluidPage
   1: runApp
