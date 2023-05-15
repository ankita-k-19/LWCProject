@isTest
public class ParkLocatorTest {
    
    @isTest static void testPark(){ 
        
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        string[] parks=ParkLocator.country('India');
        string[] p2=new string[]{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'};
        system.assertEquals(p2, parks);
        
    }

    }