import com.jvhuaxia.factory.dao.*;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.NewsService;
import com.jvhuaxia.factory.service.ProductTypeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations = {"classpath:spring/*"}) //加载配置文件
public class TestSpring {
    @Autowired
    AdminDao adminDao;
    @Autowired
    AboutDao aboutDao;

    @Autowired
    NewsDao newsDao;

    @Autowired
    NewsService newsService;

    @Autowired
    ProductTypeDao productTypeDao;


    @Autowired
    ProductTypeService productTypeService;

    @Autowired
    ProductDao productDao;

    @Test
    @Rollback(value = false)
    @Transactional
    public void testLocalDataTime() {
        aboutDao.selectAllAbout();
    }

    @Test
    @Rollback(value = false)
    @Transactional
    public void test() {
        System.out.println(productTypeService.udpate(new ProductType(2, "大白炽灯", 1, 0)));
    }


    @Test
    @Rollback(value = false)
    @Transactional
    public void test1() {
        newsService.addClick(1);
    }
}
