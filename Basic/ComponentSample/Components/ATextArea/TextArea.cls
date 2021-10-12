
/**
Constructor
Do not call Function in Constructor.
*/
class TextArea()
{
	super();

	//TODO:edit here

}
extends AView;


function TextArea:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function TextArea:onSetTextButtonClick(comp, info)
{
	// textarea 의 텍스트를 셋팅한다.
	this.Textarea1.setText('Set Text Button 을 이용해서 텍스트를 입력하였습니다.');
};

function TextArea:onGetTextButtonClick(comp, info)
{
	// textarea 의 텍스트를 출력한다.
	this.ResultLabel1.setText(this.Textarea1.getText());
};

function TextArea:onAppendTextButtonClick(comp, info)
{
	// textarea 의 텍스트를 추가한다.
	this.Textarea1.appendText('Append Text Button 을 이용해서 텍스트를 추가하였습니다.');
};


function TextArea:onAlignButtonClick(comp, info)
{
	// textarea 의 정렬방식을 설정한다.
	this.Textarea1.setTextAlign(this.AlignSelect.getSelectedItem().value);
};

function TextArea:onSetReadonlyButtonClick(comp, info)
{
	// textarea 의 읽기전용 속성을 적용한다.
	this.Textarea1.setReadOnly((this.ReadonlySelect.getSelectedItem().value == 'true'));
};

function TextArea:onSetEnableButtonClick(comp, info)
{
	// textarea 의 사용여부를 적용한다.
	this.Textarea1.enable((this.EnableSelect.getSelectedItem().value == 'true'));
};

function TextArea:onSetPHButtonClick(comp, info)
{
	// textarea 의 플레이스홀더를 지정한다.
	this.Textarea1.setPlaceHolder('placeholder 입니다.');
};

function TextArea:onGetPHButtonClick(comp, info)
{
	// textarea 의 플레이스홀더를 출력온다.
	this.ResultLabel1.setText(this.Textarea1.getPlaceHolder());

};


