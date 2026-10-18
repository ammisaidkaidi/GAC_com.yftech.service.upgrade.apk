package androidx.k.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.core.graphics.h;
import androidx.core.n.af;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class i extends androidx.k.b.a.h {

    /* renamed from: a, reason: collision with root package name */
    static final String f930a = "VectorDrawableCompat";
    static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    private static final String c = "clip-path";
    private static final String e = "group";
    private static final String f = "path";
    private static final String g = "vector";
    private static final int h = 0;
    private static final int i = 1;
    private static final int j = 2;
    private static final int k = 0;
    private static final int l = 1;
    private static final int m = 2;
    private static final int n = 2048;
    private static final boolean o = false;
    private g p;
    private PorterDuffColorFilter q;
    private ColorFilter r;
    private boolean s;
    private boolean t;
    private Drawable.ConstantState u;
    private final float[] v;
    private final Matrix w;
    private final Rect x;

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i2) {
        super.setChangingConfigurations(i2);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i2, PorterDuff.Mode mode) {
        super.setColorFilter(i2, mode);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i3, int i4, int i5) {
        super.setHotspotBounds(i2, i3, i4, i5);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    i() {
        this.t = true;
        this.v = new float[9];
        this.w = new Matrix();
        this.x = new Rect();
        this.p = new g();
    }

    i(@ah g gVar) {
        this.t = true;
        this.v = new float[9];
        this.w = new Matrix();
        this.x = new Rect();
        this.p = gVar;
        this.q = a(this.q, gVar.c, gVar.d);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.d != null) {
            this.d.mutate();
            return this;
        }
        if (!this.s && super.mutate() == this) {
            this.p = new g(this.p);
            this.s = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a(String str) {
        return this.p.b.k.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.d != null && Build.VERSION.SDK_INT >= 24) {
            return new h(this.d.getConstantState());
        }
        this.p.f934a = getChangingConfigurations();
        return this.p;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.d != null) {
            this.d.draw(canvas);
            return;
        }
        copyBounds(this.x);
        if (this.x.width() <= 0 || this.x.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.r == null ? this.q : this.r;
        canvas.getMatrix(this.w);
        this.w.getValues(this.v);
        float abs = Math.abs(this.v[0]);
        float abs2 = Math.abs(this.v[4]);
        float abs3 = Math.abs(this.v[1]);
        float abs4 = Math.abs(this.v[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (this.x.width() * abs));
        int min2 = Math.min(2048, (int) (this.x.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.x.left, this.x.top);
        if (b()) {
            canvas.translate(this.x.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.x.offsetTo(0, 0);
        this.p.b(min, min2);
        if (!this.t) {
            this.p.a(min, min2);
        } else if (!this.p.b()) {
            this.p.a(min, min2);
            this.p.c();
        }
        this.p.a(canvas, colorFilter, this.x);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.c(this.d);
        }
        return this.p.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.d != null) {
            this.d.setAlpha(i2);
        } else if (this.p.b.getRootAlpha() != i2) {
            this.p.b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.d != null) {
            this.d.setColorFilter(colorFilter);
        } else {
            this.r = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.e(this.d);
        }
        return this.r;
    }

    PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i2) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, colorStateList);
            return;
        }
        g gVar = this.p;
        if (gVar.c != colorStateList) {
            gVar.c = colorStateList;
            this.q = a(this.q, colorStateList, gVar.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, mode);
            return;
        }
        g gVar = this.p;
        if (gVar.d != mode) {
            gVar.d = mode;
            this.q = a(this.q, gVar.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (this.d != null) {
            return this.d.isStateful();
        }
        return super.isStateful() || (this.p != null && (this.p.d() || (this.p.c != null && this.p.c.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.d != null) {
            return this.d.setState(iArr);
        }
        boolean z = false;
        g gVar = this.p;
        if (gVar.c != null && gVar.d != null) {
            this.q = a(this.q, gVar.c, gVar.d);
            invalidateSelf();
            z = true;
        }
        if (!gVar.d() || !gVar.a(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.d != null) {
            return this.d.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.d != null) {
            return this.d.getIntrinsicWidth();
        }
        return (int) this.p.b.d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.d != null) {
            return this.d.getIntrinsicHeight();
        }
        return (int) this.p.b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.d == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.d(this.d);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.b(this.d);
        }
        return this.p.e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, z);
        } else {
            this.p.e = z;
        }
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public float a() {
        if (this.p == null || this.p.b == null || this.p.b.d == 0.0f || this.p.b.e == 0.0f || this.p.b.g == 0.0f || this.p.b.f == 0.0f) {
            return 1.0f;
        }
        float f2 = this.p.b.d;
        float f3 = this.p.b.e;
        return Math.min(this.p.b.f / f2, this.p.b.g / f3);
    }

    @ai
    public static i a(@ah Resources resources, @q int i2, @ai Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.d = androidx.core.b.b.g.a(resources, i2, theme);
            iVar.u = new h(iVar.d.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return a(resources, xml, asAttributeSet, theme);
        } catch (IOException e2) {
            Log.e(f930a, "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e(f930a, "parser error", e3);
            return null;
        }
    }

    public static i a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    static int a(int i2, float f2) {
        return (i2 & af.r) | (((int) (Color.alpha(i2) * f2)) << 24);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (this.d != null) {
            this.d.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        g gVar = this.p;
        gVar.b = new f();
        TypedArray a2 = androidx.core.b.b.h.a(resources, theme, attributeSet, androidx.k.b.a.a.f918a);
        a(a2, xmlPullParser, theme);
        a2.recycle();
        gVar.f934a = getChangingConfigurations();
        gVar.l = true;
        b(resources, xmlPullParser, attributeSet, theme);
        this.q = a(this.q, gVar.c, gVar.d);
    }

    private static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        g gVar = this.p;
        f fVar = gVar.b;
        gVar.d = a(androidx.core.b.b.h.a(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList a2 = androidx.core.b.b.h.a(typedArray, xmlPullParser, theme, "tint", 1);
        if (a2 != null) {
            gVar.c = a2;
        }
        gVar.e = androidx.core.b.b.h.a(typedArray, xmlPullParser, "autoMirrored", 5, gVar.e);
        fVar.f = androidx.core.b.b.h.a(typedArray, xmlPullParser, "viewportWidth", 7, fVar.f);
        fVar.g = androidx.core.b.b.h.a(typedArray, xmlPullParser, "viewportHeight", 8, fVar.g);
        if (fVar.f <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (fVar.g <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        fVar.d = typedArray.getDimension(3, fVar.d);
        fVar.e = typedArray.getDimension(2, fVar.e);
        if (fVar.d <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (fVar.e <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        fVar.setAlpha(androidx.core.b.b.h.a(typedArray, xmlPullParser, "alpha", 4, fVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            fVar.i = string;
            fVar.k.put(string, fVar);
        }
    }

    private void b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        g gVar = this.p;
        f fVar = gVar.b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(fVar.c);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) arrayDeque.peek();
                if (f.equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.b.add(bVar);
                    if (bVar.getPathName() != null) {
                        fVar.k.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    gVar.f934a = bVar.p | gVar.f934a;
                } else if (c.equals(name)) {
                    a aVar = new a();
                    aVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.b.add(aVar);
                    if (aVar.getPathName() != null) {
                        fVar.k.put(aVar.getPathName(), aVar);
                    }
                    gVar.f934a = aVar.p | gVar.f934a;
                } else if (e.equals(name)) {
                    c cVar2 = new c();
                    cVar2.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.b.add(cVar2);
                    arrayDeque.push(cVar2);
                    if (cVar2.getGroupName() != null) {
                        fVar.k.put(cVar2.getGroupName(), cVar2);
                    }
                    gVar.f934a = cVar2.e | gVar.f934a;
                }
            } else if (eventType == 3 && e.equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private void a(c cVar, int i2) {
        String str = com.yftech.service.upgrade.a.d;
        for (int i3 = 0; i3 < i2; i3++) {
            str = str + "    ";
        }
        Log.v(f930a, str + "current group is :" + cVar.getGroupName() + " rotation is " + cVar.c);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("matrix is :");
        sb.append(cVar.getLocalMatrix().toString());
        Log.v(f930a, sb.toString());
        for (int i4 = 0; i4 < cVar.b.size(); i4++) {
            d dVar = cVar.b.get(i4);
            if (dVar instanceof c) {
                a((c) dVar, i2 + 1);
            } else {
                ((e) dVar).a(i2 + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.t = z;
    }

    private boolean b() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.i(this) == 1;
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.d != null) {
            this.d.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        if (this.d != null) {
            return this.d.getChangingConfigurations();
        }
        return this.p.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.d != null) {
            this.d.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j2) {
        if (this.d != null) {
            this.d.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.d != null) {
            return this.d.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        if (this.d != null) {
            this.d.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @am(a = 24)
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f935a;

        public h(Drawable.ConstantState constantState) {
            this.f935a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i();
            iVar.d = (VectorDrawable) this.f935a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.d = (VectorDrawable) this.f935a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.d = (VectorDrawable) this.f935a.newDrawable(resources, theme);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f935a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f935a.getChangingConfigurations();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class g extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        int f934a;
        f b;
        ColorStateList c;
        PorterDuff.Mode d;
        boolean e;
        Bitmap f;
        int[] g;
        ColorStateList h;
        PorterDuff.Mode i;
        int j;
        boolean k;
        boolean l;
        Paint m;

        public g(g gVar) {
            this.c = null;
            this.d = i.b;
            if (gVar != null) {
                this.f934a = gVar.f934a;
                this.b = new f(gVar.b);
                if (gVar.b.b != null) {
                    this.b.b = new Paint(gVar.b.b);
                }
                if (gVar.b.f933a != null) {
                    this.b.f933a = new Paint(gVar.b.f933a);
                }
                this.c = gVar.c;
                this.d = gVar.d;
                this.e = gVar.e;
            }
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f, (Rect) null, rect, a(colorFilter));
        }

        public boolean a() {
            return this.b.getRootAlpha() < 255;
        }

        public Paint a(ColorFilter colorFilter) {
            if (!a() && colorFilter == null) {
                return null;
            }
            if (this.m == null) {
                this.m = new Paint();
                this.m.setFilterBitmap(true);
            }
            this.m.setAlpha(this.b.getRootAlpha());
            this.m.setColorFilter(colorFilter);
            return this.m;
        }

        public void a(int i, int i2) {
            this.f.eraseColor(0);
            this.b.a(new Canvas(this.f), i, i2, (ColorFilter) null);
        }

        public void b(int i, int i2) {
            if (this.f == null || !c(i, i2)) {
                this.f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.l = true;
            }
        }

        public boolean c(int i, int i2) {
            return i == this.f.getWidth() && i2 == this.f.getHeight();
        }

        public boolean b() {
            return !this.l && this.h == this.c && this.i == this.d && this.k == this.e && this.j == this.b.getRootAlpha();
        }

        public void c() {
            this.h = this.c;
            this.i = this.d;
            this.j = this.b.getRootAlpha();
            this.k = this.e;
            this.l = false;
        }

        public g() {
            this.c = null;
            this.d = i.b;
            this.b = new f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @ah
        public Drawable newDrawable() {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @ah
        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f934a;
        }

        public boolean d() {
            return this.b.a();
        }

        public boolean a(int[] iArr) {
            boolean a2 = this.b.a(iArr);
            this.l |= a2;
            return a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f {
        private static final Matrix n = new Matrix();

        /* renamed from: a, reason: collision with root package name */
        Paint f933a;
        Paint b;
        final c c;
        float d;
        float e;
        float f;
        float g;
        int h;
        String i;
        Boolean j;
        final androidx.c.a<String, Object> k;
        private final Path l;
        private final Path m;
        private final Matrix o;
        private PathMeasure p;
        private int q;

        private static float a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        public f() {
            this.o = new Matrix();
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 255;
            this.i = null;
            this.j = null;
            this.k = new androidx.c.a<>();
            this.c = new c();
            this.l = new Path();
            this.m = new Path();
        }

        public void setRootAlpha(int i) {
            this.h = i;
        }

        public int getRootAlpha() {
            return this.h;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public f(f fVar) {
            this.o = new Matrix();
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 255;
            this.i = null;
            this.j = null;
            this.k = new androidx.c.a<>();
            this.c = new c(fVar.c, this.k);
            this.l = new Path(fVar.l);
            this.m = new Path(fVar.m);
            this.d = fVar.d;
            this.e = fVar.e;
            this.f = fVar.f;
            this.g = fVar.g;
            this.q = fVar.q;
            this.h = fVar.h;
            this.i = fVar.i;
            if (fVar.i != null) {
                this.k.put(fVar.i, this);
            }
            this.j = fVar.j;
        }

        private void a(c cVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            cVar.f932a.set(matrix);
            cVar.f932a.preConcat(cVar.d);
            canvas.save();
            for (int i3 = 0; i3 < cVar.b.size(); i3++) {
                d dVar = cVar.b.get(i3);
                if (dVar instanceof c) {
                    a((c) dVar, cVar.f932a, canvas, i, i2, colorFilter);
                } else if (dVar instanceof e) {
                    a(cVar, (e) dVar, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        public void a(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            a(this.c, n, canvas, i, i2, colorFilter);
        }

        private void a(c cVar, e eVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f;
            float f2 = i2 / this.g;
            float min = Math.min(f, f2);
            Matrix matrix = cVar.f932a;
            this.o.set(matrix);
            this.o.postScale(f, f2);
            float a2 = a(matrix);
            if (a2 == 0.0f) {
                return;
            }
            eVar.a(this.l);
            Path path = this.l;
            this.m.reset();
            if (eVar.a()) {
                this.m.setFillType(eVar.o == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.m.addPath(path, this.o);
                canvas.clipPath(this.m);
                return;
            }
            b bVar = (b) eVar;
            if (bVar.f != 0.0f || bVar.g != 1.0f) {
                float f3 = (bVar.f + bVar.h) % 1.0f;
                float f4 = (bVar.g + bVar.h) % 1.0f;
                if (this.p == null) {
                    this.p = new PathMeasure();
                }
                this.p.setPath(this.l, false);
                float length = this.p.getLength();
                float f5 = f3 * length;
                float f6 = f4 * length;
                path.reset();
                if (f5 > f6) {
                    this.p.getSegment(f5, length, path, true);
                    this.p.getSegment(0.0f, f6, path, true);
                } else {
                    this.p.getSegment(f5, f6, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.m.addPath(path, this.o);
            if (bVar.c.e()) {
                androidx.core.b.b.b bVar2 = bVar.c;
                if (this.b == null) {
                    this.b = new Paint(1);
                    this.b.setStyle(Paint.Style.FILL);
                }
                Paint paint = this.b;
                if (bVar2.c()) {
                    Shader a3 = bVar2.a();
                    a3.setLocalMatrix(this.o);
                    paint.setShader(a3);
                    paint.setAlpha(Math.round(bVar.e * 255.0f));
                } else {
                    paint.setShader(null);
                    paint.setAlpha(255);
                    paint.setColor(i.a(bVar2.b(), bVar.e));
                }
                paint.setColorFilter(colorFilter);
                this.m.setFillType(bVar.o == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.m, paint);
            }
            if (bVar.f931a.e()) {
                androidx.core.b.b.b bVar3 = bVar.f931a;
                if (this.f933a == null) {
                    this.f933a = new Paint(1);
                    this.f933a.setStyle(Paint.Style.STROKE);
                }
                Paint paint2 = this.f933a;
                if (bVar.j != null) {
                    paint2.setStrokeJoin(bVar.j);
                }
                if (bVar.i != null) {
                    paint2.setStrokeCap(bVar.i);
                }
                paint2.setStrokeMiter(bVar.k);
                if (bVar3.c()) {
                    Shader a4 = bVar3.a();
                    a4.setLocalMatrix(this.o);
                    paint2.setShader(a4);
                    paint2.setAlpha(Math.round(bVar.d * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(i.a(bVar3.b(), bVar.d));
                }
                paint2.setColorFilter(colorFilter);
                paint2.setStrokeWidth(bVar.b * min * a2);
                canvas.drawPath(this.m, paint2);
            }
        }

        private float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float a2 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            if (max > 0.0f) {
                return Math.abs(a2) / max;
            }
            return 0.0f;
        }

        public boolean a() {
            if (this.j == null) {
                this.j = Boolean.valueOf(this.c.c());
            }
            return this.j.booleanValue();
        }

        public boolean a(int[] iArr) {
            return this.c.a(iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class d {
        public boolean a(int[] iArr) {
            return false;
        }

        public boolean c() {
            return false;
        }

        private d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends d {

        /* renamed from: a, reason: collision with root package name */
        final Matrix f932a;
        final ArrayList<d> b;
        float c;
        final Matrix d;
        int e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private float k;
        private int[] l;
        private String m;

        public c(c cVar, androidx.c.a<String, Object> aVar) {
            super();
            e aVar2;
            this.f932a = new Matrix();
            this.b = new ArrayList<>();
            this.c = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 1.0f;
            this.i = 1.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.d = new Matrix();
            this.m = null;
            this.c = cVar.c;
            this.f = cVar.f;
            this.g = cVar.g;
            this.h = cVar.h;
            this.i = cVar.i;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.e = cVar.e;
            if (this.m != null) {
                aVar.put(this.m, this);
            }
            this.d.set(cVar.d);
            ArrayList<d> arrayList = cVar.b;
            for (int i = 0; i < arrayList.size(); i++) {
                d dVar = arrayList.get(i);
                if (dVar instanceof c) {
                    this.b.add(new c((c) dVar, aVar));
                } else {
                    if (dVar instanceof b) {
                        aVar2 = new b((b) dVar);
                    } else if (dVar instanceof a) {
                        aVar2 = new a((a) dVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.b.add(aVar2);
                    if (aVar2.n != null) {
                        aVar.put(aVar2.n, aVar2);
                    }
                }
            }
        }

        public c() {
            super();
            this.f932a = new Matrix();
            this.b = new ArrayList<>();
            this.c = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 1.0f;
            this.i = 1.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.d = new Matrix();
            this.m = null;
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.d;
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = androidx.core.b.b.h.a(resources, theme, attributeSet, androidx.k.b.a.a.k);
            a(a2, xmlPullParser);
            a2.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.c = androidx.core.b.b.h.a(typedArray, xmlPullParser, "rotation", 5, this.c);
            this.f = typedArray.getFloat(1, this.f);
            this.g = typedArray.getFloat(2, this.g);
            this.h = androidx.core.b.b.h.a(typedArray, xmlPullParser, "scaleX", 3, this.h);
            this.i = androidx.core.b.b.h.a(typedArray, xmlPullParser, "scaleY", 4, this.i);
            this.j = androidx.core.b.b.h.a(typedArray, xmlPullParser, "translateX", 6, this.j);
            this.k = androidx.core.b.b.h.a(typedArray, xmlPullParser, "translateY", 7, this.k);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            a();
        }

        private void a() {
            this.d.reset();
            this.d.postTranslate(-this.f, -this.g);
            this.d.postScale(this.h, this.i);
            this.d.postRotate(this.c, 0.0f, 0.0f);
            this.d.postTranslate(this.j + this.f, this.k + this.g);
        }

        public float getRotation() {
            return this.c;
        }

        public void setRotation(float f) {
            if (f != this.c) {
                this.c = f;
                a();
            }
        }

        public float getPivotX() {
            return this.f;
        }

        public void setPivotX(float f) {
            if (f != this.f) {
                this.f = f;
                a();
            }
        }

        public float getPivotY() {
            return this.g;
        }

        public void setPivotY(float f) {
            if (f != this.g) {
                this.g = f;
                a();
            }
        }

        public float getScaleX() {
            return this.h;
        }

        public void setScaleX(float f) {
            if (f != this.h) {
                this.h = f;
                a();
            }
        }

        public float getScaleY() {
            return this.i;
        }

        public void setScaleY(float f) {
            if (f != this.i) {
                this.i = f;
                a();
            }
        }

        public float getTranslateX() {
            return this.j;
        }

        public void setTranslateX(float f) {
            if (f != this.j) {
                this.j = f;
                a();
            }
        }

        public float getTranslateY() {
            return this.k;
        }

        public void setTranslateY(float f) {
            if (f != this.k) {
                this.k = f;
                a();
            }
        }

        @Override // androidx.k.b.a.i.d
        public boolean c() {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).c()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.k.b.a.i.d
        public boolean a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.b.size(); i++) {
                z |= this.b.get(i).a(iArr);
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class e extends d {
        protected static final int l = 0;
        protected h.b[] m;
        String n;
        int o;
        int p;

        public void a(Resources.Theme theme) {
        }

        public boolean a() {
            return false;
        }

        public boolean b() {
            return false;
        }

        public e() {
            super();
            this.m = null;
            this.o = 0;
        }

        public void a(int i) {
            String str = com.yftech.service.upgrade.a.d;
            for (int i2 = 0; i2 < i; i2++) {
                str = str + "    ";
            }
            Log.v(i.f930a, str + "current path is :" + this.n + " pathData is " + a(this.m));
        }

        public String a(h.b[] bVarArr) {
            String str = " ";
            int i = 0;
            while (i < bVarArr.length) {
                String str2 = str + bVarArr[i].f436a + ":";
                String str3 = str2;
                for (float f : bVarArr[i].b) {
                    str3 = str3 + f + ",";
                }
                i++;
                str = str3;
            }
            return str;
        }

        public e(e eVar) {
            super();
            this.m = null;
            this.o = 0;
            this.n = eVar.n;
            this.p = eVar.p;
            this.m = androidx.core.graphics.h.a(eVar.m);
        }

        public void a(Path path) {
            path.reset();
            if (this.m != null) {
                h.b.a(this.m, path);
            }
        }

        public String getPathName() {
            return this.n;
        }

        public h.b[] getPathData() {
            return this.m;
        }

        public void setPathData(h.b[] bVarArr) {
            if (!androidx.core.graphics.h.a(this.m, bVarArr)) {
                this.m = androidx.core.graphics.h.a(bVarArr);
            } else {
                androidx.core.graphics.h.b(this.m, bVarArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends e {
        @Override // androidx.k.b.a.i.e
        public boolean a() {
            return true;
        }

        a() {
        }

        a(a aVar) {
            super(aVar);
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (androidx.core.b.b.h.a(xmlPullParser, "pathData")) {
                TypedArray a2 = androidx.core.b.b.h.a(resources, theme, attributeSet, androidx.k.b.a.a.I);
                a(a2, xmlPullParser);
                a2.recycle();
            }
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.n = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.m = androidx.core.graphics.h.b(string2);
            }
            this.o = androidx.core.b.b.h.a(typedArray, xmlPullParser, "fillType", 2, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends e {

        /* renamed from: a, reason: collision with root package name */
        androidx.core.b.b.b f931a;
        float b;
        androidx.core.b.b.b c;
        float d;
        float e;
        float f;
        float g;
        float h;
        Paint.Cap i;
        Paint.Join j;
        float k;
        private int[] q;

        b() {
            this.b = 0.0f;
            this.d = 1.0f;
            this.e = 1.0f;
            this.f = 0.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = Paint.Cap.BUTT;
            this.j = Paint.Join.MITER;
            this.k = 4.0f;
        }

        b(b bVar) {
            super(bVar);
            this.b = 0.0f;
            this.d = 1.0f;
            this.e = 1.0f;
            this.f = 0.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = Paint.Cap.BUTT;
            this.j = Paint.Join.MITER;
            this.k = 4.0f;
            this.q = bVar.q;
            this.f931a = bVar.f931a;
            this.b = bVar.b;
            this.d = bVar.d;
            this.c = bVar.c;
            this.o = bVar.o;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
        }

        private Paint.Cap a(int i, Paint.Cap cap) {
            switch (i) {
                case 0:
                    return Paint.Cap.BUTT;
                case 1:
                    return Paint.Cap.ROUND;
                case 2:
                    return Paint.Cap.SQUARE;
                default:
                    return cap;
            }
        }

        private Paint.Join a(int i, Paint.Join join) {
            switch (i) {
                case 0:
                    return Paint.Join.MITER;
                case 1:
                    return Paint.Join.ROUND;
                case 2:
                    return Paint.Join.BEVEL;
                default:
                    return join;
            }
        }

        @Override // androidx.k.b.a.i.e
        public boolean b() {
            return this.q != null;
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = androidx.core.b.b.h.a(resources, theme, attributeSet, androidx.k.b.a.a.t);
            a(a2, xmlPullParser, theme);
            a2.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.q = null;
            if (androidx.core.b.b.h.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.n = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.m = androidx.core.graphics.h.b(string2);
                }
                this.c = androidx.core.b.b.h.a(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.e = androidx.core.b.b.h.a(typedArray, xmlPullParser, "fillAlpha", 12, this.e);
                this.i = a(androidx.core.b.b.h.a(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.i);
                this.j = a(androidx.core.b.b.h.a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.j);
                this.k = androidx.core.b.b.h.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.k);
                this.f931a = androidx.core.b.b.h.a(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.d = androidx.core.b.b.h.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.d);
                this.b = androidx.core.b.b.h.a(typedArray, xmlPullParser, "strokeWidth", 4, this.b);
                this.g = androidx.core.b.b.h.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.g);
                this.h = androidx.core.b.b.h.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.h);
                this.f = androidx.core.b.b.h.a(typedArray, xmlPullParser, "trimPathStart", 5, this.f);
                this.o = androidx.core.b.b.h.a(typedArray, xmlPullParser, "fillType", 13, this.o);
            }
        }

        @Override // androidx.k.b.a.i.d
        public boolean c() {
            return this.c.d() || this.f931a.d();
        }

        @Override // androidx.k.b.a.i.d
        public boolean a(int[] iArr) {
            return this.f931a.a(iArr) | this.c.a(iArr);
        }

        @Override // androidx.k.b.a.i.e
        public void a(Resources.Theme theme) {
            if (this.q == null) {
            }
        }

        @k
        int getStrokeColor() {
            return this.f931a.b();
        }

        void setStrokeColor(int i) {
            this.f931a.b(i);
        }

        float getStrokeWidth() {
            return this.b;
        }

        void setStrokeWidth(float f) {
            this.b = f;
        }

        float getStrokeAlpha() {
            return this.d;
        }

        void setStrokeAlpha(float f) {
            this.d = f;
        }

        @k
        int getFillColor() {
            return this.c.b();
        }

        void setFillColor(int i) {
            this.c.b(i);
        }

        float getFillAlpha() {
            return this.e;
        }

        void setFillAlpha(float f) {
            this.e = f;
        }

        float getTrimPathStart() {
            return this.f;
        }

        void setTrimPathStart(float f) {
            this.f = f;
        }

        float getTrimPathEnd() {
            return this.g;
        }

        void setTrimPathEnd(float f) {
            this.g = f;
        }

        float getTrimPathOffset() {
            return this.h;
        }

        void setTrimPathOffset(float f) {
            this.h = f;
        }
    }
}
