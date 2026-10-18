package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* loaded from: /home/user/work/dex/classes.dex */
final class y {

    /* renamed from: a, reason: collision with root package name */
    @androidx.annotation.ah
    private TextView f296a;

    @androidx.annotation.ai
    private TextClassifier b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(@androidx.annotation.ah TextView textView) {
        this.f296a = (TextView) androidx.core.m.i.a(textView);
    }

    @androidx.annotation.am(b = 26)
    public void a(@androidx.annotation.ai TextClassifier textClassifier) {
        this.b = textClassifier;
    }

    @androidx.annotation.am(b = 26)
    @androidx.annotation.ah
    public TextClassifier a() {
        if (this.b == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f296a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            return TextClassifier.NO_OP;
        }
        return this.b;
    }
}
