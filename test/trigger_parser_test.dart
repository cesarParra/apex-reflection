import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:test/test.dart';

main() {
  test('Can parse the trigger name', () {
    final triggerBody = '''
    trigger AccountTrigger on Account (before insert) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'AccountTrigger');
  });

  test('Can parse the trigger object', () {
    final triggerBody = '''
    trigger AccountTrigger on Account (before insert) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.objectName, 'Account');
  });

  test('Can parse the trigger event when there is only one event', () {
    final triggerBody = '''
    trigger AccountTrigger on Account (before insert) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.events, ['beforeinsert']);
  });

  test('Can parse all trigger events when there are multiple events', () {
    final triggerBody = '''
    trigger AccountTrigger on Account (before insert, after update) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.events, ['beforeinsert', 'afterupdate']);
  });

  test('Can parse doc comments out of triggers', () {
    final triggerBody = '''
    /**
     * This is a trigger comment.
     */
    trigger AccountTrigger on Account (before insert) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.docComment!.description, 'This is a trigger comment.');
  });

  test('Can parse trigger with bulk keyword', () {
    final triggerBody = '''
    trigger MyTrigger on Account bulk (before insert) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'MyTrigger');
    expect(trigger.objectName, 'Account');
    expect(trigger.events, ['beforeinsert']);
  });

  test('Can parse trigger with bulk keyword and multiple events', () {
    final triggerBody = '''
    trigger MyTrigger on Account bulk (before insert, after update) {
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'MyTrigger');
    expect(trigger.objectName, 'Account');
    expect(trigger.events, ['beforeinsert', 'afterupdate']);
  });

  test('triggers can have members', () {
    final triggerBody = '''
    
trigger AnotherTrigger on Contact (before insert) {
    /**
     * This is a test
     * @param interaction
     *
     * @return
     */
    private Boolean isLive (){
        System.debug('This is a test');
        return true;
    }
}
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'AnotherTrigger');
    expect(trigger.objectName, 'Contact');
    expect(trigger.events, ['beforeinsert']);
  });

  test('trigger with fields', () {
    final triggerBody = '''
    trigger AttachmenTrigger on Attachment (before insert,before update, before delete) {

    ITriggerHandlerImplementation handler = new AttachmentTriggerHandler();
    handler.execute();
}
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'AttachmenTrigger');
    expect(trigger.objectName, 'Attachment');
    expect(trigger.events, ['beforeinsert', 'beforeupdate', 'beforedelete']);
  });

  test('trigger with queries', (){
    final triggerBody = '''
    trigger Account_trigger_vxx on Account bulk (before delete, after delete) {
    Set<Id> accountIds = new Set<Id>();

    for (Call2_vxx__c c : Trigger.new) {
        accountIds.add(c.Account_vxx__c);
    }

    Map<Id, Account> accountsMap = new Map<Id, Account>([
        SELECT  Id
        FROM    Account
        WHERE   Id IN :accountIds]);

    update accountsMap.values();
    }
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'Account_trigger_vxx');
    expect(trigger.objectName, 'Account');
    expect(trigger.events, ['beforedelete', 'afterdelete']);
  });

  test('test with inner method definition', () {
    final triggerBody = '''
    trigger InteractionBeforeInsert on Call2_vxx__c (before insert, before update) {

    Set<Id> accountIds = new Set<Id>();
    Map<Id, Account> accountsMap = new Map<Id, Account>([
            SELECT  Id  FROM  Account WHERE Id IN :accountIds]);

    for(Call2_vxx__c c : Trigger.new){
        Account account = accountsMap.get(c.Account_vxx__c);
        if(!isLive(c)){
            account.Days_to__c = getDiffBusinessDays(account.Date_Di__c, c.Call_Date_vxx__c);
        }
    }
    update accountsMap.values();

    private Boolean isLive (Call2_vxx__c interaction) { return true; }
    // comment below line, for the apexdocs version 3.19.7 to successfully parse the file
    private Integer getDiffBusinessDays(Date startdt, Date enddt) { return 1; }
}
    ''';

    final trigger = TriggerParser.parseFromBody(triggerBody);

    expect(trigger.name, 'InteractionBeforeInsert');
    expect(trigger.objectName, 'Call2_vxx__c');
    expect(trigger.events, ['beforeinsert', 'beforeupdate']);
  });
}
