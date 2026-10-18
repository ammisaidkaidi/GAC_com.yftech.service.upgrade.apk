package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.ah;
import com.google.android.material.a;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class i extends e {
    private final TextWatcher d;
    private final TextInputLayout.d e;
    private final TextInputLayout.e f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@ah TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.d = new TextWatcher() { // from class: com.google.android.material.textfield.i.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                i.this.c.setChecked(!i.this.c());
            }
        };
        this.e = new TextInputLayout.d() { // from class: com.google.android.material.textfield.i.2
            @Override // com.google.android.material.textfield.TextInputLayout.d
            public void a(@ah TextInputLayout textInputLayout2) {
                EditText editText = textInputLayout2.getEditText();
                textInputLayout2.setEndIconVisible(true);
                textInputLayout2.setEndIconCheckable(true);
                i.this.c.setChecked(true ^ i.this.c());
                editText.removeTextChangedListener(i.this.d);
                editText.addTextChangedListener(i.this.d);
            }
        };
        this.f = new TextInputLayout.e() { // from class: com.google.android.material.textfield.i.3
            @Override // com.google.android.material.textfield.TextInputLayout.e
            public void a(@ah TextInputLayout textInputLayout2, int i) {
                EditText editText = textInputLayout2.getEditText();
                if (editText == null || i != 1) {
                    return;
                }
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                editText.removeTextChangedListener(i.this.d);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        this.f1460a.setEndIconDrawable(androidx.appcompat.a.a.a.b(this.b, a.g.design_password_eye));
        this.f1460a.setEndIconContentDescription(this.f1460a.getResources().getText(a.m.password_toggle_content_description));
        this.f1460a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.i.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditText editText = i.this.f1460a.getEditText();
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (i.this.c()) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                }
            }
        });
        this.f1460a.a(this.e);
        this.f1460a.a(this.f);
        EditText editText = this.f1460a.getEditText();
        if (a(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        EditText editText = this.f1460a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean a(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }
}
