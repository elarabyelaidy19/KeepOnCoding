# Simple Cryptocurrencies Prices Scrapper 


## **Coinbase**

### Rquest  
```
api.coinbase.com/v2/prices/btc-usd/spot 
``` 
### Response
```
    { 
        "data": { 
            "base": "BTC", 
            "currency": "USD", 
            "amount": "price" 
        }
    }  
 ```
### test in pry  
```
require ./api
api = Api::Coinbase.new({symbol: 'btc'}) 
api.request 
```


## **Coincap** 
### Rquest  
```
api.coincap.io/v2/assets/bitcoin 
``` 
 
### Response
```
    { 
        "data": { 
            "priceUsd" : "price" 
        }
    }  
 ```
### Test in pry  
```
require ./api
api = Api::Coincap.new({name: 'bitcoin', symbol: 'name'}) 
api.request 
```

## **CoinGecko** 
### Request Example  
```
api.coingecko.com/api/v3/coins/bitcoin 
``` 

### Response Example 
``` 
{ 
    "tickers" { 
        "base":  "BTC",
        "target":  "USD" 
        { 
            "market" { 

            }
        }
        
    }
}
``` 


### Test in pry  
```
require ./api
api = Api::Coingecko.new({name: 'ethereum'}) 
api.request 
``` 



## **CoinPaprika**
### Request Example  
```
api.coinpaprika.com/v1/coins/btc-bitcoin/ohlcv/today
``` 

### Response Example 
``` 
{ 
    {
     "close":  "price" 
    }   
    
}
``` 


### Test in pry  
```
require ./api
api = Api::Coinpaprika.new({symbol: 'eth', name: 'ethereum'}) 
api.request 
```

## **CryptoCompare**
### Request Example  
```
min-api.cryptocompare.com/data/price?fsym=btc&tsyms=usd
``` 

### Response Example 
``` 
 
    {
        "USD":  "price" 
    }   


```

### Test in pry  
```
require ./api
api = Api::Cryptocompare.new({symbol: 'eth', name: 'ethereum'}) 
api.request 
``` 


## Test all  
``` 

require ./api
api = Api::Wrapper.new({symbol: 'eth', name: 'ethereum'}) 
api.apiname
```