
/**
 * @author asoocool
 */
afc.loadScript("Framework/afc/event/AViewEvent.js");

function AWindowEvent(acomp)
{
	AViewEvent.call(this, acomp);
	
}
afc.extendsClass(AWindowEvent, AViewEvent);




//---------------------------------------------------------------------------------------------------
//	Component Event Functions


/* ex)
AWindowEvent.prototype.click = function()
{
	this._click();
};
*/

//---------------------------------------------------------------------------------------------------