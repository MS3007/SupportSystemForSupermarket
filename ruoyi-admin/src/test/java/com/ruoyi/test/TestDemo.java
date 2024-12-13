package com.ruoyi.test;
import com.ruoyi.RuoYiApplication;
import com.ruoyi.distribute.service.IDistributeresultService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@SpringBootTest
@RunWith(SpringRunner.class)
public class TestDemo {
    @Autowired
    private IDistributeresultService distest;

    @Test
    public void test() {
        System.out.println("Test");
        distest.calculateAllocation();
    }
}
