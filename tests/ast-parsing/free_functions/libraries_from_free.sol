library L {
  event Event1();
  event Event2();
  function pub() public pure returns (uint) {
    return 7;
  }
  function inter() internal pure returns (uint) {
    return 8;
  }
}

function fu() pure returns (uint, uint) {
  return (L.pub(), L.inter());
}

function bar() {
  emit L.Event1();
}

contract C {
  function f() public returns (uint, uint) {
    bar();
    emit L.Event2();
    return fu();
  }
}
