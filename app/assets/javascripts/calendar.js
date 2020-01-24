$(function () {

$('#calendar').fullCalendar({
    events: '/shops/events.json',
    timeFormat: 'H:mm',
    eventColor: '#63ceef',
    lang: 'ja',
    dayClick: function (start, end, jsEvent, view) {
      //クリックした日付情報を取得
      const year = moment(start).year();
      const month = moment(start).month()+1; //1月が0のため+1する
      const day = moment(start).date();
      //イベント登録のためnewアクションを発火
      $.ajax({
        type: 'GET',
        url: '/shops/events/new',
      }).done(function (res) {
        //イベント登録用のhtmlを作成
        $('.modal-body').html(res);
        //イベント登録フォームの日付をクリックした日付とする
        $('#event_start_time_1i').val(year);
        $('#event_start_time_2i').val(month);
        $('#event_start_time_3i').val(day);
        //イベント登録フォームのモーダル表示
        $('#modal').modal();
        // 成功処理
      }).fail(function (result) {
        // 失敗処理
        alert('エラーが発生しました。運営に問い合わせてください。')
      });
    },
    eventClick: function(calEvent, jsEvent, view) {
      //イベント編集のためeditアクションを発火
      $.ajax({
        type: 'GET',
        url: '/shops/events/' + calEvent.id + '/edit',
      }).done(function (res) {
        //イベント編集用のhtmlを作成
        $('.modal-body').html(res);
        $('#modal').modal();
      }).fail(function (result) {
        // 失敗処理
        alert('エラーが発生しました。運営に問い合わせてください。')
      });
    }
  });

});
