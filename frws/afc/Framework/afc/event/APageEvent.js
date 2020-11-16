
/**
 * @author asoocool
 */
afc.loadScript("Framework/afc/event/AViewEvent.js");

function APageEvent(acomp)
{
	AViewEvent.call(this, acomp);
	
}
afc.extendsClass(APageEvent, AViewEvent);




//---------------------------------------------------------------------------------------------------
//	Component Event Functions


/* ex)
APageEvent.prototype.click = function()
{
	this._click();
};
*/

//---------------------------------------------------------------------------------------------------