package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.ArrayList;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class r extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<c> f783a;
    private FrameLayout b;
    private Context c;
    private j d;
    private int e;
    private TabHost.OnTabChangeListener f;
    private c g;
    private boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        @ah
        final String f786a;

        @ah
        final Class<?> b;

        @ai
        final Bundle c;
        d d;

        c(@ah String str, @ah Class<?> cls, @ai Bundle bundle) {
            this.f786a = str;
            this.b = cls;
            this.c = bundle;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class a implements TabHost.TabContentFactory {

        /* renamed from: a, reason: collision with root package name */
        private final Context f784a;

        public a(Context context) {
            this.f784a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f784a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends View.BaseSavedState {
        public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: androidx.fragment.app.r.b.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i) {
                return new b[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        String f785a;

        b(Parcelable parcelable) {
            super(parcelable);
        }

        b(Parcel parcel) {
            super(parcel);
            this.f785a = parcel.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f785a);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f785a + "}";
        }
    }

    @Deprecated
    public r(@ah Context context) {
        super(context, null);
        this.f783a = new ArrayList<>();
        a(context, (AttributeSet) null);
    }

    @Deprecated
    public r(@ah Context context, @ai AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f783a = new ArrayList<>();
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.e = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    private void a(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.b = frameLayout2;
            this.b.setId(this.e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void a(@ah Context context, @ah j jVar) {
        a(context);
        super.setup();
        this.c = context;
        this.d = jVar;
        a();
    }

    @Deprecated
    public void a(@ah Context context, @ah j jVar, int i) {
        a(context);
        super.setup();
        this.c = context;
        this.d = jVar;
        this.e = i;
        a();
        this.b.setId(i);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }

    private void a() {
        if (this.b == null) {
            this.b = (FrameLayout) findViewById(this.e);
            if (this.b != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@ai TabHost.OnTabChangeListener onTabChangeListener) {
        this.f = onTabChangeListener;
    }

    @Deprecated
    public void a(@ah TabHost.TabSpec tabSpec, @ah Class<?> cls, @ai Bundle bundle) {
        tabSpec.setContent(new a(this.c));
        String tag = tabSpec.getTag();
        c cVar = new c(tag, cls, bundle);
        if (this.h) {
            cVar.d = this.d.a(tag);
            if (cVar.d != null && !cVar.d.L()) {
                s a2 = this.d.a();
                a2.d(cVar.d);
                a2.g();
            }
        }
        this.f783a.add(cVar);
        addTab(tabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f783a.size();
        s sVar = null;
        for (int i = 0; i < size; i++) {
            c cVar = this.f783a.get(i);
            cVar.d = this.d.a(cVar.f786a);
            if (cVar.d != null && !cVar.d.L()) {
                if (cVar.f786a.equals(currentTabTag)) {
                    this.g = cVar;
                } else {
                    if (sVar == null) {
                        sVar = this.d.a();
                    }
                    sVar.d(cVar.d);
                }
            }
        }
        this.h = true;
        s a2 = a(currentTabTag, sVar);
        if (a2 != null) {
            a2.g();
            this.d.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = false;
    }

    @Override // android.view.View
    @ah
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f785a = getCurrentTabTag();
        return bVar;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setCurrentTabByTag(bVar.f785a);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@ai String str) {
        s a2;
        if (this.h && (a2 = a(str, (s) null)) != null) {
            a2.g();
        }
        if (this.f != null) {
            this.f.onTabChanged(str);
        }
    }

    @ai
    private s a(@ai String str, @ai s sVar) {
        c a2 = a(str);
        if (this.g != a2) {
            if (sVar == null) {
                sVar = this.d.a();
            }
            if (this.g != null && this.g.d != null) {
                sVar.d(this.g.d);
            }
            if (a2 != null) {
                if (a2.d == null) {
                    a2.d = this.d.j().c(this.c.getClassLoader(), a2.b.getName());
                    a2.d.g(a2.c);
                    sVar.a(this.e, a2.d, a2.f786a);
                } else {
                    sVar.f(a2.d);
                }
            }
            this.g = a2;
        }
        return sVar;
    }

    @ai
    private c a(String str) {
        int size = this.f783a.size();
        for (int i = 0; i < size; i++) {
            c cVar = this.f783a.get(i);
            if (cVar.f786a.equals(str)) {
                return cVar;
            }
        }
        return null;
    }
}
