curl \
-X POST \
-H "Content-Type: application/json" \
-o sample-hi.pdf \
-d '{
    "template": "sample-hi.jasper",
    "fileName": "sample-hi",
    "parameters": { "store_number": "5566" },
    "data": [ { "ind": "1", "name": "सेब", "amount": "3", "price": "30", "total_price": "90" },
              { "ind": "2", "name": "संतरा", "amount": "2", "price": "40", "total_price": "80" },
              { "ind": "3", "name": "तरबूज", "amount": "1", "price": "100", "total_price": "100" }]
    }' \
http://localhost:8080/report
