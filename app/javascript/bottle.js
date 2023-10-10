document.addEventListener('DOMContentLoaded', function () {
  const bottleForm = document.getElementById('bottle-form');
  const formContainer = document.getElementById('form-container'); // フォームを追加するコンテナ
  const addForm = document.getElementById('add-form');
  const removeForm = document.getElementById('remove-form');
  let formCount = 1;

  addForm.addEventListener('click', function () {
    if (formCount < 4) {
      const clonedForm = bottleForm.cloneNode(true); // フォームを複製
      const newId = 'bottle-form-' + formCount; // 新しい id を生成
      clonedForm.id = newId; // 新しい id を設定
      formContainer.appendChild(clonedForm); // 複製したフォームをコンテナに追加
      formCount++;
    }
  });

  removeForm.addEventListener('click', function () {
    if (formCount > 1) {
      const lastForm = formContainer.lastChild; // 最後のフォームを取得
      formContainer.removeChild(lastForm); // 最後のフォームを削除
      formCount--;
    }
  });
});