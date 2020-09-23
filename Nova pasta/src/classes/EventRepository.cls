/**
 * @author liciavereda
 */
 
public virtual class EventRepository {

    virtual
    public List <Event> createEvent (Account account) {
        Event event = new Event();
        
        events.Description = 'Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium';
        events.Subject = 'Apresentação instucional dos produtos Premium';
        events.StartDateTime = account.CreatedDateTime.addDays(1);
        events.EndDateTime = event.StartDateTime.addHours(1);
        events.WhatId = account.Id;
        events.ContactType__c = 'TELEFÔNICO';

        return events;
    }

}