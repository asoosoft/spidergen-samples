
/**
Constructor
Do not call Function in Constructor.
*/
class TextField()
{
	super();

	//TODO:edit here
}
extends AView;


function TextField:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function TextField:onSetTypeButtonClick(comp, info)
{
	// 텍스트필드의 타입을 변경한다.
	this.Text1.setDataType(this.TypeSelect.getSelectedItem().value);
};

function TextField:onGetTypeButtonClick(comp, info)
{
	// 텍스트필드의 타입을 출력한다.
	this.ResultLabel1.setText('텍스트필드의 타입은 ' + this.Text1.getDataType() + ' 입니다.');
};

function TextField:onAlignButtonClick(comp, info)
{
	// 텍스트필드의 정렬방식을 설정한다.
	this.Text1.setTextAlign(this.AlignSelect.getSelectedItem().value);
};

function TextField:onSetTextButtonClick(comp, info)
{
	// 텍스트필드의 텍스트를 셋팅한다.
	this.Text1.setText('Set Text Button 를 이용해서 텍스트를 입력하였습니다.');
};

function TextField:onGetTextButtonClick(comp, info)
{
	// 텍스트필드의 텍스트를 출력한다.
	this.ResultLabel1.setText(this.Text1.getText());
};

function TextField:onSetReadonlyButtonClick(comp, info)
{
	// 텍스트필드의 읽기전용 속성을 적용한다.
	this.Text1.setReadOnly((this.ReadonlySelect.getSelectedItem().value == 'true'));
};

function TextField:onSetEnableButtonClick(comp, info)
{
	// 텍스트필드의 사용여부를 적용한다.
	this.Text1.enable((this.EnableSelect.getSelectedItem().value == 'true'));
};
