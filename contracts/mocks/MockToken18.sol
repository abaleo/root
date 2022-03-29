// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import "../types/Token18.sol";

contract MockToken18 {
    function approve(Token18 self, address grantee) external {
        Token18Lib.approve(self, grantee);
    }

    function approve(Token18 self, address grantee, UFixed18 amount) external {
        Token18Lib.approve(self, grantee, amount);
    }

    function push(Token18 self, address recipient) external {
        Token18Lib.push(self, recipient);
    }

    function push(Token18 self, address recipient, UFixed18 amount) external {
        Token18Lib.push(self, recipient, amount);
    }

    function pull(Token18 self, address benefactor, UFixed18 amount) external {
        Token18Lib.pull(self, benefactor, amount);
    }

    function pullTo(Token18 self, address benefactor, address recipient, UFixed18 amount) external {
        Token18Lib.pullTo(self, benefactor, recipient, amount);
    }

    function name(Token18 self) external view returns (string memory) {
        return Token18Lib.name(self);
    }

    function symbol(Token18 self) external view returns (string memory) {
        return Token18Lib.symbol(self);
    }

    function decimals(Token18 self) external pure returns (uint256) {
        return Token18Lib.decimals(self);
    }

    function balanceOf(Token18 self) external view returns (UFixed18) {
        return Token18Lib.balanceOf(self);
    }

    function balanceOf(Token18 self, address account) external view returns (UFixed18) {
        return Token18Lib.balanceOf(self, account);
    }
}