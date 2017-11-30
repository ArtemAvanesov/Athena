<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style_archive.css" />
  <style>
  p { color:  navy; }
  </style>
 </head>
 <body>
  <div id="header"><p id="logo">Athena</p></div>
  <div id="semester" class="tabs">
    <!--div id="nav_semester">
      
    </div-->


      <input id="tab1" type="radio" name="tabs">
      <label class="number_semester" for="tab1" title="1 курс (2014/2015 учебный год)"><p>2014</p>1 семестр</label>

      <input id="tab2" type="radio" name="tabs">
      <label class="number_semester" for="tab2" title="1 курс (2015г)"><p>2015</p>2 семестр</label>
    
      <input id="tab3" type="radio" name="tabs">
      <label class="number_semester" for="tab3" title="2 курс (2015г)"><p>2015</p>3 семестр</label>

      <input id="tab4" type="radio" name="tabs">
      <label class="number_semester" for="tab4" title="2 курс (2016г)"><p>2016</p>4 семестр</label>

      <input id="tab5" type="radio" name="tabs" checked>
      <label class="number_semester" for="tab5" title="3 курс (2016г)"><p>2016</p>5 семестр</label>

      <input id="tab6" type="radio" name="tabs">
      <label class="number_semester" for="tab6" title="3 курс (2017г)"><p>2017</p>6 семестр</label>
    
      <input id="tab7" type="radio" name="tabs">
      <label class="number_semester" for="tab7" title="4 курс (2017г)"><p>2017</p>7 семестр</label>

      <input id="tab8" type="radio" name="tabs">
      <label class="number_semester" for="tab8" title="4 курс (2018г)"><p>2018</p>8 семестр</label>
      
    <section id="content1" class="mounth">
      <div class="name">Сентябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=30; $x++) {
          ?>
          <div class="day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </section>

    <section id="content2" class="mounth">
      <div class="name">Октябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=31; $x++) {
          ?>
          <div class="day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </section>
    <section id="content3">
            <p>
                HTML5 (англ. HyperText Markup Language, version 5) — язык для структурирования и представления содержимого всемирной паутины. Это пятая версия HTML, последняя (четвёртая) версия которого была стандартизирована в 1997 году. По состоянию на октябрь 2013 года, HTML5 ещё находится в разработке, но, фактически, является рабочим стандартом (англ. HTML Living Standard). Цель разработки HTML5 — улучшение уровня поддержки мультимедиа-технологий, сохраняя при этом удобочитаемость кода для человека и простоту анализа для парсеров.
            </p>
            <p>
              Во всемирной паутине долгое время использовались стандарты HTML 4.01 и XHTML 1.1, и веб-страницы на практике оказывались свёрстаны с использованием смеси особенностей, представленных различными спецификациями, включая спецификации программных продуктов, например веб-браузеров, а также сложившихся общеупотребительных приёмов. HTML5 был создан, как единый язык разметки, который мог бы сочетать синтаксические нормы HTML и XHTML. Он расширяет, улучшает и рационализирует разметку документов, а также добавляет единое API для сложных веб-приложений.
            </p>
    </section> 
    <section id="content4">
            <p>
                Спецификация CSS3 — это неоспоримое будущее в области декоративного оформления веб-страниц, и ее разработка еще далека от завершения. Большинство модулей все еще продолжает совершенствоваться и модифицироваться, и ни один браузер не поддерживает все модули. Это означает, что CSS3 испытывает такие же сложности, как и HTML5. Веб-разработчикам нужно решать, какие возможности использовать, а какие игнорировать, а также каким образом заполнить зияющие пробелы в браузерной поддержке.
            </p>
            <p>
                CSS3 не является частью спецификации HTML5. Эти два стандарта были разработаны отдельно друг от друга, разными людьми, работающими в разное время в различных местах. Но даже организация W3C призывает веб-разработчиков использовать HTML5 и CSS3 вместе, как часть одной новой волны современного веб-дизайна.
            </p>
    </section>  
    <section id="content5">
      <br/><br/>
      <div class="mounth">
      <div class="name">Сентябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=30; $x++) {
          ?>
          <div class="day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </div>
    <div class="mounth">
      <div class="name">Октябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=31; $x++) {
          ?>
          <div class="day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </div>
    <div class="mounth">
      <div class="name">Ноябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=30; $x++) {
          if($x==2){
          ?>
          <div class="today"><? echo $x;?></div>
          <?
          }
          elseif($x>2){
          ?>
          <div class="future_day"><? echo $x;?></div>
          <?
          }
          else{
          ?>
          <div class="day"><? echo $x;?></div>
          <?
          }
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </div>
    <div class="mounth">
      <div class="name">Декабрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=31; $x++) {
          ?>
          <div class="future_day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
    </div>
    <div class="clear"></div>
    </section>







    <div class="clear"></div>
  <div/>

  
  
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
 </body>
</html>