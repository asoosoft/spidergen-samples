
/**
Constructor
Do not call Function in Constructor.
*/
class CheckBox()
{

	/*

	:  클래스 내부에 변수를 선언해 사용합니다.
	
	1. 모든 체크 박스 담는 변수 checkBoxes
	2. 선택된 체크 박스만 담는 변수 checkedBoxes

	*/
	
	super();
	
	// 1.
	this.checkBoxes = null;
	// 2.
	this.checkedBoxes = [];

}
extends AView;



function CheckBox*init(context, evtListener)
{
	
	/*

	:  최초 한 번 실행되는 함수입니다.
	   각 체크 박스의 클릭 이벤트를 감지해 checkClickEvent를 호출하는 예제입니다.
	
	1. findCompByClass 함수를 사용해 컴포넌트 객체를 얻기
	   (findCompByGroup 함수를 사용하기 위해서는 각 객체마다 그룹 아이디를 설정해야 하지만,
	    findCompByClass는 설정하지 않아도 사용할 수 있어 좀 더 편리합니다.)
	2. 변수 i 그리고 체크 박스 길이의 값을 갖는 변수 iMax를 선언
	3. 체크 박스의 길이만큼 for문을 돌며, 각 체크 박스에 클릭됐을 때 checkClickEvent를 호출하는 이벤트 리스너 달기
	
	*/

	super.init(context, evtListener);
	
	// 1.
	this.checkBoxes =  this.findCompByClass('ACheckBox');
	
	// 2.
	var i=0, 
		iMax = this.checkBoxes.length;
	
	// 3.
	for(i = 0; i < iMax; i++)
	{
		this.checkBoxes[i].addEventListener('click', this, 'checkClickEvent');
	}
	
};

function CheckBox*checkClickEvent(checkBox, info, e)
{
	
	/*

	:  각 체크 박스에서 클릭 이벤트가 발생할 경우 호출되는 함수입니다.
	   클릭했을 때, 체크 박스를 선택한 건지 해제한 건지를 기준으로 발생 이벤트를 분기합니다.
	   (checkedBoxes에 checkBox가 없는지/있는지를 기준으로, 체크 박스 선택/해제를 판단합니다.)
	
	1. doFindCheckBox(checkBox) 함수를 사용해 클릭 이벤트 발생한 체크 박스가 checkedBoxes 배열에 있는지 확인
	   > 아래 doFindCheckBox(checkBox) 함수 참조
	2. 만약 checkedBoxes에 없다면, 체크 박스를 선택한 경우이기에 checkedBoxes에 클릭 이벤트가 발생한 체크 박스 추가
	3. 만약 checkedBoxes에 있다면, 체크 박스 선택을 해제하는 것이기에 checkedBoxes에서 제거
	
	*/
	
	// 1.
	var findCheck = this.doFindCheckBox(checkBox);

	// 2.
	if(!findCheck.result)
	{
		if(checkBox.getCheck()) this.checkedBoxes.push(checkBox);
	}
	// 3.
	else
	{		
		if(!checkBox.getCheck())
		{
			this.checkedBoxes.splice(findCheck.index, 1);	
		}
	}
	
};

function CheckBox*onAButtonClick(comp, info)
{
	
	/*

	:  전체 선택 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. setCheckedAll(boolean) 메소드를 사용해 한 번에 모든 체크 박스를 선택합니다.
	   > 아래 setCheckedAll(check) 함수 참조
	
	*/
	
	// 1.
	this.setCheckedAll(true);

};

function CheckBox*onAButtonClick1(comp, info)
{
	
	/*

	:  전체 해제 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. setCheckedAll(boolean) 메소드를 사용해 한 번에 모든 체크 박스를 해제합니다.
	   > 아래 setCheckedAll(check) 함수 참조
	2. 체크 목록 textContent 초기화
	
	*/
	
	// 1.
	this.setCheckedAll(false);
	// 2.
	this.lblCheckList.element.textContent = "";

};

function CheckBox*doFindCheckBox(checkBox)
{

	/*
	
	:  선택된 체크 박스만 모아놓은 배열(== checkedBoxes)에 인자로 넘어온 checkBox가 있는지 확인하는 함수입니다.
	   (checkedBoxes에 checkBox가 있다면 체크 박스 선택 해제이고, checkBox가 없다면 체크 박스 선택입니다.)
	
	1. checekdBoxes를 for문으로 돌기 위한 변수들을 선언
	2. checekdBoxes를 for문을 돌며 checkBox가 checkedBoxes에 있는지 확인
	3. checkBox가 checkedBoxes에 있다면 returnValue는 true로 변경, break 함수 종료
	4. 결과값 return
	
	*/
	
	// 1.
	var i = 0,
		imax = this.checkedBoxes.length,
		returnValue = false;
	
	// 2.
	for(i; i < imax; i++)
	{
		// 3.
		if(this.checkedBoxes[i] === checkBox)
		{
			returnValue = true;
			break;
		}
	}
	
	// 4.
	return {result : returnValue, index : i};

};

function CheckBox*setCheckedAll(checked)
{
	
	/*

	:  전체 선택 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. 모든 체크 박스를 for문으로 돌기
	2. setCheck() 함수를 통해 체크 박스 선택으로 설정
	3. 체크 박스에 달아둔 이벤트 리스너를 실행하기 위해, reportEvent() 메소드를 사용해 클릭 이벤트 발생시키기
	
	*/
	
	// 1.	
	for (var checkBox in this.checkBoxes)
	{
		// 2.
		this.checkBoxes[checkBox].setCheck(checked);
		// 3.
		this.checkBoxes[checkBox].reportEvent('click', checked);
	}
	
};

function CheckBox*onbtnCheckListClick()
{
	
	/*

	:  전체 선택 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. checekdBoxes를 for문으로 돌며 체크 목록을 만들기 위한 변수들을 선언
	2. 첫 번째인 경우 빈 스트링을, 첫 번째가 아닌 경우는 쉼표 추가
	3. getText(), getValue() 메소드를 사용해 텍스트를 가져오고, 이를 strList 변수에 추가
	4. setText() 메소드를 사용해 lblCheckList에 텍스트 설정
	
	*/
	
	// 1.
	var strList = '',
		i = 0,
		imax = this.checkedBoxes.length;
	
	for(i ; i < imax ; i++)
	{
		var chkbox = this.checkedBoxes[i];
		
		// 2.	
		strList += i > 0 ? ', ' : '';
		// 3.
		strList += [chkbox.getText(), '(', chkbox.getValue(), ')'].join('') ;
	
	}
	
	// 4.
	this.lblCheckList.setText(strList);
	
};

