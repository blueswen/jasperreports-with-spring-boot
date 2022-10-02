curl \
-X POST \
-H "Content-Type: application/json" \
-o sample-th.pdf \
-d '{
    "template": "sample-th.jasper",
    "fileName": "sample-th",
    "parameters": {
    "store_number": "5566"
    },
    "data": [
    {
        "ind": "1",
        "name": "แอปเปิ้ล",
        "amount": "3",
        "price": "30",
        "total_price": "90"
    },
    {
        "ind": "2",
        "name": "ส้ม",
        "amount": "2",
        "price": "40",
        "total_price": "80"
    },
    {
        "ind": "3",
        "name": "แตงโม",
        "amount": "1",
        "price": "100",
        "total_price": "100"
    }
    ]
}' \
http://localhost:8080/report
