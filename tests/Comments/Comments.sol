pragma solidity ^0.4.24;


contract Comments1 {
    function() {
        // solhint-disable-previous-line no-empty-blocks
    }

    function hello() public modifier1 modifier2 modifier3 modifier4 modifier5 modifier6 {
        // solhint-disable-previous-line no-empty-blocks
    }
}


contract Comments2 {
    // solhint-disable-previous-line no-empty-blocks
}


contract Comments3 is Interface1, Interface2, Interface3, Interface4, Interface5, Interface6 {
  // solhint-disable-previous-line no-empty-blocks

  function someFunction() {

  }/*1*//*2
  */
}

contract Comments4 is Interface1, Interface2, Interface3, Interface4, Interface5, Interface6 {
  // solhint-disable-previous-line no-empty-blocks
}

contract Comments5 /*nice name*/ {
  // solhint-disable-previous-line no-empty-blocks
}

contract Comments6 /*why the name `Comments6`*/ is Interface1/*why we used Interface1*/, Interface2/*why we used Interface2*/, Interface3, Interface4, Interface5, Interface6 {
  // solhint-disable-previous-line no-empty-blocks
}

contract Comments7 {
  function someFunction(
    uint a, // the first value
    uint b, // the second value
    uint c // the lats value
  ) {
    someFunction(
      a, // the first value
      b, // the second value
      c // the lats value
    );
  }
}

contract Comments8 {
  function someFunction() {
    if (something) {
    }
    // comment
    else {
    }
  }
}


contract Comments8 {
  function someFunction() {
    if (something) {
    }
    /* comment
     * comment */
    else {
    }
  }
}

contract Comments9 {
  function someFunction() {
    if (something) 
      // a comment
      f();
    else {
    }
  }
}

interface Comments10 {
  function someFunction(
    // the first value
    // the second value
    // the lats value
  ) /* comment outside the parameters */ external;

  function someOtherFunction(/* checking for Block comment */) external;
}


contract Comments11 {
  function someFunction() {
    if (something /* a comment for the condition */) 
      f();
    else {
    }
  }
}

contract Comments12 {
  function someFunction() {
    if (something)
      // Comment for second If
      if (somethingElse)
      // Comment for third If
      if (somethingElse) {
        f();
      }
    else {
    }
    if (something) /* Comment for second If */ {
      if (somethingElse) 
        f();
    }
    else {
    }
  }
}