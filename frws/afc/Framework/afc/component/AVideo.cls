
class AVideo()
{
	super();

	//TODO:edit here
	
	//	자신이 포함되어져 있는 프레임웍 이름을 지정합니다.
	this.frwName = 'afc';

}
extends AComponent;

AVideo.CONTEXT = 
{
	//	실제로 구현하고자 하는 컴포넌트의 태그로 변경하십시요.
	tag:'<video data-base="AVideo" data-class="AVideo" class="AVideo-Style" autoplay></video>',

    defStyle: 
    {
    	width:'200px', height:'100px' 
    },
   
    events: ['load']
};

function AVideo*init(context, evtListener)
{
	super.init(context, evtListener);


};

function AVideo*setSource(url)
{
	var ele = this.element;
	if(!ele) return;
	
	if(ele.dm) url = ele.dm.mask(url);
	
	if(url)
	{
		this.setAttr('src', url);
		//this.removeClass('aimage-blank');
	}
	else
	{		
		this.removeAttr('src');
		//this.addClass('aimage-blank');
	}
};

function AVideo*getSource()
{
	if(this.element.dm) return this.element.dm.unmask();
	else return this.getAttr('src');
};

function AVideo*setData(data)
{
	this.setSource(data);
};

function AVideo*getData()
{
	return this.getSource();
};

