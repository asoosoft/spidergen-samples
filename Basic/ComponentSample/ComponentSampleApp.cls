
import "Framework/afc/component/AApplication.js"
import "Framework/afc/component/ANavigator.js"
import "Framework/afc/component/APage.js"

/**
Constructor
Do not call Function in Constructor.
*/
class ComponentSampleApp()
{
	super();

	//TODO:edit here

}
extends AApplication;


//---------------------------------------------
// 어플리케이션이 실행되면 가장 먼저 호출되는 함수입니다.
//---------------------------------------------
function ComponentSampleApp:onReady()
{
	super.onReady();

	//페이지 이동 및 전환을 위해 네비게이터를 생성합니다.
	var navigator = new ANavigator();
	
	//네비게이터에 페이지(뷰)를 등록합니다.
	navigator.registerPage('Source/MainView.lay', 'MainView');	
	navigator.registerPage('Views/SubView1.lay', 'SubView1');
	navigator.registerPage('Views/SubView2.lay', 'SubView2');
	navigator.registerPage('Views/SubView3.lay', 'SubView3');
	
	//메인페이지로 이동합니다.
	navigator.goPage('MainView');
	
	//or

	//this.setMainContainer(new APage('main'));
	//this.mainContainer.open('Source/MainView.lay');

	//TODO:edit here

};
