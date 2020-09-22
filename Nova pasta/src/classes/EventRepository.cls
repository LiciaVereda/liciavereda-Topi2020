/**
 * @author liciavereda
 */
 

public virtual class EventRepository {

    virtual
    public List <Event> createEvent (SObject Object){
        List<Event> events = newEvent();
        for(List<Event> events: events){
            this.events.Description = 'Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium';
            this.events.Subject = 'Apresentação instucional dos produtos Premium';
            this.events.StartDateTime = SObjects.CreatedById.addDays(1);
            this.events.EndDateTime= SObjects.CreatedById.addHours(1);
            this.events.WhatId = SObjects.OwnerId;
            this.events.ContactType__c = 'TELEFÔNICO';

        }
       
        insert events ;
        return events;
    }

}