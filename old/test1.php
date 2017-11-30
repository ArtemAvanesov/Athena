<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>test 1</title>
<style>
@import url("http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css");
/* Базовые стили демо-страницы */
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
html, body {
  height: 100%;
}
body {
  font: 14px/1 "Open Sans", sans-serif;
  color: #555;
  background: #fafafa;
}
/* Конец стилей демо-страницы */
    
/* Базовый контейнер табов */
.tabs {
  min-width: 320px;
  max-width: 800px;
  padding: 0px;
  margin: 0 auto;
  
}
/* Стили секций с содержанием */
section {
  display: none;
  padding: 15px;
  background: #fff;
  border: 1px solid #ddd;
}
.tabs input {
  display: none;
}
/* Стили вкладок (табов) */
.tabs label {
  display: inline-block;
  margin: 0 0 -1px;
  padding: 15px 25px;
  font-weight: 600;
  text-align: center;
  color: #aaa;
  border: 1px solid #ddd;
  background: #f1f1f1;
  border-radius: 3px 3px 0 0;
}
/* Шрифт-иконки от Font Awesome в формате Unicode */
.tabs label:before {
  font-family: fontawesome;
  font-weight: normal;
  margin-right: 10px;
}
.tabs label[for*="1"]:before {
  content: "\f19a";
}
.tabs label[for*="2"]:before {
  content: "\f17a";
}
.tabs label[for*="3"]:before {
  content: "\f13b";
}
.tabs label[for*="4"]:before {
  content: "\f13c";
}
/* изменения стиля заголовков вкладок при наведении */
.tabs label:hover {
  color: #888;
  cursor: pointer;
}
/* стили для активной вкладки */
.tabs input:checked + label {
  color: #555;
  border: 1px solid #ddd;
  border-top: 1px solid #009933;
  border-bottom: 1px solid #fff;
  background: #fff;
}
/* активация секций с помощью переключателя :checked */
#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4 {
  display: block;
}
/* медиа запросы для различных типов носителей */  
@media screen and (max-width: 680px) {
  .tabs label {
    font-size: 0;
  }

  .tabs label:before {
    margin: 0;
    font-size: 18px;
  }
}
@media screen and (max-width: 400px) {
  .tabs label {
    padding: 15px;
  }
}    
</style>
 </head>
 <body>
  
<div class="tabs">
        <input id="tab1" type="radio" name="tabs" checked>
        <label for="tab1" title="Wordpress">Wordpress</label>
    
        <input id="tab2" type="radio" name="tabs">
        <label for="tab2" title="Windows">Windows</label>
    
        <input id="tab3" type="radio" name="tabs">
        <label for="tab3" title="HTML5">HTML5</label>
    
        <input id="tab4" type="radio" name="tabs">
        <label for="tab4" title="CSS3">CSS3</label>
    
        <section id="content1">
           <p>
              WordPress — система управления содержимым сайта с открытым исходным кодом, распространяемая под GNU GPL. Написана на PHP, в качестве базы данных использует MySQL.
           </p>
           <p>
               Сфера применения — от блогов до достаточно сложных новостных ресурсов и интернет-магазинов. Встроенная система «тем» и «плагинов» вместе с удачной архитектурой позволяет конструировать практически любые проекты. WordPress выпущен под лицензией GPL версии 2.
           </p>
       </section>  
       <section id="content2">
           <p>
               Microsoft Windows (произносится [майкрософт ви́ндоус]) — семейство проприетарных операционных систем корпорации Microsoft, ориентированных на применение графического интерфейса при управлении.
           </p>
           <p>
               Изначально Windows была всего лишь графической надстройкой для MS-DOS. По состоянию на март 2013 года под управлением операционных систем семейства Windows по данным ресурса NetMarketShare (Net Applications) работает около 90 % персональных компьютеров[1]. Операционные системы Windows работают на платформах x86, x86-64, IA-64, ARM.
           </p>
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
   </div>

 </body>
</html>