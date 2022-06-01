public  class SOQLPracRelationship {
    public static void oppdetails() {
        list<opportunity> lstOpps = [select id, stageName, name, account.name, (select id, product2.name, 
        quantity, totalprice, UnitPrice from OpportunityLineItems) from opportunity];
        map<id, decimal> opportunityTotalPriceMap = new map<id, decimal>();
        for (Opportunity eachOp : lstOpps) {
            system.debug('eachop name is ' +eachOp.Name);
            if(!eachOp.OpportunityLineItems.IsEmpty()){
                List<OpportunityLineItem> eachOpLine = eachOp.OpportunityLineItems;
                Decimal opTotalPrice = 0;
                for (OpportunityLineItem pl : eachOpLine){
                    system.debug('product name is ' + pl.Product2.Name);
                    opTotalPrice += pl.TotalPrice;

            }
            
            opportunityTotalPriceMap.put(eachOp.Id, opTotalPrice);
            }   
            }
            system.debug('map of opp id vs total price is ' +opportunityTotalPriceMap);
        } 
    }

