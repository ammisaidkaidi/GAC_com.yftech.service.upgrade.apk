package androidx.core.n.a;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static final String f510a = "ACCESSIBILITY_CLICKABLE_SPAN_ID";
    private final int b;
    private final d c;
    private final int d;

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public a(int i, d dVar, int i2) {
        this.b = i;
        this.c = dVar;
        this.d = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@ah View view) {
        Bundle bundle = new Bundle();
        bundle.putInt(f510a, this.b);
        this.c.a(this.d, bundle);
    }
}
