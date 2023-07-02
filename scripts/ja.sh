curl \
-X POST \
-H "Content-Type: application/json" \
-o sample-ja.pdf \
-d '{
    "template": "sample-ja.jasper",
    "fileName": "sample-ja",
    "parameters": {
    "store_number": "5566"
    },
    "data": [
    { "ind": "1", "name": "りんご", "amount": "3", "price": "30", "total_price": "90" },
    { "ind": "2", "name": "オレンジ", "amount": "2", "price": "40", "total_price": "80" },
    { "ind": "3", "name": "スイカ", "amount": "1", "price": "100", "total_price": "100" }
    ]
}' \
http://localhost:8080/report
