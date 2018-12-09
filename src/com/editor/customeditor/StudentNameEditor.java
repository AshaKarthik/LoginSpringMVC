package com.editor.customeditor;

import java.beans.PropertyEditorSupport;

public class StudentNameEditor extends PropertyEditorSupport {
	@Override
	public void setAsText(String studentName) throws IllegalArgumentException {
		if (studentName.startsWith("Ms.") || studentName.startsWith("Mr.")) {
			setValue(studentName);
		} else
			studentName = "Ms." + studentName;
		setValue(studentName);
	}

}
