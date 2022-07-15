// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import 'ds-test/test.sol';
import "../Ed25519.sol";

contract TestEd25519 is DSTest {
    function testVerify() public {
        bytes32 k = 0x045bba34c9740a874bb9fd4d243daf485a7024fb16702f856c8512170581fb81;
        bytes32 r = 0xe7021251e2f7f6d530796a778a1c50cabc30ea11276b727dab3ec81b7c643db5;
        bytes32 s = 0xa466fcc69fcffcc8fe1611c41f2412395ada45be36801007a423e8f9ca7e1a0c;
        bytes memory m = abi.encodePacked('Hello, goodbye.');

        assertTrue(Ed25519.verify(k, r, s, m));
    }
}
