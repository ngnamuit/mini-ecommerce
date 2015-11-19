function accept(id){
	if(id == 1){
		report = "Bạn có muốn xóa hay không?";
	}else if (id == 2){
		report = "Bạn có muốn sửa hay không?";
	}else if (id == 3){
		report = "Bạn có muốn kích hoạt hay không?";
	}
	var xn = confirm(report);
	if(xn == true)
		return true;
	else
		return false;
}
function BrowseServer(){
	// You can use the "CKFinder" class to render CKFinder in a page:
	var finder = new CKFinder();
	finder.basePath = '/ckfinder/';	// The path for the installation of CKFinder (default = "/ckfinder/").
	finder.selectActionFunction = SetFileField();
	finder.popup();
}
function BrowseServerList(functionData){
	// You can use the "CKFinder" class to render CKFinder in a page:
	var finder = new CKFinder();
	finder.basePath = '/ckfinder/';	// The path for the installation of CKFinder (default = "/ckfinder/").
	finder.selectActionFunction = SetFileFieldList;
	finder.selectActionData = functionData;
	finder.popup();
}
// This is a sample function which is called when a file is selected in CKFinder.
function SetFileField(fileUrl){
	document.getElementById( 'linkimages' ).value = fileUrl;
	document.getElementById( 'txtVideo' ).value = fileUrl;
}
function SetFileFieldList(fileUrl, data){
	document.getElementById( data["selectActionData"] ).value = fileUrl;
}
