// カレンダー表示
window.onload = function(){
  $('#coming-date').datepicker({
      format: 'yyyy/mm/dd',
      autoclose: true,
    });
};

// メモフォーム内にチェックボックス項目表示
document.addEventListener('DOMContentLoaded', function () {
  // チェックボックスの要素を取得
  const checkboxes = document.querySelectorAll('input[type="checkbox"]');
  const memoTextArea = document.getElementById('memo_text');    
  // メモのチェックボックスのイベントリスナーを設定
  checkboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      let memoText = memoTextArea.value; // 現在のテキストエリアの内容を取得

      if (checkbox.checked) {
        // チェックボックスがチェックされた場合、項目を追加
        memoText += checkbox.value + '：' + '\n';
      } else {
        // チェックボックスがチェック解除された場合、項目を削除
        memoText = memoText.replace(checkbox.value + '：' + '\n', '');
      }

      // テキストエリアに更新した内容を設定
      memoTextArea.value = memoText;
    });
  });
});