/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */
CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	config.enterMode = CKEDITOR.ENTER_BR; //khong chen the P truoc doan text
	config.language = 'en';
	config.toolbar =
		[
		['Source','-','Save','NewPage','Preview','-'],
		['Cut','Copy','Paste','PasteText','PasteFromWord','Undo','Redo'],
		['Image','Table','Smiley','SpecialChar'],
		//'/',
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
		['NumberedList','BulletedList','-','Outdent','Indent','CreateDiv'],	
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['Link','Unlink'],
		//'/',
		['Styles','Format','Font','FontSize'],
		['TextColor','BGColor'],
		['Maximize']
		];
	config.pasteFromWordRemoveFontStyles=false;
	config.pasteFromWordRemoveStyles=false;
	config.filebrowserBrowseUrl = '/scripts/ckfinder/ckfinder.html';
 	config.filebrowserImageBrowseUrl = '/scripts/ckfinder/ckfinder.html?type=Images';
 	config.filebrowserFlashBrowseUrl = '/scripts/ckfinder/ckfinder.html?type=Flash';
 	config.filebrowserUploadUrl = '/scripts/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
 	config.filebrowserImageUploadUrl = '/scripts/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
 	config.filebrowserFlashUploadUrl = '/scripts/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
};
