const {reflect} = require('../../js/apex-reflection-node');
const classBody = `
/**********************************************************
* @class          TriggerService
* @testClass      TriggerService_Test
* @group          core-utils
* @description    Simple Trigger Framework, integrated with <<CodeControl>>.
* 
* To use TriggerService for a given trigger,
* 1.  Build a trigger handler class that extends <<TriggerHelperBase>>, implementing any trigger stages (e.g., beforeInsert, afterUpdate, etc)
*     needed by your trigger. Here is a List<String>.
* 2.  In the trigger, call \`TriggerService.run()\`, passing a new instance of your handler.
*
* \`\`\`
* // TriggerHandler
* public class AccountHandler extends TriggerHelperBase {
*     public override void afterInsert(List<SObject> newList) {
*         // ... do trigger things
*     }
* }
* 
* // Trigger
* trigger AccountTrigger on Account (after insert) {
*     TriggerService.run(new AccountHandler());
* }
* \`\`\`
* 
* Something else \`<but>\` outside.
* 
* @author         Jason Clark
* @date           1/15/22
***********************************************************/
public class ClassWithDescriptionBlock {}
`;

const reflectionResult = reflect(classBody.replace('\r', ''));
console.log(reflectionResult.typeMirror.docComment.descriptionLines);

