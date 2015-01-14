package com.spring.jdbctraining.model;





import java.beans.PropertyEditorSupport;


public class StudentNameEditor extends PropertyEditorSupport {


	@Override
	public void setAsText(String name) throws IllegalArgumentException {

		if ((name.contains("Mr")) || (name.contains("Mrs")) ) {

			setValue(name);

		}
		else
		{
			name="Mr. "+name;
			setValue(name);
		}

	}

	/*@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Properties props = new Properties();
		if (text != null) {
			try {
				// Must use the ISO-8859-1 encoding because Properties.load(stream) expects it.
				props.load(new ByteArrayInputStream(text.getBytes("ISO-8859-1")));
			}
			catch (IOException ex) {
				// Should never happen.
				throw new IllegalArgumentException(
						"Failed to parse [" + text + "] into Properties", ex);
			}
		}
		setValue(props);
	}*/

}
