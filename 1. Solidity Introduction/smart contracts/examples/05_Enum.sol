// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Use enum Foods { Apple, Pizza, Bagel, Banana }
Assign each value to food1–food4
*/

contract EnumExample {
    enum Foods { Apple, Pizza, Bagel, Banana }

    Foods public food1 = Foods.Apple;
    Foods public food2 = Foods.Pizza;
    Foods public food3 = Foods.Bagel;
    Foods public food4 = Foods.Banana;
}