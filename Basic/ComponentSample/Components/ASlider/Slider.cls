
/**
Constructor
Do not call Function in Constructor.
*/
class Slider()
{
	super();

	//TODO:edit here

}
extends AView;


function Slider:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
	this.onASliderChange(this.Slider1);
	this.showOption();
};

function Slider:onASliderChange(comp, info)
{
	// 슬라이더 값이 변경되면 라벨에 현재 값을 표시한다.
	this.Text1.setText(comp.getValue());
};

function Slider:onText1KeyUp(comp, info)
{
	// 텍스트필드에 값을 입력하면
	var val = comp.getText();
	if(isNaN(val)) return false;
	
	// 해당 값을 슬라이더에 표시한다.
	this.Slider1.setValue(val);
};

function Slider:showOption(){
	// 슬라이더의 옵션값을 표시한다.
	var thisObj = this;
	
	this.ResultLabel1.setHtml(function(){
		return [
			'Slider Min : ' + thisObj.Slider1.getMin(),
			'Slider Max : ' + thisObj.Slider1.getMax(),
			'Slider Step : ' + thisObj.Slider1.getStep()
		].join('<br>');
	});
};
function Slider:onSetOption(comp, info)
{
	// value 값을 입력받고
	var val = this.Text2.getText() || 0;
	if(isNaN(val)) return false;
	
	// 버튼에 따라 입력한 값을 옵션에 저장한다.
	if(comp == this.SetMinButton){
		this.Slider1.setMin(val);
	}
	else if(comp == this.SetMaxButton){
		this.Slider1.setMax(val);
	}
	else if(comp == this.SetStepButton){
		this.Slider1.setStep(val);
	}
	this.showOption();
};
