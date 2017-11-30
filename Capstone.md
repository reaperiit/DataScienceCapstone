Next Word Prediction App: Capstone Project 
========================================================
author: Deepak Yadav
date: November2017
transition: fade
transition-speed: slow

<style type="text/css">
  /* slide titles */
.noHyphen {
  word-wrap: normal;
  -moz-hyphens: none;
}
/* customizing tables exhibition */
  .reveal table {
    border-style: solid;
    border-color: gray;
    width:60%;
  }
.reveal table th {
  background-color: #d0d0d0;
    font-size: 14pt;
}
.reveal table td {
  width: 33%;
  font-size: 13pt;
}
</style>
  
  
  <h2 style="color:blue">Coursera Data Science Specialization</h2>
  
  Brief Report
========================================================
  
  <div class="noHyphen">This presentation is about the Capstone project in the Coursera Data Science Specialization.</div>
  
  <blockquote style="font-family:Arial,sans-serif; font-size:20pt">
  The overall objective of the project is to build an App which predicts the next-word that appear after an input word or phrase. 
  The dateset used in the project includes twitter, news and blogs data.First preprocessing is performed on data which includes data cleaning, random rampling to form R dataframes. Afterwards, using TM and weka library, and some Text Mining and NLP techniques, word combinations are created (N-Grams).
  For predicting next word, n-grams acts as input to Stupid Backoff( a simplified approach to Katz Backoff) algorithm. 
</blockquote>

Working Mechanism 
========================================================
incremental: true

<small>
To use it, type in a word, pharse or sentence. After user presses return key or clicks Predict button, the app shows the input, processed text input and the main result, the top five n-grams predicitons, in a drop-down list. For further predictions, user may choose from the predictions and swap input with it, or write further for next predictions.

</small>

<h4>The main steps performed during the course of building Predict Next-Word App:</h4>

<ol style="font-size:18pt; line-height:20px;">
<li>Load the n-grams(1 to 4) data created previously and saved as r dataframes.</li>
<li>Reading user input (a word or phrase)</li>
<li>Preprocessing the input (profanity removal, tokenization of last 4 words, convert to lowercase)</li>
<li>Input fed to Stupid Backoff algorithm for predictions:</li>
<ul style="width:110%">
<li>Start searching the <em>fourgram</em> data frame, if found, shows top 5 most probable matches. else;
<li>&nbsp;&nbsp;&nbsp;next search in the <em>trigram</em> data frame, by the same way above. else;     
<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;next search in <em>bigram</em> data frame, by the same way above. 
<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else, in the end, if match not found, displays the 5 most frequent words from the  <em>unigram</em> data frame.
</ul>
</ol>

N-grams excerpts
========================================================

<small style="letter-spacing: -0.02em; font-size:18pt;">
See 5 lines of *_"fourgrams"_* and *_"trigrams"_* data frames which are loaded by Shiny App.</small>
<p style="margin-bottom: -29px;"></p>

<table id="df2_table">
 <thead>
  <tr>
   <th style="text-align:left;"> Word </th>
   <th style="text-align:left;"> Freq </th>
   <th style="text-align:left;"> Prob </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> thanks for the follow </td>
   <td style="text-align:left;"> 2027 </td>
   <td style="text-align:left;"> 0.000207001660098168 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> thanks for the rt </td>
   <td style="text-align:left;"> 1115 </td>
   <td style="text-align:left;"> 0.000113866231381084 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> cant wait to see </td>
   <td style="text-align:left;"> 1058 </td>
   <td style="text-align:left;"> 0.000108045267086266 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> thank you for the </td>
   <td style="text-align:left;"> 1021 </td>
   <td style="text-align:left;"> 0.000104266746403665 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> is going to be </td>
   <td style="text-align:left;"> 768 </td>
   <td style="text-align:left;"> 7.84298347091233e-05 </td>
  </tr>
</tbody>
</table>

<table id="df3_table">
 <thead>
  <tr>
   <th style="text-align:left;"> Word </th>
   <th style="text-align:left;"> Freq </th>
   <th style="text-align:left;"> Prob </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> thanks for the </td>
   <td style="text-align:left;"> 7830 </td>
   <td style="text-align:left;"> 0.000799616674182859 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> looking forward to </td>
   <td style="text-align:left;"> 2863 </td>
   <td style="text-align:left;"> 0.000292375803088828 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> cant wait to </td>
   <td style="text-align:left;"> 2835 </td>
   <td style="text-align:left;"> 0.000289516382031725 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> thank you for </td>
   <td style="text-align:left;"> 2812 </td>
   <td style="text-align:left;"> 0.000287167571877676 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> i love you </td>
   <td style="text-align:left;"> 2770 </td>
   <td style="text-align:left;"> 0.00028287844029202 </td>
  </tr>
</tbody>
</table>

Links to the Shiny App and Github 
========================================================

![Shiny App - Next Word Prediction](./Capstone-Figure/NextWordApp.png)

- <a href="https://reaper.shinyapps.io/NextWordApp/" target="_blank" style="color:blue">Link to __Shiny App__</a> 


- <a href="" target="_blank">__GitHub__ repository code to this application</a>
