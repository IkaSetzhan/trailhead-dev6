@isTest
public class CalloutHWTest {
    @isTest
   private static void testFetchCalloutSuccess() {
       CalloutAssignmentMock mock =  new  CalloutAssignmentMock();
       test.setMock(HttpCalloutMock.class, mock);

       test.startTest();
       HttpResponse response = CalloutAssignment.fetchdata();
       test.stopTest();

       system.assertEquals(200, response.hetstatuscode());

    }
}
