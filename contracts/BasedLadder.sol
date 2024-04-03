// SPDX-License-Identifier: MIT



pragma solidity 0.8.17;


       
    interface IDEXV2Router0201 {
        function factory() external pure returns (address);
    
        function WETH() external pure returns (address);
    
        function addLiquidity(
            address tokenA,
            address tokenB,
            uint256 amountADesired,
            uint256 amountBDesired,
            uint256 amountAMin,
            uint256 amountBMin,
            address to,
            uint256 deadline
        )
            external
            returns (
                uint256 amountA,
                uint256 amountB,
                uint256 liquidity
            );
    
        function addLiquidityETH(
            address token,
            uint256 amountTokenDesired,
            uint256 amountTokenMin,
            uint256 amountETHMin,
            address to,
            uint256 deadline
        )
            external
            payable
            returns (
                uint256 amountToken,
                uint256 amountETH,
                uint256 liquidity
            );
    
        function removeLiquidity(
            address tokenA,
            address tokenB,
            uint256 liquidity,
            uint256 amountAMin,
            uint256 amountBMin,
            address to,
            uint256 deadline
        ) external returns (uint256 amountA, uint256 amountB);
    
        function removeLiquidityETH(
            address token,
            uint256 liquidity,
            uint256 amountTokenMin,
            uint256 amountETHMin,
            address to,
            uint256 deadline
        ) external returns (uint256 amountToken, uint256 amountETH);
    
        function removeLiquidityWithPermit(
            address tokenA,
            address tokenB,
            uint256 liquidity,
            uint256 amountAMin,
            uint256 amountBMin,
            address to,
            uint256 deadline,
            bool approveMax,
            uint8 v,
            bytes32 r,
            bytes32 s
        ) external returns (uint256 amountA, uint256 amountB);
    
        function removeLiquidityETHWithPermit(
            address token,
            uint256 liquidity,
            uint256 amountTokenMin,
            uint256 amountETHMin,
            address to,
            uint256 deadline,
            bool approveMax,
            uint8 v,
            bytes32 r,
            bytes32 s
        ) external returns (uint256 amountToken, uint256 amountETH);
    
        function swapExactTokensForTokens(
            uint256 amountIn,
            uint256 amountOutMin,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external returns (uint256[] memory amounts);
    
        function swapTokensForExactTokens(
            uint256 amountOut,
            uint256 amountInMax,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external returns (uint256[] memory amounts);
    
        function swapExactETHForTokens(
            uint256 amountOutMin,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external payable returns (uint256[] memory amounts);
    
        function swapTokensForExactETH(
            uint256 amountOut,
            uint256 amountInMax,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external returns (uint256[] memory amounts);
    
        function swapExactTokensForETH(
            uint256 amountIn,
            uint256 amountOutMin,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external returns (uint256[] memory amounts);
    
        function swapETHForExactTokens(
            uint256 amountOut,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external payable returns (uint256[] memory amounts);
    
        function quote(
            uint256 amountA,
            uint256 reserveA,
            uint256 reserveB
        ) external pure returns (uint256 amountB);
    
        function getAmountOut(
            uint256 amountIn,
            uint256 reserveIn,
            uint256 reserveOut
        ) external pure returns (uint256 amountOut);
    
        function getAmountIn(
            uint256 amountOut,
            uint256 reserveIn,
            uint256 reserveOut
        ) external pure returns (uint256 amountIn);
    
        function getAmountsOut(uint256 amountIn, address[] calldata path)
            external
            view
            returns (uint256[] memory amounts);
    
        function getAmountsIn(uint256 amountOut, address[] calldata path)
            external
            view
            returns (uint256[] memory amounts);
    }
    
    interface IDEXV2ROUTER02 is IDEXV2Router0201 {
        function removeLiquidityETHSupportingFeeOnTransferTokens(
            address token,
            uint256 liquidity,
            uint256 amountTokenMin,
            uint256 amountETHMin,
            address to,
            uint256 deadline
        ) external returns (uint256 amountETH);
    
        function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
            address token,
            uint256 liquidity,
            uint256 amountTokenMin,
            uint256 amountETHMin,
            address to,
            uint256 deadline,
            bool approveMax,
            uint8 v,
            bytes32 r,
            bytes32 s
        ) external returns (uint256 amountETH);
    
        function swapExactTokensForTokensSupportingFeeOnTransferTokens(
            uint256 amountIn,
            uint256 amountOutMin,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external;
    
        function swapExactETHForTokensSupportingFeeOnTransferTokens(
            uint256 amountOutMin,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external payable;
    
        function swapExactTokensForETHSupportingFeeOnTransferTokens(
            uint256 amountIn,
            uint256 amountOutMin,
            address[] calldata path,
            address to,
            uint256 deadline
        ) external;
    }
    
    interface IDEXV2Pair {
        event Approval(
            address indexed owner,
            address indexed spender,
            uint256 value
        );
        event Transfer(address indexed from, address indexed to, uint256 value);
    
        function name() external pure returns (string memory);
    
        function symbol() external pure returns (string memory);
    
        function decimals() external pure returns (uint8);
    
        function totalSupply() external view returns (uint256);
    
        function balanceOf(address owner) external view returns (uint256);
    
        function allowance(
            address owner,
            address spender
        ) external view returns (uint256);
    
        function approve(address spender, uint256 value) external returns (bool);
    
        function transfer(address to, uint256 value) external returns (bool);
    
        function transferFrom(
            address from,
            address to,
            uint256 value
        ) external returns (bool);
    
        function DOMAIN_SEPARATOR() external view returns (bytes32);
    
        function PERMIT_TYPEHASH() external pure returns (bytes32);
    
        function nonces(address owner) external view returns (uint256);
    
        function permit(
            address owner,
            address spender,
            uint256 value,
            uint256 deadline,
            uint8 v,
            bytes32 r,
            bytes32 s
        ) external;
    
        event Mint(address indexed sender, uint256 amount0, uint256 amount1);
        event Burn(
            address indexed sender,
            uint256 amount0,
            uint256 amount1,
            address indexed to
        );
        event Swap(
            address indexed sender,
            uint256 amount0In,
            uint256 amount1In,
            uint256 amount0Out,
            uint256 amount1Out,
            address indexed to
        );
        event Sync(uint112 reserve0, uint112 reserve1);
    
        function MINIMUM_LIQUIDITY() external pure returns (uint256);
    
        function factory() external view returns (address);
    
        function token0() external view returns (address);
    
        function token1() external view returns (address);
    
        function getReserves()
            external
            view
            returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    
        function price0CumulativeLast() external view returns (uint256);
    
        function price1CumulativeLast() external view returns (uint256);
    
        function kLast() external view returns (uint256);
    
        function mint(address to) external returns (uint256 liquidity);
    
        function burn(
            address to
        ) external returns (uint256 amount0, uint256 amount1);
    
        function swap(
            uint256 amount0Out,
            uint256 amount1Out,
            address to,
            bytes calldata data
        ) external;
    
        function skim(address to) external;
    
        function sync() external;
    
        function initialize(address, address) external;
    }
    
    interface IDEXV2Factory {
        event PairCreated(
            address indexed token0,
            address indexed token1,
            address pair,
            uint256
        );
    
        function feeTo() external view returns (address);
    
        function feeToSetter() external view returns (address);
    
        function getPair(address tokenA, address tokenB)
            external
            view
            returns (address pair);
    
        function allPairs(uint256) external view returns (address pair);
    
        function allPairsLength() external view returns (uint256);
    
        function createPair(address tokenA, address tokenB)
            external
            returns (address pair);
    
        function setFeeTo(address) external;
    
        function setFeeToSetter(address) external;
    }

    library SafeMath {
     function tryAdd(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
     {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
     }

     function trySub(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
     {
        if (b > a) return (false, 0);
        return (true, a - b);
     }

     function tryMul(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
     {
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
     }

     function tryDiv(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
     {
        if (b == 0) return (false, 0);
        return (true, a / b);
     }

     function tryMod(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
     {
        if (b == 0) return (false, 0);
        return (true, a % b);
     }

     function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
     }

     function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
     }

     function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
     }

     function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
     }

     function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
     }

     function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
     ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
     }

     function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
     ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
     }

     function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
     ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
     }
    }

    interface IERC20 {
     event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
      );
     event Transfer(address indexed from, address indexed to, uint256 value);

     function name() external view returns (string memory);

     function symbol() external view returns (string memory);

     function decimals() external view returns (uint8);

     function totalSupply() external view returns (uint256);

     function balanceOf(address owner) external view returns (uint256);

     function allowance(address owner, address spender)
        external
        view
        returns (uint256);

     function approve(address spender, uint256 value) external returns (bool);

     function transfer(address to, uint256 value) external returns (bool);

     function transferFrom(
        address from,
        address to,
        uint256 value
     ) external returns (bool);
    }

    interface ISTAKE {
     function setTreasuryWallet(address _treasury) external; 
     function swap(
        address _router,
        address swaptoken,
        address print
     ) external;
     function stake(uint256 value) external;
     function withdraw(uint256 value, address receiver) external;
     function claimReward(address _printer) external;
     function setPortion(uint _treasery, uint _printing) external;
     function setStake(uint _minimum, uint _tax, bool _on) external;
     function SafeTransferToken(address _tokenAdd, address to, bool _transferETH) external returns(bool);
    }


  contract Stake is ISTAKE {
    ///////// using libraries \\\\\\\\\
    using SafeMath for uint256;

    event Staked(address _stacker, uint amount);
    event Printed(address _printer, uint Amount);
    event Withdraw(address _stackers, uint amount, bool out);
    event DistributeReward(address _rewardToken, uint amount, uint totalStackers);
    event Claim(address _stacker, address _rewardToken, uint amount);

    address immutable public _callerToken; // authority contract which can regulate this
    address immutable Owner ;
    address public nativeCoin; // native Wrraped coin address
    address public TREASURY_ADDRESS = 0x3A62E748d08b32E6Cf42229a4E3316046c35D4E3;

    bool stakeOn;
    uint claimTax;
    uint MINIMUM_STAKE_AMOUNT = 100000000000000000000; //100 LADDER
    uint256 public  totalStacked;

    uint printingPortion = 400000000000000000; //40%
    uint treaseryPortion = 600000000000000000; //60%

    struct ClaimInfo {
        uint256 totalCollectedClaim;
        uint256 pendingClaim;
    }

    bool permission = true; //permission will false when printing reward
    bool isEntered; //re-entrancy block
    mapping(address => mapping(address => ClaimInfo)) public claim;
    mapping(address => bool) public IsStacker;
    mapping(address => uint256) public stacked;
    mapping(address => uint256) indexByAdd;
    mapping(address => uint256) reseaveReward;
    address[] public stackers;
    
    modifier onlyToken() {
        require(msg.sender == _callerToken);
        permission = false;
        _;
        permission = true;
    }

   modifier onlyOwner(){
    require(msg.sender == Owner, "only owner");
    _;
   }

    modifier reentrancyGurd(){
        require(!isEntered);
        isEntered = true;
        _;
        isEntered = false;
    }

    constructor(address _nativeCoin, address _owner) {
        require(_nativeCoin != address(0), "invalid nativeCoin address");
        nativeCoin = _nativeCoin;
        _callerToken = msg.sender;
        Owner = _owner;
    }

    receive() external payable {}

    event swapPrintedToken(uint256 _printAmount);

    function setTreasuryWallet(address _treasury) external onlyOwner {
       require(_treasury != address(0));
       TREASURY_ADDRESS = _treasury;
    }

    function setPortion(uint _treasery, uint _printing) external onlyOwner {
        treaseryPortion = _treasery;
        printingPortion = _printing;
    }

    function setStake(uint _minimum, uint _tax, bool _on) external onlyOwner{
        claimTax = _tax;
        stakeOn = _on;
        MINIMUM_STAKE_AMOUNT = _minimum;
    }



    function swap(
        address _router,
        address swaptoken,
        address printToken
    ) external onlyToken {
        uint finalAmount;
        if(swaptoken == printToken){
           finalAmount = (IERC20(swaptoken).balanceOf(address(this))).sub(reseaveReward[swaptoken]);
        }else{
          
          uint initBal = IERC20(printToken).balanceOf(address(this));
          uint _amount = IERC20(swaptoken).balanceOf(address(this)).sub(reseaveReward[swaptoken]);
          IERC20(swaptoken).approve(_router, _amount);
          address[] memory path;
            if(swaptoken == nativeCoin || printToken == nativeCoin){
                path = new address[](2); //native swap
                path[0] = swaptoken;
                path[1] = printToken;
            }else{    //token to token swap
                path = new address[](3);
                path[0] = swaptoken;
                path[1] = nativeCoin;
                path[2] = printToken;
            }
           uint256[] memory amounts = IDEXV2ROUTER02(_router).getAmountsOut(_amount, path);
           if(amounts[1] > 100){
             IDEXV2ROUTER02(_router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
                        _amount,
                        0,
                        path,
                        address(this),
                        block.timestamp
                    );
             finalAmount = (IERC20(printToken).balanceOf(address(this))).sub(initBal);
             emit Printed(printToken, finalAmount);
           }
        }
        if(finalAmount > 0){
         uint _treseryAmount =  (finalAmount.mul(treaseryPortion)).div(treaseryPortion.add(printingPortion));
         if(_treseryAmount > 0){
           bool success = IERC20(printToken).transfer(TREASURY_ADDRESS, _treseryAmount);
           require(success, "treasury transfer failed");
         }
         uint _distribute = finalAmount.sub(_treseryAmount);
         if(_distribute > 0)
            _distributeReward(printToken, _distribute);
        }
    }

    function _distributeReward(address _printerAdd, uint amount) private {
        uint256 _td;
        uint returnAmount;
        uint _totalstaker =  stackers.length;
        if (stakeOn && _totalstaker > 0){
            for (uint256 i = 0; i < _totalstaker; i++) {
                   uint256 _rA = ((stacked[stackers[i]]).mul(amount)) .div(totalStacked);
                   claim[stackers[i]][_printerAdd].pendingClaim += _rA;
                   _td = _td.add(_rA);
                
            }
           reseaveReward[_printerAdd] += _td;
           returnAmount = amount.sub(_td);
            emit DistributeReward(_printerAdd, _td, _totalstaker);
        }else{
           returnAmount = amount;
        }
        if(returnAmount > 0){
           bool success = IERC20(_printerAdd).transfer(_callerToken, returnAmount);
           require(success, "transfer failed");
        }
       
    }


    function stake(uint256 value) external  {
        require(value >= MINIMUM_STAKE_AMOUNT  && permission /*re-entrancy when printing permission*/); 
        bool sucess = IERC20(_callerToken).transferFrom(msg.sender, address(this), value);
        require(sucess, "Stake transfer failed");
        stacked[msg.sender] = stacked[msg.sender].add(value);
        totalStacked = totalStacked.add(value);
        if (!IsStacker[msg.sender]) {
            IsStacker[msg.sender] = true;
            indexByAdd[msg.sender] = stackers.length;
            stackers.push(msg.sender);
        }
        emit Staked(msg.sender, value);
    }

    function withdraw(uint256 value, address receiver) external  reentrancyGurd {
        require(IsStacker[msg.sender] &&  value <= stacked[msg.sender] && permission /*re-entrancy when printing permission*/);
        stacked[msg.sender] = stacked[msg.sender].sub(value);
        totalStacked = totalStacked.sub(value);
        bool sucess = IERC20(_callerToken).transfer(receiver, value);
        require(sucess, "LADDER withdraw stake failed");
        if (stacked[msg.sender] == 0) {
            IsStacker[msg.sender] = false;
            stackers[indexByAdd[msg.sender]] = stackers[stackers.length - 1];
            stackers.pop();
            emit Withdraw(msg.sender, value, true);
        }else{
          emit Withdraw(msg.sender, value, false);
        }
    }

    function claimReward(address _printer) external  reentrancyGurd {
        uint _claim = claim[msg.sender][_printer].pendingClaim;
        require(_claim > 0 && reseaveReward[_printer] >= _claim && permission /*re-entrancy when printing permission*/, "INSUFFICIENT RESERVE REWARD");
        claim[msg.sender][_printer].pendingClaim -= _claim;
        claim[msg.sender][_printer].totalCollectedClaim += _claim;
        reseaveReward[_printer] -= _claim;
        uint ct = (_claim.mul(claimTax)).div(1000000000000000000);
        if(ct > 0){
          bool sucess =  IERC20(_printer).transfer(TREASURY_ADDRESS, ct);
          require(sucess, "Treasury fee transfer failed");
        }
        bool success = IERC20(_printer).transfer(msg.sender, _claim.sub(ct));
        require(success, " claim reward withdraw failed");
        emit Claim(msg.sender, _printer, _claim.sub(ct));
    }

    function SafeTransferToken(address _tokenAdd, address to, bool _transferETH) external  onlyToken returns(bool) {
        require(to != address(0), "ERC20: transfer to the zero address");
        uint _surplasAmount = _transferETH ? address(this).balance : (IERC20(_tokenAdd).balanceOf(address(this))).sub(reseaveReward[_tokenAdd]);
        require(_surplasAmount > 0, "Transfer amount must be greater than zero");
        if(_transferETH){
            payable(to).transfer(_surplasAmount);
            return true;
        }else
        return IERC20(_tokenAdd).transfer(to, _surplasAmount);
    }
  }

  contract LadderProtocol is IERC20 {
    
       using SafeMath for uint256;
       address public Owner;

       string constant _name = "Based Ladder";
       string constant _symbol = "Ladder";
       uint8 constant _decimals = 18;
       uint256 public totalSupply = 11000000*(10**_decimals);   // 11M Initial supply
       uint256 constant maxSupply = 1000000000*(10**_decimals); // 1B Max Supply;

       uint public BLAST_THRESHOLD = 800000000*(10**_decimals); //800M threshold for regular mode
       uint BLAST_THRESHOLD_INCREASING_RATE = 100000000000000000; //10% 
    
    
        event SwapBackSuccess(
            uint256 tokenAmount,
            uint256 ETHAmountReceived,
            bool success
            );

        event Tx(
            uint256 amount,
            uint256 newAmount,
            uint256 mintAmount,
            uint256 contractAmount
           );
        event StakeContractChanges(address Address);
        event UpgradedMode(string _mode, uint ActivateAt, uint activatePriceAt);

        uint256 public  TREASURY_FEE = 200000000000000000; // 20% treasury fee
        uint256 public  PRINTING_FEE = 200000000000000000; // 20% treasury fee

        address public PRINTER_TOKEN = 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913;//usdc
        address PEG_TOKEN_ADDRESS;

        ISTAKE public Stake_ladder; 

        IDEXV2ROUTER02 public DEXV2Router =  IDEXV2ROUTER02(0x4752ba5DBc23f44D87826276BF6Fd6b1C372aD24);  //Uniswap router02
        IDEXV2Pair public DEXV2Pair;

        struct balanceInfo {
         uint256 balance;
         uint256 update;
        }

        mapping(address => balanceInfo) _balances;
        mapping(address => mapping(address => uint256)) _allowances;
        mapping(address => bool) public IsExcludeFromFee;
        mapping(address => bool) public IsExcludeFromMaxTx;
        mapping(address => bool) public IsLiquidityProvider;
        mapping(address => bool) public AMMPair;
     
        bool IsEntered;

        uint256 immutable public buyFees  = 50000000000000000; //8%
        uint256 immutable public sellFees = 30000000000000000; //3%

        uint immutable Blast_Fee = 50000000000000000; //1%

        bool public BLAST_MODE;
        bool STABLE_MODE;
        bool public LADDER_MODE;
        bool VOLUME_MODE;
        bool APY_MODE;
        bool PRINTING_ENABLE = true;
        
        uint constant pegDenominator = 10**(_decimals); // Peg calculation denominator according to decimal number

        
        //For APY
        uint256 public APY_UPDATED_AT;
        uint256 public Expedted_price;
        uint256 public APY_PERIOD;
        uint256 public APY_RATE_PER_PERIOD;

        //For HFT trading
        bool HFT;// HFT => High frequency Trading Mode (Demotivate Holder to early sell with high tax)
        uint256 HFTFee = 20000000000000000;
        uint256 QuickSellFee = 10000000000000000;
        uint256 HFTTimingThreshold =  60 * 60; // HFT within an Hour
        uint256 QuickSellTimingThreshold = 7 * 24 * 60 * 60; // QuickSell with in a week;
        
        //For LADDER Mode
        uint256 public LADDER_THRESHOLD = 300000000*(10**_decimals); //amount of peg token in lp pool
        uint256 public Reserve_flactuate_rate = 4000000000000000000; //on 4x of lp growth
        uint256 public peg_flactuate_rate = 100000000000000000; //10% of peg balance
        uint256 public RESERVE_PEG_LP;
        uint256 public LAST_RESERVE_PEG_LP;

        //For swap back
        uint public RESERVE_FOR_PRINT;
        uint MINIMUM_SWAPBACK = 10000000000000000000; //10 

        //Limited TX mode (LTM)
        bool LTM = true; 
        uint256 immutable GSL  = 200000000000000000; // General sell limit (GSL) => 20% of peg $ladder amount can sell at a time On LLS mode.
        
        
        
        //For price appreciation and depreciation 
        bool public Buy_Appreciation_Mode;
        bool public Sell_Depreciation_Mode;
        uint256 public Sell_Depreciation_Rate;
        uint256 public Buy_Appreciation_Rate;
        uint256 public HigherThreshold;
        uint256 public LowerThreshold;
        uint256 public App_Rate;
        uint BuyAppTxLimit;
        uint SellDepTxLimit;  



        modifier onlyOwner(){
            require(msg.sender == Owner, "Caller isn't owner");
            _;
        }

        modifier reentrancyGurd(){
            require(IsEntered == false);
            IsEntered = true;
            _;
            IsEntered = false;
        }
         
        
        constructor() {
            Owner = msg.sender;
            IsLiquidityProvider[msg.sender] = true;
            Stake_ladder = new Stake(DEXV2Router.WETH(), msg.sender);
            IsExcludeFromMaxTx[address(DEXV2Pair)] = true;
            IsExcludeFromMaxTx[address(this)] = true;  
            _balances[msg.sender].balance = totalSupply;
        }
    
        receive() external payable {}


       function name() public view virtual returns (string memory) {
        return _name;
       }

       function symbol() public view virtual returns (string memory) {
        return _symbol;
       }

       function decimals() public view virtual returns (uint8) {
        return _decimals;
       }


       function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account].balance;
       }

       function transfer(address to, uint256 value) public virtual returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
       }

       function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
       }

       function approve(address spender, uint256 value) public virtual returns (bool) {
         require(spender != address(0), "INVALID ZERO ADD");
         _allowances[msg.sender][spender] += value;
         emit Approval(msg.sender, spender, value);
         return true;
        }

        function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
         address spender = msg.sender;
         _spendAllowance(from, spender, value);
         _transfer(from, to, value);
         return true;
        } 

        //////////////////////////////////// internal functions \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

        function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
          uint256 currentAllowance = allowance(owner, spender);
          if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= value, "Exceed Allowance");
            unchecked {
               _allowances[owner][spender] = currentAllowance - value;
            }
          }
        }

        function _mint(address account, uint value) private {
            require(account != address(0), "INVALID MINTER ADDRESS");
           if(totalSupply < maxSupply){
           if(totalSupply.add(value) > maxSupply){
            uint _r = maxSupply.sub(totalSupply); //shouldn't exceed max supply
            totalSupply += _r;
            _balances[account].balance = (_balances[account].balance).add(_r);
           }else{
            _balances[account].balance = (_balances[account].balance).add(value);
            totalSupply += value;
           }
           }
           if(totalSupply >= BLAST_THRESHOLD){
             BLAST_MODE = true;
             BLAST_THRESHOLD = totalSupply == maxSupply ? maxSupply : (BLAST_THRESHOLD.mul(BLAST_THRESHOLD_INCREASING_RATE)).div(pegDenominator);
             TREASURY_FEE = PRINTING_FEE = 500000000000000000;
             emit UpgradedMode("Blast", block.timestamp, Expedted_price);
           }
            emit Transfer(address(0), account, value);
        }


        function swapTokensForPegToken(uint256 tokenAmount) private returns(uint swaped){
            // generate the DEX pair path of token -> wETH
            address[] memory path = new address[](2);
            path[0] = address(this);
            path[1] = PEG_TOKEN_ADDRESS;
            _allowances[address(this)][address(DEXV2Router)] += tokenAmount;
            uint _preBal = IERC20(PEG_TOKEN_ADDRESS).balanceOf(address(Stake_ladder));
            // execute the swap
            DEXV2Router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
                tokenAmount,
                0, // accept any amount of ETH
                path,
                address(Stake_ladder),
                block.timestamp
            );
            return (IERC20(PEG_TOKEN_ADDRESS).balanceOf(address(Stake_ladder))).sub(_preBal);
        }

        function swapBack() public {
            uint contractBalance = _balances[address(this)].balance;
            if (RESERVE_FOR_PRINT < MINIMUM_SWAPBACK) {
                return;
            }
            if (contractBalance >= RESERVE_FOR_PRINT) {
                uint256 AMountToSwapForPegToken = RESERVE_FOR_PRINT;
                uint _maxSwap = LTM ? MaximumTxOnLTM() : (totalSupply.mul(2)).div(100); //max amount for swapback 
                if(RESERVE_FOR_PRINT >  _maxSwap) AMountToSwapForPegToken = _maxSwap;
                swapTokensForPegToken(AMountToSwapForPegToken);
                Stake_ladder.swap(address(DEXV2Router), PEG_TOKEN_ADDRESS, PRINTER_TOKEN);
                RESERVE_FOR_PRINT = RESERVE_FOR_PRINT.sub(AMountToSwapForPegToken);
            }
        }
        

        function _transfer(
          address from,
          address to,
          uint256 amount
        ) private  returns (bool)  {
          require(from != address(0) && !AMMPair[to], "INVALID SENDER WALLET");
          require(from == address(this) ? true : IsEntered == false, "Reentrancy Err");
          IsEntered = true;
          uint256 feeAmount;
         //updating sender balance
         uint256 fromBalance = _balances[from].balance;
            require(fromBalance >= amount, "INSUFFICIENT SENDER BALANCE");
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from].balance = fromBalance - amount;
            }

        //ON BUY
        if (from == address(DEXV2Pair) && !IsLiquidityProvider[to] && !BLAST_MODE) {
            feeAmount = !IsExcludeFromFee[to] ? (amount.mul(buyFees)).div(pegDenominator): 0;
            _brebase(amount);
            _update(from, to, amount.sub(feeAmount)); //update receiver balance
            _balances[to].update = block.timestamp;  // update buy timestamp For HFT trading
        }
        
        else if (to == address(DEXV2Pair) && !IsLiquidityProvider[from] && !BLAST_MODE) {
            uint _sellAmount = MaximumTxOnLTM();
                require(
                !IsExcludeFromMaxTx[from] &&  LTM ?  amount <= _sellAmount : true,
                "EXCEED LTM SELL LIMIT"
            );
            feeAmount = !IsExcludeFromFee[from] && Sell_Depreciation_Mode ?
                ( amount.mul(sellFees)).div(pegDenominator) : 0 ; //No sell taxes in hard peg stable mode;

            if (HFT && !IsExcludeFromFee[from]) {
                uint256 HFTaxAmount = (block.timestamp).sub(_balances[from].update) <= HFTTimingThreshold ? (amount.mul(HFTFee)).div(pegDenominator)
                    : (block.timestamp).sub(_balances[from].update) <= QuickSellTimingThreshold ? (amount.mul(QuickSellFee.mul(10))).div(pegDenominator) : 0;
                feeAmount = feeAmount.add(HFTaxAmount);
            }

            if(from != address(this) && from != address(Stake_ladder) && !IsExcludeFromFee[from] && PRINTING_ENABLE) swapBack();
            _srebase(from, amount.sub(feeAmount), feeAmount);
        }

        //if(isTransfer || IsLiquidityProvider[from] || IsLiquidityProvider[to] || BLAST_MODE)
        else{    
            if(BLAST_MODE){
                if(from == address(DEXV2Pair) && !IsExcludeFromFee[to])
                     feeAmount = (amount.mul(Blast_Fee)).div(pegDenominator);
                if(to == address(DEXV2Pair) && !IsExcludeFromFee[from]){
                     uint _price;
                     feeAmount = (amount.mul(Blast_Fee)).div(pegDenominator);
                     if(PRINTING_ENABLE && from != address(this)) swapBack();
                     (uint256 reserve0, uint256 reserve1, ) = DEXV2Pair.getReserves();
                     uint amountWithoutFee = amount.sub(feeAmount);
                     if(DEXV2Pair.token0() == address(this)){
                        uint  amountOut = DEXV2Router.getAmountOut(amountWithoutFee, reserve0, reserve1);
                        _price = ((reserve1.sub(amountOut)).mul(pegDenominator)).div(reserve0.add(amountWithoutFee));
                        RESERVE_PEG_LP = reserve1.sub(amountOut);
                     }else{
                        uint amountOut = DEXV2Router.getAmountOut(amountWithoutFee, reserve1, reserve0);
                        _price = ((reserve0.sub(amountOut)).mul(pegDenominator)).div(reserve1.add(amountWithoutFee)); 
                        RESERVE_PEG_LP = reserve0.sub(amountOut);
                    } 
                  if(_price <= Expedted_price) {
                     BLAST_MODE = false;
                     Expedted_price = _price;
                     TREASURY_FEE = PRINTING_FEE = 200000000000000000;
                     _upgradeApp(App_Rate, Buy_Appreciation_Mode, Sell_Depreciation_Mode, VOLUME_MODE, BuyAppTxLimit, SellDepTxLimit); //Fix app and dep according to new price
                     LAST_RESERVE_PEG_LP = RESERVE_PEG_LP;
                  }
                }
            }else{
             if (from != address(DEXV2Pair) && to != address(DEXV2Pair))  SOFT_UPGRADE();
             
             if(IsLiquidityProvider[from] || IsLiquidityProvider[to]){
                IsLiquidityProvider[from] = false;
                IsLiquidityProvider[to] = false;
              }  
            }
            _update(from, to, amount.sub(feeAmount)); //update receiver balances
        }
        
        if(feeAmount > 0) {
            if(PRINTING_ENABLE){
            uint256 printingAmount = (feeAmount.mul(PRINTING_FEE.add(TREASURY_FEE))).div(pegDenominator);
             RESERVE_FOR_PRINT += printingAmount;
            }
            _update(from, address(this), feeAmount); 
        } 
        IsEntered = false;
        return true;
    }

    function  _update(address from, address to, uint256 value) internal  {
        require(to != address(0), "INVALID RECEIVER WALLET");
        unchecked {
        // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
            _balances[to].balance += value;
        }
        emit Transfer(from, to, value);
    }   


    function _brebase(uint256 amount) private {
        uint256 newAmount;
        uint256 mintAmount;
        uint256 contractAmount;
        uint amountIn;
        uint256 pairLadderBal = _balances[address(DEXV2Pair)].balance;
        //uint256 pairPegBal = IERC20(PEG_TOKEN_ADDRESS).balanceOf(address(DEXV2Pair));
        //_apy(); // APY rising
        
        (uint256 reserve0, uint256 reserve1, ) = DEXV2Pair.getReserves();

        if (DEXV2Pair.token0() == address(this)) {
            amountIn = DEXV2Router.getAmountIn(amount, reserve1, reserve0);
            RESERVE_PEG_LP = reserve1.add(amountIn);
        } else {
            amountIn = DEXV2Router.getAmountIn(amount, reserve0, reserve1);
            RESERVE_PEG_LP = reserve0.add(amountIn);
        }

        newAmount = (pegDenominator.mul(RESERVE_PEG_LP)).div(Expedted_price); //expected new pair LADDER balance for repeg price

        if (Buy_Appreciation_Mode) {
            //On Buy appreciation
            uint256 newPrice = VOLUME_MODE 
                ?  Expedted_price.add(
                    (amount.mul(HigherThreshold.sub(Expedted_price))).div(pairLadderBal)
                ) : Expedted_price.add(Buy_Appreciation_Rate);
            uint price = (pegDenominator.mul(RESERVE_PEG_LP)).div(pairLadderBal.add(amount));
            if(price > newPrice && newPrice > 0 && newPrice > Expedted_price){
            newAmount = (pegDenominator.mul(RESERVE_PEG_LP)).div(newPrice);
            Expedted_price = newPrice;
            }
        }

        if (newAmount > pairLadderBal) {
            uint256 supplyAmount = newAmount.sub(pairLadderBal);//require amount to repeg with added more vlue in pair
            uint _rb = (_balances[address(this)].balance).sub(RESERVE_FOR_PRINT); //contract available balance without printing reserve to repeg 
            if (_rb > supplyAmount) { //is contract reserve is enough for repeg
                _balances[address(this)].balance = (
                   _balances[address(this)].balance
                ).sub(supplyAmount);
                _update(address(this), address(DEXV2Pair), supplyAmount);
            } else {
                mintAmount = supplyAmount.sub(_rb); //need to mint new token to repeg
                if (_rb > 0) {
                    _balances[address(this)].balance = (
                        _balances[address(this)].balance
                    ).sub(_rb);
                    _update(address(this), address(DEXV2Pair), _rb);
                }
                if (mintAmount > 0) {
                    _mint(address(DEXV2Pair), mintAmount);
                }
            }
        } else {
            //adjust the balance to repeg if pair has exceed amount then require 
            contractAmount = pairLadderBal.sub(newAmount);
            //transfer extra funds to contract from pair
            _balances[address(DEXV2Pair)].balance = (_balances[address(DEXV2Pair)].balance)
                .sub(contractAmount);
           _update(address(DEXV2Pair), address(this), contractAmount);
        }
        emit Tx(amount, newAmount, mintAmount, contractAmount);
    }

    function _srebase(
        address sender,
        uint256 _amount,
        uint _fee
    ) private {
           uint contractAmount;
           uint newAmount;
           uint mintAmount;
           (uint reserve0, uint reserve1, ) = DEXV2Pair.getReserves();
           uint256 pairLadderBal = _balances[address(DEXV2Pair)].balance;
           uint256 pairPegTokenBal = IERC20(PEG_TOKEN_ADDRESS).balanceOf(address(DEXV2Pair));
           if(msg.sender == address(DEXV2Router)){
                uint optimalAmount = ((_amount.add(_fee)).mul(pairPegTokenBal)).div(pairLadderBal);
                require(address(DEXV2Router).balance < optimalAmount && 
                    IERC20(PEG_TOKEN_ADDRESS).allowance(sender, address(DEXV2Router)) < optimalAmount, "Only LiquidityAdder can addLiquidity or remove WNATIVE allowance in router to sell");
           }

            if(DEXV2Pair.token0() == address(this)){
                uint amountOut = DEXV2Router.getAmountOut(_amount, reserve0, reserve1);
                RESERVE_PEG_LP = reserve1.sub(amountOut); 
            }else{
               uint amountOut = DEXV2Router.getAmountOut(_amount, reserve1, reserve0);
               RESERVE_PEG_LP = reserve0.sub(amountOut);       
            }

             
            if(sender != address(this)){ //if contract is selling for printing, peg will remain stable
  
             if(pairPegTokenBal >= LADDER_THRESHOLD && !LADDER_MODE){
                LADDER_MODE = true;
                LAST_RESERVE_PEG_LP = RESERVE_PEG_LP;
                emit UpgradedMode("Ladder", block.timestamp, Expedted_price);
             }

             if(LADDER_MODE && RESERVE_PEG_LP > (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator) || LADDER_MODE && RESERVE_PEG_LP < (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator)){
                if(RESERVE_PEG_LP > (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator)){
                   Expedted_price = Expedted_price.add((Expedted_price.mul(peg_flactuate_rate)).div(pegDenominator));
                }
                if(RESERVE_PEG_LP < (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator)){
                   Expedted_price = Expedted_price.sub((Expedted_price.mul(peg_flactuate_rate)).div(pegDenominator));
                }
                
                newAmount = (pegDenominator.mul(RESERVE_PEG_LP)).div(Expedted_price);
                if(Buy_Appreciation_Mode || Sell_Depreciation_Mode) _upgradeApp(App_Rate, Buy_Appreciation_Mode, Sell_Depreciation_Mode, VOLUME_MODE, BuyAppTxLimit, SellDepTxLimit); //Fix app and dep threshold according to new price
                LAST_RESERVE_PEG_LP = RESERVE_PEG_LP;
                emit UpgradedMode("Ladder", block.timestamp, Expedted_price);
             } else _apy();

             if(Sell_Depreciation_Mode && sender != address(this) && Expedted_price.sub(LowerThreshold) > 100){
                uint newPrice = VOLUME_MODE ? Expedted_price.sub((_amount.mul(Expedted_price.sub(LowerThreshold))).div(pairLadderBal)) : Expedted_price.sub(Sell_Depreciation_Rate) ;
                newAmount = (pegDenominator.mul(RESERVE_PEG_LP)).div(newPrice);
                uint _price = (pegDenominator.mul(RESERVE_PEG_LP)).div(pairLadderBal);
                if(_price > LowerThreshold && newPrice > LowerThreshold){
                  newAmount = (pegDenominator.mul(RESERVE_PEG_LP)).div(Expedted_price);
                  Expedted_price = newPrice;
                }
             }
            }

            newAmount = (pegDenominator.mul(RESERVE_PEG_LP)).div(Expedted_price);

            if(newAmount > pairLadderBal){ 
                uint supplyAmount = newAmount.sub(pairLadderBal); //require amount to repeg with added more vlue in pair
             if(_amount > supplyAmount){ //if selling amount is enough
                _balances[address(DEXV2Pair)].balance = (_balances[address(DEXV2Pair)].balance).add(supplyAmount);
                 contractAmount = _amount.sub(supplyAmount);
                _balances[address(this)].balance = (_balances[address(this)].balance).add(contractAmount);
             }else{
                _balances[address(DEXV2Pair)].balance = (_balances[address(DEXV2Pair)].balance).add(_amount);
                uint surplasAmount = supplyAmount.sub(_amount);
                uint _rb = (_balances[address(this)].balance).sub(RESERVE_FOR_PRINT);
                if(_rb > surplasAmount){ //is selling and contract reserve is enough
                   _balances[address(this)].balance = (_balances[address(this)].balance).sub(surplasAmount);
                   _balances[address(DEXV2Pair)].balance = (_balances[address(DEXV2Pair)].balance).add(surplasAmount);
                   emit Transfer(address(this), address(DEXV2Pair), surplasAmount);
                }else{
                    mintAmount = surplasAmount.sub(_rb); //if need to mint new token 
                    if(_rb > 0){
                       _balances[address(this)].balance = (_balances[address(this)].balance).sub(_rb);
                       _balances[address(DEXV2Pair)].balance = (_balances[address(DEXV2Pair)].balance).add(_rb);
                        emit Transfer(address(this), address(DEXV2Pair), _rb); 
                    }
                    if(mintAmount > 0){
                        _mint(address(DEXV2Pair), mintAmount);    
                    }
                }
             }

            }else{
              //adjust the balance to repeg if pair has exceed amount then require 
               uint  expectedDiff = pairLadderBal.sub(newAmount);
               uint  expectedPairAmount = pairLadderBal.sub(expectedDiff); 
                _balances[address(DEXV2Pair)].balance = expectedPairAmount.sub(_amount);
                contractAmount = _amount.add(expectedDiff);
                DEXV2Pair.sync(); //external syncing  reserve to insure expected return for seller inspite repeging
                _balances[address(DEXV2Pair)].balance = expectedPairAmount; //then assign expected balance for repeg
                //transfer extra funds to contract from pair
                _balances[address(this)].balance = (_balances[address(this)].balance).add(contractAmount); 
              emit Transfer(address(DEXV2Pair), address(this), contractAmount);
            }

            emit Transfer(sender, address(DEXV2Pair), _amount);
            emit Tx(_amount, newAmount, mintAmount, contractAmount );
    }

    

    function setAPY(
        uint256 _apy_rate_per_period,
        uint256 _upgradingPeriod,
        bool _apy_mode
    ) external onlyOwner {
        APY_PERIOD = _upgradingPeriod; 
        if(_upgradingPeriod > 0 ){   
         APY_RATE_PER_PERIOD = _apy_rate_per_period.add(pegDenominator);
         APY_UPDATED_AT = block.timestamp;
         APY_MODE = _apy_mode;
         if(_apy_mode) emit UpgradedMode("APY", block.timestamp, Expedted_price);
        }
    }

    function _apy() private  returns (bool) {
        if (APY_MODE) {
           uint _periods = ((block.timestamp).sub(APY_UPDATED_AT)).div(APY_PERIOD);  //how many period over since last peg rise by apy
           if(_periods > 0){
             uint256 newPrice = Expedted_price;
             for (uint256 i = 0; i < _periods; i++) {
               uint256 updatePrice = (newPrice.mul(APY_RATE_PER_PERIOD)).div(pegDenominator);
               newPrice = updatePrice;
             }
             APY_UPDATED_AT += (APY_PERIOD.mul(_periods)); //last period updated timestamp
             Expedted_price = newPrice;
             if(Buy_Appreciation_Mode) _upgradeApp(App_Rate, Buy_Appreciation_Mode, Sell_Depreciation_Mode, VOLUME_MODE, BuyAppTxLimit, SellDepTxLimit); //Fix app and dep according to new price
           }     
        }
        return true;
    }

    function SOFT_UPGRADE() public {
        if(APY_MODE && BLAST_MODE || LADDER_MODE && BLAST_MODE){
            uint _prePrice = Expedted_price;
            _apy(); //APY BPEGV RISING
          
           if(LADDER_MODE && RESERVE_PEG_LP > (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator) || LADDER_MODE && RESERVE_PEG_LP < (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator)){
                if(RESERVE_PEG_LP > (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator)){
                   Expedted_price = Expedted_price.add((Expedted_price.mul(peg_flactuate_rate)).div(pegDenominator));
                }
                if(RESERVE_PEG_LP < (LAST_RESERVE_PEG_LP.mul(Reserve_flactuate_rate)).div(pegDenominator)){
                   Expedted_price = Expedted_price.sub((Expedted_price.mul(peg_flactuate_rate)).div(pegDenominator));
                }
                _upgradeApp(App_Rate, Buy_Appreciation_Mode, Sell_Depreciation_Mode, VOLUME_MODE, BuyAppTxLimit, SellDepTxLimit); //Fix app and dep according to new price
                LAST_RESERVE_PEG_LP = RESERVE_PEG_LP;
                emit UpgradedMode("Ladder", block.timestamp, Expedted_price);
            }
           if(_prePrice != Expedted_price) _recover(Expedted_price);
        }
    }

    function HARD_UPGRADE(uint256 _price, bool _recoveringToInitialPhase) external onlyOwner {
        _recover(_price);
        if (_recoveringToInitialPhase) {
            STABLE_MODE = true;
            Buy_Appreciation_Mode = false;
            Sell_Depreciation_Mode = false;
            LADDER_MODE = false;
            APY_MODE = false;
            emit UpgradedMode("HardPeg", block.timestamp, Expedted_price);
        }
    }

    function _recover(uint256 _basePrice) private {
        uint256 supplyAmount;
        uint256 newAmount;
        (uint256 reserve0, uint256 reserve1, ) = DEXV2Pair.getReserves();
        uint256 pairLadderBal = _balances[address(DEXV2Pair)].balance;
        if (DEXV2Pair.token0() == address(this)) {
            newAmount = (pegDenominator.mul(reserve1)).div(_basePrice);
        } else {
            newAmount = (pegDenominator.mul(reserve0)).div(_basePrice);
        }
        if (pairLadderBal > newAmount) {
            //transfer surplas amount to contract for peg repeg
            uint256 contractAmount = pairLadderBal.sub(newAmount);
            _balances[address(DEXV2Pair)].balance = (_balances[address(DEXV2Pair)].balance).sub(contractAmount);
            _update(address(DEXV2Pair), address(this), contractAmount);
        } else {
            supplyAmount = newAmount.sub(pairLadderBal);
            uint contractReserve = (_balances[address(this)].balance).sub(RESERVE_FOR_PRINT);
            if (contractReserve >= supplyAmount) {
                _balances[address(this)].balance = ( _balances[address(this)].balance).sub(supplyAmount);
                _update(address(this), address(DEXV2Pair), supplyAmount);
            } else {
                if (contractReserve > 0) {
                    _balances[address(this)].balance = (_balances[address(this)].balance).sub(contractReserve);
                     _update(address(this), address(DEXV2Pair), contractReserve);
                }
                uint256 mintAmount = supplyAmount.sub(contractReserve);
                if (mintAmount > 0) {
                    _mint(address(DEXV2Pair), mintAmount);
                }
            }
        }
        //force syncing to get wanted reserve
        DEXV2Pair.sync();
        Expedted_price = _basePrice;
    }


    
    function _upgradeApp(
        uint256 _appRate,
        bool _ba,
        bool _sd,
        bool _volumeMode,
        uint256 _buyTxLimit,
        uint256 _sellTxLimit
    ) private {
        uint _app = (Expedted_price.mul(_appRate)).div(pegDenominator);
        HigherThreshold = Expedted_price.add(_app);
        LowerThreshold = Expedted_price.sub(_app);
        App_Rate = _appRate;
        STABLE_MODE = !(_ba || _sd); //  price stability will false on app or dep turn on.
        if (!_volumeMode) { 
            // Peg App. and Dep. will count according to Number Of Txs
            if (_ba) {
                Buy_Appreciation_Mode = _ba;
                Buy_Appreciation_Rate = _app.div(_buyTxLimit);
                BuyAppTxLimit = _buyTxLimit;
            }
            if (_sd) {
                Sell_Depreciation_Mode = _sd;
                Sell_Depreciation_Rate = _app.div(_sellTxLimit);
                SellDepTxLimit = _sellTxLimit;
            }
        } else {
             // Peg App. and Dep. will count according to volume Of Txs
             Buy_Appreciation_Mode = _ba; 
             Sell_Depreciation_Mode = _sd;
        }
        VOLUME_MODE = _volumeMode;
        if(!STABLE_MODE) emit UpgradedMode("App", block.timestamp, Expedted_price);
    }

    function upgradeAppreciationAndDepreciation(
        uint256 _appRate,
        bool _ba,
        bool _sd,
        bool _volumeMode,
        uint256 _buyTxLimit,
        uint256 _sellTxLimit        
    ) external onlyOwner{
        _upgradeApp(_appRate, _ba, _sd, _volumeMode, _buyTxLimit, _sellTxLimit);
    }

    function MaximumTxOnLTM() public view returns (uint256 sellAmount) {
        uint _pegBal = _balances[address(DEXV2Pair)].balance;
            sellAmount = (_pegBal.mul(GSL)).div(pegDenominator);
    }

    function priceNow() public view returns(uint _pegPriceWithDecimal){
        (uint256 reserve0, uint256 reserve1, ) = DEXV2Pair.getReserves();
        if (DEXV2Pair.token0() == address(this)){
            _pegPriceWithDecimal = (reserve1.mul(pegDenominator)).div(reserve0);
        } else {
            _pegPriceWithDecimal = (reserve0.mul(pegDenominator)).div(reserve1);
        }
    }

    ///////////// settings /////////////////////
    function setBlastMode(uint _theshold, uint _rate, bool _execute) external onlyOwner{
        BLAST_MODE = _execute;
        BLAST_THRESHOLD = _theshold;
        BLAST_THRESHOLD_INCREASING_RATE = _rate.add(pegDenominator); 
    }


    
    function setAMMPair(
        address  _pegTokenAddress,
        address _routerAdd,
        bool _setPeg
    ) external onlyOwner {
        
        address _pair = IDEXV2Factory(IDEXV2ROUTER02(_routerAdd).factory()).getPair(
            _pegTokenAddress,
            address(this)
        );
        if (_pair == address(0)) {
            _pair = IDEXV2Factory(IDEXV2ROUTER02(_routerAdd).factory()).createPair(
                _pegTokenAddress,
                address(this)
            );
        }
        IsExcludeFromMaxTx[_pair] = true;
        if(_setPeg) {
            DEXV2Pair = IDEXV2Pair(_pair); 
            PEG_TOKEN_ADDRESS = _pegTokenAddress;
        }
        else AMMPair[_pair] = true;

    }

    function transferOwnership(address _owner) external onlyOwner{
        require(_owner != address(0), "INVALID ADD");
        Owner = _owner;
    }

    function setRouter(address _routerAdd) external onlyOwner {
        DEXV2Router = IDEXV2ROUTER02(_routerAdd);
        if(PEG_TOKEN_ADDRESS != address(0)){
        address _pairAdd = IDEXV2Factory(DEXV2Router.factory()).getPair(
            PEG_TOKEN_ADDRESS,
            address(this)
        );
        if (_pairAdd == address(0)) {
            _pairAdd =  IDEXV2Factory(DEXV2Router.factory()).createPair(
                PEG_TOKEN_ADDRESS,
                address(this)
            );
        }
        DEXV2Pair = IDEXV2Pair(_pairAdd);
        IsExcludeFromMaxTx[_pairAdd] = true;
        }

    }


    function setLadder(
        uint256 _reserve_rate,
        uint256 _peg_rate,
        uint256 _ladderThreshold,
        bool execute
    ) external onlyOwner {
        Reserve_flactuate_rate = _reserve_rate;
        peg_flactuate_rate = _peg_rate;
        LAST_RESERVE_PEG_LP = IERC20(PEG_TOKEN_ADDRESS).balanceOf(address(DEXV2Pair));
        LADDER_THRESHOLD = _ladderThreshold;
        LADDER_MODE = execute;
    }

    

    function setPrinting(
        address _printer,
        uint _minimum_swapback,
        bool _printing
    ) external onlyOwner {
        PRINTING_ENABLE = _printing;
        PRINTER_TOKEN =  _printer;
        MINIMUM_SWAPBACK = _minimum_swapback;
    }


    function setLiquidityProvider(
        address account,
        bool execute
    ) external onlyOwner {
        require(account != address(0));
        IsLiquidityProvider[account] = execute;
    }

    function setExempt(
        address[] calldata _exempters,
        bool _execute,
        uint256 _pos
    ) external onlyOwner {
        for (uint256 i = 0; i < _exempters.length; i++) {
            require(_exempters[i] != address(0));
            if (_pos == 1)  IsExcludeFromFee[_exempters[i]] = _execute;
            else if (_pos == 2)  IsExcludeFromMaxTx[_exempters[i]] = _execute;
            else {
                IsExcludeFromFee[_exempters[i]] = _execute;
                IsExcludeFromMaxTx[_exempters[i]] = _execute;
            }
        }
    }

    function setHFT(
        uint256 _hft,
        uint256 _quicksellfee,
        uint256 _hftThreshole,
        uint256 _qsThreshole,
        bool execute
    ) external onlyOwner {
        HFTFee = _hft;
        QuickSellFee = _quicksellfee;
        HFTTimingThreshold = _hftThreshole;
        QuickSellTimingThreshold = _qsThreshole;
        HFT = execute;
    }

    function SafeTransferToken(address _tokenAdd, address to, uint256 amount, bool _transferFromStake, bool _transferETH) public reentrancyGurd onlyOwner {
            require(to != address(0), "ERC20: transfer to the zero address");
            uint _contractBal = _transferETH ? address(this).balance : IERC20(_tokenAdd).balanceOf(address(this));
            require(amount > 0 && amount <= _contractBal, "Transfer amount must be greater than zero or lower than reserve");
            bool success ;
            if(_transferETH && !_transferFromStake){
                payable(to).transfer(amount);
                success = true;
            } else success = _transferFromStake ? Stake_ladder.SafeTransferToken(_tokenAdd, to, _transferETH) : IERC20(_tokenAdd).transfer(to, amount);
            require(success, "ERC20 token transfer failed");
        }
    
    function airDrop(address[] memory to, uint256[] memory amount) public reentrancyGurd onlyOwner {
            for(uint256 i = 0; i < to.length; i++){
                require(to[i] != address(0), "ERC20: transfer to the zero address");
                require(amount[i] > 0 && amount[i] <= (_balances[address(this)].balance).sub(RESERVE_FOR_PRINT), "Transfer amount must be greater than zero or Lower than reserve");
                bool success = _transfer(address(this), to[i], amount[i]);
                require(success, "ERC20 token transfer failed");
            }
        }

    function setStakeContract(address _add) external onlyOwner {
        require(_add != address(0), "Invalid Add");
        Stake_ladder = ISTAKE(_add);
        emit StakeContractChanges(_add);
    }
        

    
        
}