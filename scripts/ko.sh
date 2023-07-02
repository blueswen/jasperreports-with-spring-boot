curl \
-X POST \
-H "Content-Type: application/json" \
-o sample-ko.pdf \
-d '{
    "template": "sample-ko.jasper",
    "fileName": "sample-ko",
    "parameters": { "store_number": "5566" },
    "data": [ { "ind": "1", "name": "사과", "amount": "3", "price": "30", "total_price": "90" },
              { "ind": "2", "name": "주황색", "amount": "2", "price": "40", "total_price": "80" },
              { "ind": "3", "name": "수박", "amount": "1", "price": "100", "total_price": "100" } ]
    }' \
http://localhost:8080/report
