// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery
//= require rails-ujs
//= require moment
//= require moment/ja.js
//= require fullcalendar
//= require fullcalendar/lang/ja
//= require activestorage
//= require_tree .

$(document).on('turbolinks:load', function() {
  $("#login").click(function() {
    $(".js-login-modal-wrapper").fadeIn();

  });

  $("#js-login-close-modal").click(function() {
    $(".js-login-modal-wrapper").fadeOut();

  });

  $(".header-right a").hover(function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");

  }, function() {
    $(this).css("background-color", "white");
    $(this).css("color", "black");

  });

  $(".submit-btn").hover(function() {
    $(this).css("background-color", "#59b1eb");
    $(this).css("color", "#000000");

  }, function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");

  });

  $("#submit-btn").hover(function() {
    $(this).css("background-color", "#59b1eb");
    $(this).css("color", "#000000");

  }, function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");

  });

  $(function() {
    setTimeout("$('.flash').fadeOut('slow')", 1500);
  });

  $(".start").on('click', function() {
    $(".js-start-wrapper").fadeIn();

  });

  $("#form_reset").click(function() {
    $('.name_search_form').val("");

  });


  $("#calendar").fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },

    buttonText: {
    prev:     '<',   // &lsaquo;
    next:     '>',   // &rsaquo;
    prevYear: '<<',  // &laquo;
    nextYear: '>>',  // &raquo;
    today:    '今日',
    month:    '月',
    week:     '週',
    day:      '日'
    },

    axisFormat: 'H:mm',
    timeFormat: 'H:mm',
    monthNames: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],
    monthNamesShort: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],
    dayNames: ['日曜日','月曜日','火曜日','水曜日','木曜日','金曜日','土曜日'],
    dayNamesShort: ['日','月','火','水','木','金','土'],
    navLinks: true,
    selectable: true,　　                  // 選択可
    selectHelper: true,　                  // 選択時にプレースホルダーを描画
    timezone: 'JST',
    events: '/events/index.json',           // イベント表示のためのJson
    //editable: true,　　　                   // 編集可
    height: 700,                           // 高さ
    defaultView: 'month',                  // 初期表示ビュー
    eventLimit: true,                      // allow "more" link when too many events
    firstDay: 0,                           // 最初の曜日, 0:日曜日
    weekends: true,                        // 土曜、日曜を表示
    weekMode: 'fixed',                     // 週モード (fixed, liquid, variable)
    weekNumbers: false,                    // 週数を表示
    slotDuration: '00:30:00',              // 表示する時間軸の細かさ
    snapDuration: '00:15:00',              // スケジュールをスナップするときの動かせる細かさ
    minTime: "06:00:00",                   // スケジュールの開始時間
    maxTime: "24:00:00",                   // スケジュールの最終時間
    defaultTimedEventDuration: '09:00:00', // 画面上に表示する初めの時間(スクロールされている場所)
    allDaySlot: false,                     // 終日スロットを非表示
    allDayText:'allday',                   // 終日スロットのタイトル
    slotMinutes: 15,                       // スロットの分
    snapMinutes: 15,                       // 選択する時間間隔
    firstHour: 9,                          // スクロール開始時間

  });

});
