
/**
Constructor
Do not call Function in Constructor.
*/
class ViewLoadEvent()
{
	super();

	//TODO:edit here

}
extends AView;


function ViewLoadEvent:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
	
	alert('init 가 호출되었습니다.');
	

};


function ViewLoadEvent:onInitDone()
{
	
	//TODO:edit here
	
	alert('onInitDone 이 호출되었습니다.');
	
};



function ViewLoadEvent:onWillActive(isFirst)
{
	super.onWillActive(isFirst);
	
	//TODO:edit here
	
	alert('onWillActive 뷰가 활성화되기 바로 전에 호출됩니다.');
	

};


function ViewLoadEvent:onActive(isFirst)
{
	super.onActive(isFirst);
	
	//TODO:edit here
	
	alert('onActive 뷰의 활성화가 시작되면 호출됩니다.');
	

};


function ViewLoadEvent:onActiveDone(isFirst)
{
	super.onActiveDone(isFirst);
	
	//TODO:edit here
	
	alert('onActiveDone 뷰의 활성화가 완료되면 호출됩니다.');
	

};


function ViewLoadEvent:onWillDeactive()
{
	super.onWillDeactive();
	
	//TODO:edit here
	
	alert('onWillDeactive 뷰가 비활성화되기 바로전에 호출됩니다.');
	

};


function ViewLoadEvent:onDeactive()
{
	super.onDeactive();
	
	//TODO:edit here
	
	alert('onDeactive 뷰가 비활성화 시작하면 호출됩니다.');
	

};


function ViewLoadEvent:onDeactiveDone()
{
	super.onDeactiveDone();
	
	//TODO:edit here
	
	alert('onDeactiveDone 뷰가 비활성화가 완료되면 호출됩니다.');
	

};


