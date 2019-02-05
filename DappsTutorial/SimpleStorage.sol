//バージョンプラグマの指定
pragma solidity ^0.4.0;

//コントラクトの宣言
contract SimpleStorage{
  //変数の宣言
  uint storedData;

  //storedDataを変更する
  function set(uint x){
    storedData = x;
  }

  //storedDataを取得する
  function get() constant returns (uint){
    return storedData;
  }
}
