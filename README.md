# JasperReports with Spring

Spring Boot app generates PDF report with JasperReport and uses [源真ゴシック (げんしんゴシック)](http://jikasei.me/font/genshin/), which supports Chinese printing, as custom font. This project is maintained by Maven.

Project template is generated by [https://start.spring.io/](https://start.spring.io/).

[jrxml example](https://github.com/Blueswen/jasperreports-with-spring/blob/main/reference/sample.jrxml)

[PDF example](https://github.com/Blueswen/jasperreports-with-spring/blob/main/reference/sample.pdf)

Check more detail in my blog post [JasperReports with Spring](https://blueswen.github.io/2020/11/29/jasperreports-with-spring/).

## Dependencies

### Lib Dependencies

1. Spring Boot 2.3.5
2. JasperReports 6.16.0

### JasperReport Dependencies

1. TIBCO Jaspersoft® Studio 6.16.0
2. Source .jrxml Version: JasperReport 6.13.0
3. Compiler Settings: 6.16.0

## Usage

1. Build and run with docker

    ```bash
    docker-compose up -d
    ```

2. Send http request

    ```bash
    curl \
    -X POST \
    -H "Content-Type: application/json" \
    -o sample.pdf \
    -d '{
        "template": "sample.jasper",
        "fileName": "sample",
        "parameters": {
        "sr": "200503001"
        },
        "data": [
        {
            "ind": "2",
            "name": "蘋果",
            "amount": "3",
            "price": "30",
            "total_price": "90"
        },
        {
            "ind": "2",
            "name": "橘子",
            "amount": "2",
            "price": "40",
            "total_price": "80"
        },
        {
            "ind": "3",
            "name": "西瓜",
            "amount": "1",
            "price": "100",
            "total_price": "100"
        }
        ]
    }' \
    http://localhost:8080/report
    ```

Reference:

1. [Spring Boot with Docker](https://spring.io/guides/gs/spring-boot-docker/)
2. ["mvnw" won't work on docker-pipeline with the "maven" image because docker-pipeline doesn't honor docker image entrypoint](https://issues.jenkins.io/browse/JENKINS-47890)
3. [Custom Font with the Font Extension](https://community.jaspersoft.com/wiki/custom-font-font-extension)
4. [思源真黑體](http://jikasei.me/font/genshin/)
5. [用 Java 產出中文的 JasperReports PDF](http://cw1057.blogspot.com/2012/10/java-jasperreports-pdf.html)
6. [JASPER REPORTS WITH SPRING BOOT](https://github.com/gauravbrills/jasperreportswithspringboot)
7. [Jasper Reports using unavailable fonts](http://poor-developer.blogspot.com/2017/02/jasper-reports-using-unavailable-fonts.html)
8. [jasper综合使用-javabean结合实际业务-解决PDF中文](https://blog.csdn.net/pspr2/article/details/78356835)
9. [Spring Boot 打包 external jar 解決方案](https://medium.com/@webber.cheng/spring-boot-%E6%89%93%E5%8C%85-external-jar-%E8%A7%A3%E6%B1%BA%E6%96%B9%E6%A1%88-292d6e800df5)