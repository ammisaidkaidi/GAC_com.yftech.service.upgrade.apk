package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.a;

/* loaded from: /home/user/work/dex/classes.dex */
class l implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    private final a.e f82a;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public l(a.e eVar) {
        this.f82a = eVar;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.f82a != null) {
            this.f82a.a(i, j);
        }
    }
}
