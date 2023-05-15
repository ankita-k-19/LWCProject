@isTest
public class AnimalLocatorTest {
    
    
    @istest static void testcallout(){
        
     
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());            
        System.assertEquals(AnimalLocator.getAnimalNameById(1),'chicken', 'The animal is chicken');          
       
    }
    

}