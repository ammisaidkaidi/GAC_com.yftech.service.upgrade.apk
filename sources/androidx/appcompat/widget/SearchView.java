package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ap;
import androidx.appcompat.a;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchView extends aj implements androidx.appcompat.view.c {

    /* renamed from: a, reason: collision with root package name */
    static final boolean f172a = false;
    static final String b = "SearchView";
    static final d q;
    private static final String s = "nm";
    private int[] A;
    private int[] B;
    private final ImageView C;
    private final Drawable D;
    private final int E;
    private final int F;
    private final Intent G;
    private final Intent H;
    private final CharSequence I;
    private b J;
    private a K;
    private c L;
    private View.OnClickListener M;
    private boolean N;
    private boolean O;
    private boolean P;
    private CharSequence Q;
    private boolean R;
    private boolean S;
    private int T;
    private boolean U;
    private CharSequence V;
    private CharSequence W;
    private boolean aa;
    private int ab;
    private Bundle ac;
    private final Runnable ad;
    private Runnable ae;
    private final WeakHashMap<String, Drawable.ConstantState> af;
    private final View.OnClickListener ag;
    private final TextView.OnEditorActionListener ah;
    private final AdapterView.OnItemClickListener ai;
    private final AdapterView.OnItemSelectedListener aj;
    private TextWatcher ak;
    final SearchAutoComplete c;
    final ImageView d;
    final ImageView k;
    final ImageView l;
    final ImageView m;
    View.OnFocusChangeListener n;
    androidx.e.a.a o;
    SearchableInfo p;
    View.OnKeyListener r;
    private final View t;
    private final View u;
    private final View v;
    private final View w;
    private f x;
    private Rect y;
    private Rect z;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        boolean a();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        boolean a(String str);

        boolean b(String str);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        boolean a(int i);

        boolean b(int i);
    }

    static {
        q = Build.VERSION.SDK_INT < 29 ? new d() : null;
    }

    public SearchView(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public SearchView(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, a.b.searchViewStyle);
    }

    public SearchView(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.y = new Rect();
        this.z = new Rect();
        this.A = new int[2];
        this.B = new int[2];
        this.ad = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.g();
            }
        };
        this.ae = new Runnable() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.o instanceof at) {
                    SearchView.this.o.a((Cursor) null);
                }
            }
        };
        this.af = new WeakHashMap<>();
        this.ag = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.d) {
                    SearchView.this.m();
                    return;
                }
                if (view == SearchView.this.l) {
                    SearchView.this.i();
                    return;
                }
                if (view == SearchView.this.k) {
                    SearchView.this.h();
                } else if (view == SearchView.this.m) {
                    SearchView.this.n();
                } else if (view == SearchView.this.c) {
                    SearchView.this.q();
                }
            }
        };
        this.r = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (SearchView.this.p == null) {
                    return false;
                }
                if (SearchView.this.c.isPopupShowing() && SearchView.this.c.getListSelection() != -1) {
                    return SearchView.this.a(view, i2, keyEvent);
                }
                if (SearchView.this.c.a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView.this.a(0, (String) null, SearchView.this.c.getText().toString());
                return true;
            }
        };
        this.ah = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.h();
                return true;
            }
        };
        this.ai = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.a(i2, 0, (String) null);
            }
        };
        this.aj = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.a(i2);
            }
        };
        this.ak = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.b(charSequence);
            }
        };
        ba a2 = ba.a(context, attributeSet, a.m.SearchView, i, 0);
        LayoutInflater.from(context).inflate(a2.g(a.m.SearchView_layout, a.j.abc_search_view), (ViewGroup) this, true);
        this.c = (SearchAutoComplete) findViewById(a.g.search_src_text);
        this.c.setSearchView(this);
        this.t = findViewById(a.g.search_edit_frame);
        this.u = findViewById(a.g.search_plate);
        this.v = findViewById(a.g.submit_area);
        this.d = (ImageView) findViewById(a.g.search_button);
        this.k = (ImageView) findViewById(a.g.search_go_btn);
        this.l = (ImageView) findViewById(a.g.search_close_btn);
        this.m = (ImageView) findViewById(a.g.search_voice_btn);
        this.C = (ImageView) findViewById(a.g.search_mag_icon);
        androidx.core.n.af.a(this.u, a2.a(a.m.SearchView_queryBackground));
        androidx.core.n.af.a(this.v, a2.a(a.m.SearchView_submitBackground));
        this.d.setImageDrawable(a2.a(a.m.SearchView_searchIcon));
        this.k.setImageDrawable(a2.a(a.m.SearchView_goIcon));
        this.l.setImageDrawable(a2.a(a.m.SearchView_closeIcon));
        this.m.setImageDrawable(a2.a(a.m.SearchView_voiceIcon));
        this.C.setImageDrawable(a2.a(a.m.SearchView_searchIcon));
        this.D = a2.a(a.m.SearchView_searchHintIcon);
        bc.a(this.d, getResources().getString(a.k.abc_searchview_description_search));
        this.E = a2.g(a.m.SearchView_suggestionRowLayout, a.j.abc_search_dropdown_item_icons_2line);
        this.F = a2.g(a.m.SearchView_commitIcon, 0);
        this.d.setOnClickListener(this.ag);
        this.l.setOnClickListener(this.ag);
        this.k.setOnClickListener(this.ag);
        this.m.setOnClickListener(this.ag);
        this.c.setOnClickListener(this.ag);
        this.c.addTextChangedListener(this.ak);
        this.c.setOnEditorActionListener(this.ah);
        this.c.setOnItemClickListener(this.ai);
        this.c.setOnItemSelectedListener(this.aj);
        this.c.setOnKeyListener(this.r);
        this.c.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.n != null) {
                    SearchView.this.n.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(a2.a(a.m.SearchView_iconifiedByDefault, true));
        int e2 = a2.e(a.m.SearchView_android_maxWidth, -1);
        if (e2 != -1) {
            setMaxWidth(e2);
        }
        this.I = a2.d(a.m.SearchView_defaultQueryHint);
        this.Q = a2.d(a.m.SearchView_queryHint);
        int a3 = a2.a(a.m.SearchView_android_imeOptions, -1);
        if (a3 != -1) {
            setImeOptions(a3);
        }
        int a4 = a2.a(a.m.SearchView_android_inputType, -1);
        if (a4 != -1) {
            setInputType(a4);
        }
        setFocusable(a2.a(a.m.SearchView_android_focusable, true));
        a2.f();
        this.G = new Intent("android.speech.action.WEB_SEARCH");
        this.G.addFlags(268435456);
        this.G.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.H = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.H.addFlags(268435456);
        this.w = findViewById(this.c.getDropDownAnchor());
        if (this.w != null) {
            this.w.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.5
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView.this.p();
                }
            });
        }
        a(this.N);
        w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.F;
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.p = searchableInfo;
        if (this.p != null) {
            x();
            w();
        }
        this.U = r();
        if (this.U) {
            this.c.setPrivateImeOptions(s);
        }
        a(d());
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setAppSearchData(Bundle bundle) {
        this.ac = bundle;
    }

    public void setImeOptions(int i) {
        this.c.setImeOptions(i);
    }

    public int getImeOptions() {
        return this.c.getImeOptions();
    }

    public void setInputType(int i) {
        this.c.setInputType(i);
    }

    public int getInputType() {
        return this.c.getInputType();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.S || !isFocusable()) {
            return false;
        }
        if (!d()) {
            boolean requestFocus = this.c.requestFocus(i, rect);
            if (requestFocus) {
                a(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.S = true;
        super.clearFocus();
        this.c.clearFocus();
        this.c.setImeVisibility(false);
        this.S = false;
    }

    public void setOnQueryTextListener(b bVar) {
        this.J = bVar;
    }

    public void setOnCloseListener(a aVar) {
        this.K = aVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.n = onFocusChangeListener;
    }

    public void setOnSuggestionListener(c cVar) {
        this.L = cVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.M = onClickListener;
    }

    public CharSequence getQuery() {
        return this.c.getText();
    }

    public void a(CharSequence charSequence, boolean z) {
        this.c.setText(charSequence);
        if (charSequence != null) {
            this.c.setSelection(this.c.length());
            this.W = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        h();
    }

    public void setQueryHint(@androidx.annotation.ai CharSequence charSequence) {
        this.Q = charSequence;
        w();
    }

    @androidx.annotation.ai
    public CharSequence getQueryHint() {
        if (this.Q != null) {
            return this.Q;
        }
        if (this.p != null && this.p.getHintId() != 0) {
            return getContext().getText(this.p.getHintId());
        }
        return this.I;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.N == z) {
            return;
        }
        this.N = z;
        a(z);
        w();
    }

    public boolean c() {
        return this.N;
    }

    public void setIconified(boolean z) {
        if (z) {
            i();
        } else {
            m();
        }
    }

    public boolean d() {
        return this.O;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.P = z;
        a(d());
    }

    public boolean e() {
        return this.P;
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.R = z;
        if (this.o instanceof at) {
            ((at) this.o).a(z ? 2 : 1);
        }
    }

    public boolean f() {
        return this.R;
    }

    public void setSuggestionsAdapter(androidx.e.a.a aVar) {
        this.o = aVar;
        this.c.setAdapter(this.o);
    }

    public androidx.e.a.a getSuggestionsAdapter() {
        return this.o;
    }

    public void setMaxWidth(int i) {
        this.T = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.T;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.View
    public void onMeasure(int i, int i2) {
        if (d()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            size = this.T > 0 ? Math.min(this.T, size) : Math.min(getPreferredWidth(), size);
        } else if (mode != 0) {
            if (mode == 1073741824 && this.T > 0) {
                size = Math.min(this.T, size);
            }
        } else {
            size = this.T > 0 ? this.T : getPreferredWidth();
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, androidx.d.c.b.a.b.b), View.MeasureSpec.makeMeasureSpec(size2, androidx.d.c.b.a.b.b));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.aj, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            a(this.c, this.y);
            this.z.set(this.y.left, 0, this.y.right, i4 - i2);
            if (this.x == null) {
                this.x = new f(this.z, this.y, this.c);
                setTouchDelegate(this.x);
            } else {
                this.x.a(this.z, this.y);
            }
        }
    }

    private void a(View view, Rect rect) {
        view.getLocationInWindow(this.A);
        getLocationInWindow(this.B);
        int i = this.A[1] - this.B[1];
        int i2 = this.A[0] - this.B[0];
        rect.set(i2, i, view.getWidth() + i2, view.getHeight() + i);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(a.e.abc_search_view_preferred_width);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(a.e.abc_search_view_preferred_height);
    }

    private void a(boolean z) {
        this.O = z;
        int i = 8;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.c.getText());
        this.d.setVisibility(i2);
        b(z2);
        this.t.setVisibility(z ? 8 : 0);
        if (this.C.getDrawable() != null && !this.N) {
            i = 0;
        }
        this.C.setVisibility(i);
        u();
        c(z2 ? false : true);
        t();
    }

    private boolean r() {
        if (this.p != null && this.p.getVoiceSearchEnabled()) {
            Intent intent = null;
            if (this.p.getVoiceSearchLaunchWebSearch()) {
                intent = this.G;
            } else if (this.p.getVoiceSearchLaunchRecognizer()) {
                intent = this.H;
            }
            return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
        }
        return false;
    }

    private boolean s() {
        return (this.P || this.U) && !d();
    }

    private void b(boolean z) {
        this.k.setVisibility((this.P && s() && hasFocus() && (z || !this.U)) ? 0 : 8);
    }

    private void t() {
        this.v.setVisibility((s() && (this.k.getVisibility() == 0 || this.m.getVisibility() == 0)) ? 0 : 8);
    }

    private void u() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.c.getText());
        if (!z2 && (!this.N || this.aa)) {
            z = false;
        }
        this.l.setVisibility(z ? 0 : 8);
        Drawable drawable = this.l.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void v() {
        post(this.ad);
    }

    void g() {
        int[] iArr = this.c.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.u.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.v.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.ad);
        post(this.ae);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    boolean a(View view, int i, KeyEvent keyEvent) {
        if (this.p != null && this.o != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i == 66 || i == 84 || i == 61) {
                return a(this.c.getListSelection(), 0, (String) null);
            }
            if (i == 21 || i == 22) {
                this.c.setSelection(i == 21 ? 0 : this.c.length());
                this.c.setListSelection(0);
                this.c.clearListSelection();
                this.c.c();
                return true;
            }
            if (i != 19 || this.c.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    private CharSequence c(CharSequence charSequence) {
        if (!this.N || this.D == null) {
            return charSequence;
        }
        int textSize = (int) (this.c.getTextSize() * 1.25d);
        this.D.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.D), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private void w() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.c;
        if (queryHint == null) {
            queryHint = com.yftech.service.upgrade.a.d;
        }
        searchAutoComplete.setHint(c(queryHint));
    }

    private void x() {
        this.c.setThreshold(this.p.getSuggestThreshold());
        this.c.setImeOptions(this.p.getImeOptions());
        int inputType = this.p.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.p.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.c.setInputType(inputType);
        if (this.o != null) {
            this.o.a((Cursor) null);
        }
        if (this.p.getSuggestAuthority() != null) {
            this.o = new at(getContext(), this, this.p, this.af);
            this.c.setAdapter(this.o);
            ((at) this.o).a(this.R ? 2 : 1);
        }
    }

    private void c(boolean z) {
        int i;
        if (this.U && !d() && z) {
            i = 0;
            this.k.setVisibility(8);
        } else {
            i = 8;
        }
        this.m.setVisibility(i);
    }

    void b(CharSequence charSequence) {
        Editable text = this.c.getText();
        this.W = text;
        boolean z = !TextUtils.isEmpty(text);
        b(z);
        c(z ? false : true);
        u();
        t();
        if (this.J != null && !TextUtils.equals(charSequence, this.V)) {
            this.J.b(charSequence.toString());
        }
        this.V = charSequence.toString();
    }

    void h() {
        Editable text = this.c.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.J == null || !this.J.a(text.toString())) {
            if (this.p != null) {
                a(0, (String) null, text.toString());
            }
            this.c.setImeVisibility(false);
            y();
        }
    }

    private void y() {
        this.c.dismissDropDown();
    }

    void i() {
        if (TextUtils.isEmpty(this.c.getText())) {
            if (this.N) {
                if (this.K == null || !this.K.a()) {
                    clearFocus();
                    a(true);
                    return;
                }
                return;
            }
            return;
        }
        this.c.setText(com.yftech.service.upgrade.a.d);
        this.c.requestFocus();
        this.c.setImeVisibility(true);
    }

    void m() {
        a(false);
        this.c.requestFocus();
        this.c.setImeVisibility(true);
        if (this.M != null) {
            this.M.onClick(this);
        }
    }

    void n() {
        if (this.p == null) {
            return;
        }
        SearchableInfo searchableInfo = this.p;
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(a(this.G, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(b(this.H, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w(b, "Could not find voice search activity");
        }
    }

    void o() {
        a(d());
        v();
        if (this.c.hasFocus()) {
            q();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        v();
    }

    @Override // androidx.appcompat.view.c
    public void b() {
        a(com.yftech.service.upgrade.a.d, false);
        clearFocus();
        a(true);
        this.c.setImeOptions(this.ab);
        this.aa = false;
    }

    @Override // androidx.appcompat.view.c
    public void a() {
        if (this.aa) {
            return;
        }
        this.aa = true;
        this.ab = this.c.getImeOptions();
        this.c.setImeOptions(this.ab | 33554432);
        this.c.setText(com.yftech.service.upgrade.a.d);
        setIconified(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class e extends androidx.f.a.a {
        public static final Parcelable.Creator<e> CREATOR = new Parcelable.ClassLoaderCreator<e>() { // from class: androidx.appcompat.widget.SearchView.e.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new e(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e[] newArray(int i) {
                return new e[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        boolean f186a;

        e(Parcelable parcelable) {
            super(parcelable);
        }

        public e(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f186a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f186a));
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f186a + "}";
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        e eVar = new e(super.onSaveInstanceState());
        eVar.f186a = d();
        return eVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.a());
        a(eVar.f186a);
        requestLayout();
    }

    void p() {
        int i;
        if (this.w.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.u.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = bg.a(this);
            int dimensionPixelSize = this.N ? resources.getDimensionPixelSize(a.e.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(a.e.abc_dropdownitem_text_padding_left) : 0;
            this.c.getDropDownBackground().getPadding(rect);
            if (a2) {
                i = -rect.left;
            } else {
                i = paddingLeft - (rect.left + dimensionPixelSize);
            }
            this.c.setDropDownHorizontalOffset(i);
            this.c.setDropDownWidth((((this.w.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    boolean a(int i, int i2, String str) {
        if (this.L != null && this.L.b(i)) {
            return false;
        }
        b(i, 0, null);
        this.c.setImeVisibility(false);
        y();
        return true;
    }

    boolean a(int i) {
        if (this.L != null && this.L.a(i)) {
            return false;
        }
        e(i);
        return true;
    }

    private void e(int i) {
        Editable text = this.c.getText();
        Cursor c2 = this.o.c();
        if (c2 == null) {
            return;
        }
        if (c2.moveToPosition(i)) {
            CharSequence b2 = this.o.b(c2);
            if (b2 != null) {
                setQuery(b2);
                return;
            } else {
                setQuery(text);
                return;
            }
        }
        setQuery(text);
    }

    private boolean b(int i, int i2, String str) {
        Cursor c2 = this.o.c();
        if (c2 == null || !c2.moveToPosition(i)) {
            return false;
        }
        a(a(c2, i2, str));
        return true;
    }

    private void a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e2) {
            Log.e(b, "Failed launch activity: " + intent, e2);
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.c.setText(charSequence);
        this.c.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    void a(int i, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i, str));
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.W);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.ac != null) {
            intent.putExtra("app_data", this.ac);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.p.getSearchActivity());
        return intent;
    }

    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, androidx.d.c.b.a.b.b);
        Bundle bundle = new Bundle();
        if (this.ac != null) {
            bundle.putParcelable("app_data", this.ac);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent a(Cursor cursor, int i, String str) {
        int i2;
        String a2;
        try {
            String a3 = at.a(cursor, "suggest_intent_action");
            if (a3 == null) {
                a3 = this.p.getSuggestIntentAction();
            }
            if (a3 == null) {
                a3 = "android.intent.action.SEARCH";
            }
            String str2 = a3;
            String a4 = at.a(cursor, "suggest_intent_data");
            if (a4 == null) {
                a4 = this.p.getSuggestIntentData();
            }
            if (a4 != null && (a2 = at.a(cursor, "suggest_intent_data_id")) != null) {
                a4 = a4 + "/" + Uri.encode(a2);
            }
            return a(str2, a4 == null ? null : Uri.parse(a4), at.a(cursor, "suggest_intent_extra_data"), at.a(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e2) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException unused) {
                i2 = -1;
            }
            Log.w(b, "Search suggestions cursor at row " + i2 + " returned exception.", e2);
            return null;
        }
    }

    void q() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.c.refreshAutoCompleteResults();
        } else {
            q.a(this.c);
            q.b(this.c);
        }
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class f extends TouchDelegate {

        /* renamed from: a, reason: collision with root package name */
        private final View f187a;
        private final Rect b;
        private final Rect c;
        private final Rect d;
        private final int e;
        private boolean f;

        public f(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.b = new Rect();
            this.d = new Rect();
            this.c = new Rect();
            a(rect, rect2);
            this.f187a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.b.set(rect);
            this.d.set(rect);
            this.d.inset(-this.e, -this.e);
            this.c.set(rect2);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            boolean z2 = true;
            switch (motionEvent.getAction()) {
                case 0:
                    if (this.b.contains(x, y)) {
                        this.f = true;
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                case 1:
                case 2:
                    z = this.f;
                    if (z && !this.d.contains(x, y)) {
                        z2 = false;
                        break;
                    }
                    break;
                case 3:
                    z = this.f;
                    this.f = false;
                    break;
                default:
                    z = false;
                    break;
            }
            if (!z) {
                return false;
            }
            if (z2 && !this.c.contains(x, y)) {
                motionEvent.setLocation(this.f187a.getWidth() / 2, this.f187a.getHeight() / 2);
            } else {
                motionEvent.setLocation(x - this.c.left, y - this.c.top);
            }
            return this.f187a.dispatchTouchEvent(motionEvent);
        }
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SearchAutoComplete extends androidx.appcompat.widget.e {

        /* renamed from: a, reason: collision with root package name */
        final Runnable f183a;
        private int b;
        private SearchView c;
        private boolean d;

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, a.b.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f183a = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.b();
                }
            };
            this.b = getThreshold();
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        void setSearchView(SearchView searchView) {
            this.c = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.b = i;
        }

        boolean a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.c.hasFocus() && getVisibility() == 0) {
                this.d = true;
                if (SearchView.a(getContext())) {
                    c();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.c.o();
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.b <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.c.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        @Override // androidx.appcompat.widget.e, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.d) {
                removeCallbacks(this.f183a);
                post(this.f183a);
            }
            return onCreateInputConnection;
        }

        void b() {
            if (this.d) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.d = false;
            }
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.d = false;
                removeCallbacks(this.f183a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.d = false;
                    removeCallbacks(this.f183a);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.d = true;
            }
        }

        void c() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.q.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private Method f185a;
        private Method b;
        private Method c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        d() {
            this.f185a = null;
            this.b = null;
            this.c = null;
            a();
            try {
                this.f185a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f185a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                this.b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                this.c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            a();
            if (this.f185a != null) {
                try {
                    this.f185a.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            a();
            if (this.b != null) {
                try {
                    this.b.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            a();
            if (this.c != null) {
                try {
                    this.c.invoke(autoCompleteTextView, true);
                } catch (Exception unused) {
                }
            }
        }

        private static void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }
}
