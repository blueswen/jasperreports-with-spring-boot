curl \
-X POST \
-H "Content-Type: application/json" \
-o sample-zh_tw.pdf \
-d '{
    "template": "sample-zh_tw.jasper",
    "fileName": "sample-zh_tw",
    "parameters": {
    "store_number": "5566"
    },
    "data": [
    { "ind": "1", "name": "蘋果", "amount": "3", "price": "30", "total_price": "90" },
    { "ind": "2", "name": "橘子", "amount": "2", "price": "40", "total_price": "80" },
    { "ind": "3", "name": "西瓜", "amount": "1", "price": "100", "total_price": "100" }
    ]
}' \
http://localhost:8080/report
