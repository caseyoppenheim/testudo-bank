<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
  <link rel="icon" href="https://fanapeel.com/wp-content/uploads/logo_-university-of-maryland-terrapins-testudo-turtle-hold-red-white-m.png">
  <meta charset="ISO-8859-1">
  <title>${user.firstName} ${user.lastName} - Testudo Bank</title>
  <style type="text/css">
    label {
      display: inline-block;
      width: 200px;
      margin: 5px;
      text-align: left;
    }
    button {
      padding: 10px;
      margin: 10px;
    }
    a.button {
      -webkit-appearance: button;
      -moz-appearance: button;
      appearance: button;

      text-decoration: none;
      color: initial;
    }
    
    .allInfo{
      display: inline-block;
      position: absolute;
      left: 10%;
    }
    .scoreInfo {
      display: inline-block;
      position: absolute;
      right: 10%;
      }

  </style>
</head>
<body>
  <h2 align="center"><span>${user.firstName}</span> <span>${user.lastName}</span> Bank Account Info</h2>
	<div class="allInfo">
    <div align="center">
    <span>Username: </span><span>${user.username}</span><br/>
    <span>Score: </span><span>${user.score}</span><br/>
    <span style="font-size: smaller">Score is out of 10. Score is calculated based on the utilization of the bank (including deposits, crypto purchases, and overdrafts). </span><br/>
		<span>Balance: $</span><span>${user.balance}</span><br/>
    <span>Overdraft Balance: $</span><span>${user.overDraftBalance}</span><br/>
    <span>Crypto Balance in USD: $</span><span>${user.cryptoBalanceUSD}</span><br/>
    <span>Ethereum Coins Owned: </span><span>${user.ethBalance}</span><br/>
    <span>Solana Coins Owned: </span><span>${user.solBalance}</span><br/>
    <span>Current $ETH Price: </span><span>${user.ethPrice}</span><br/>
    <span>Current $SOL Price: </span><span>${user.solPrice}</span><br/>
    <span>Re-payment logs: </span><span>${user.logs}</span><br/>
    <span>Transaction History: </span><span>${user.transactionHist}</span><br/>
    <span>Transfer History: </span><span>${user.transferHist}</span><br/>
    <span>Crypto History: </span><span>${user.cryptoHist}</span><br/>
    <span>Interest History: </span><span>${user.interestHist}</span>
    <br/>
    <a href='/deposit'>Deposit</a>
    <a href='/withdraw'>Withdraw</a>
    <a href='/dispute'>Dispute</a>
    <a href='/transfer'>Transfer</a>
    <a href='/'>Logout</a>
  </div>
    
  </div>
  <div class="scoreInfo">
    <div align ="center"> 
    <h2><span><span> ${user.firstName}</span><span> ${user.lastName}</span> Score Summary </span></h2>
     <div >Score: <span>${user.score} </span></div> 
     <div>Score Calculations</div><br/>
     <span>80% of score: Total Number of Deposits/Total Number of Transactions</span><br/>
     <span>20% of score: Involvment in Crypto </span><br/>
     <span>Eth Balance: ${user.ethBalance} </span><br/>
     <span>Sol Balance: ${user.solBalance} </span><br/>
     <span>A positive balance will increase your score by one for each type of cryptocurrency. </span> <br/>
     <span>Score is decreased by one in the presence of an overdraft balance.</span> <br/>
     <span>Overdraft Balance: ${user.overDraftBalance} </span><br/>
     <div>
       <a href='/'>Home</a>
     </div><br/>
</body>
</html>