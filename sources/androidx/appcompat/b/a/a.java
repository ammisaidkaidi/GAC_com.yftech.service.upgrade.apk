package androidx.appcompat.b.a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.q;
import androidx.appcompat.b.a.b;
import androidx.appcompat.b.a.e;
import androidx.appcompat.c.a;
import androidx.appcompat.widget.ao;
import androidx.c.j;
import androidx.core.b.b.h;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@SuppressLint({"RestrictedAPI"})
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends androidx.appcompat.b.a.e implements androidx.core.graphics.drawable.e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f96a = "a";
    private static final String b = "transition";
    private static final String c = "item";
    private static final String d = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable";
    private static final String e = ": <transition> tag requires 'fromId' & 'toId' attributes";
    private static final String f = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable";
    private b g;
    private f h;
    private int i;
    private int j;
    private boolean k;

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.b.a.b
    public /* bridge */ /* synthetic */ void a(int i) {
        super.a(i);
    }

    @Override // androidx.appcompat.b.a.e
    public /* bridge */ /* synthetic */ void a(int[] iArr, Drawable drawable) {
        super.a(iArr, drawable);
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    @am(a = 21)
    public /* bridge */ /* synthetic */ void applyTheme(@ah Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.b.a.b
    public /* bridge */ /* synthetic */ void b(int i) {
        super.b(i);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    @am(a = 21)
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(@ah Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    @ah
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(@ah Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    @am(a = 21)
    public /* bridge */ /* synthetic */ void getOutline(@ah Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(@ah Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(@ah Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(@ah Drawable drawable, @ah Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public /* bridge */ /* synthetic */ void setTintMode(@ah PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(@ah Drawable drawable, @ah Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }

    public a() {
        this(null, null);
    }

    a(@ai b bVar, @ai Resources resources) {
        super(null);
        this.i = -1;
        this.j = -1;
        a(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    @ai
    public static a a(@ah Context context, @q int i, @ai Resources.Theme theme) {
        int next;
        try {
            Resources resources = context.getResources();
            XmlResourceParser xml = resources.getXml(i);
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
            return a(context, resources, (XmlPullParser) xml, asAttributeSet, theme);
        } catch (IOException e2) {
            Log.e(f96a, "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e(f96a, "parser error", e3);
            return null;
        }
    }

    public static a a(@ah Context context, @ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        a aVar = new a();
        aVar.b(context, resources, xmlPullParser, attributeSet, theme);
        return aVar;
    }

    @Override // androidx.appcompat.b.a.e
    public void b(@ah Context context, @ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        TypedArray a2 = h.a(resources, theme, attributeSet, a.j.AnimatedStateListDrawableCompat);
        setVisible(a2.getBoolean(a.j.AnimatedStateListDrawableCompat_android_visible, true), true);
        a(a2);
        a(resources);
        a2.recycle();
        c(context, resources, xmlPullParser, attributeSet, theme);
        g();
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.h != null && (visible || z2)) {
            if (z) {
                this.h.a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    public void a(@ah int[] iArr, @ah Drawable drawable, int i) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable must not be null");
        }
        this.g.a(iArr, drawable, i);
        onStateChange(getState());
    }

    public <T extends Drawable & Animatable> void a(int i, int i2, @ah T t, boolean z) {
        if (t == null) {
            throw new IllegalArgumentException("Transition drawable must not be null");
        }
        this.g.a(i, i2, t, z);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        if (this.h != null) {
            this.h.b();
            this.h = null;
            d(this.i);
            this.i = -1;
            this.j = -1;
        }
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int a2 = this.g.a(iArr);
        boolean z = a2 != d() && (g(a2) || d(a2));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    private boolean g(int i) {
        int d2;
        int a2;
        f c0014a;
        f fVar = this.h;
        if (fVar != null) {
            if (i == this.i) {
                return true;
            }
            if (i == this.j && fVar.c()) {
                fVar.d();
                this.i = this.j;
                this.j = i;
                return true;
            }
            d2 = this.i;
            fVar.b();
        } else {
            d2 = d();
        }
        this.h = null;
        this.j = -1;
        this.i = -1;
        b bVar = this.g;
        int a3 = bVar.a(d2);
        int a4 = bVar.a(i);
        if (a4 == 0 || a3 == 0 || (a2 = bVar.a(a3, a4)) < 0) {
            return false;
        }
        boolean c2 = bVar.c(a3, a4);
        d(a2);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            c0014a = new d((AnimationDrawable) current, bVar.b(a3, a4), c2);
        } else if (current instanceof androidx.k.b.a.c) {
            c0014a = new c((androidx.k.b.a.c) current);
        } else {
            if (!(current instanceof Animatable)) {
                return false;
            }
            c0014a = new C0014a((Animatable) current);
        }
        c0014a.a();
        this.h = c0014a;
        this.j = d2;
        this.i = i;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class f {
        public abstract void a();

        public abstract void b();

        public boolean c() {
            return false;
        }

        public void d() {
        }

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0014a extends f {

        /* renamed from: a, reason: collision with root package name */
        private final Animatable f97a;

        C0014a(Animatable animatable) {
            super();
            this.f97a = animatable;
        }

        @Override // androidx.appcompat.b.a.a.f
        public void a() {
            this.f97a.start();
        }

        @Override // androidx.appcompat.b.a.a.f
        public void b() {
            this.f97a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends f {

        /* renamed from: a, reason: collision with root package name */
        private final ObjectAnimator f100a;
        private final boolean b;

        d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            e eVar = new e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(eVar.a());
            ofInt.setInterpolator(eVar);
            this.b = z2;
            this.f100a = ofInt;
        }

        @Override // androidx.appcompat.b.a.a.f
        public boolean c() {
            return this.b;
        }

        @Override // androidx.appcompat.b.a.a.f
        public void a() {
            this.f100a.start();
        }

        @Override // androidx.appcompat.b.a.a.f
        public void d() {
            this.f100a.reverse();
        }

        @Override // androidx.appcompat.b.a.a.f
        public void b() {
            this.f100a.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends f {

        /* renamed from: a, reason: collision with root package name */
        private final androidx.k.b.a.c f99a;

        c(androidx.k.b.a.c cVar) {
            super();
            this.f99a = cVar;
        }

        @Override // androidx.appcompat.b.a.a.f
        public void a() {
            this.f99a.start();
        }

        @Override // androidx.appcompat.b.a.a.f
        public void b() {
            this.f99a.stop();
        }
    }

    private void a(TypedArray typedArray) {
        b bVar = this.g;
        if (Build.VERSION.SDK_INT >= 21) {
            bVar.f |= typedArray.getChangingConfigurations();
        }
        bVar.a(typedArray.getBoolean(a.j.AnimatedStateListDrawableCompat_android_variablePadding, bVar.k));
        bVar.b(typedArray.getBoolean(a.j.AnimatedStateListDrawableCompat_android_constantSize, bVar.n));
        bVar.c(typedArray.getInt(a.j.AnimatedStateListDrawableCompat_android_enterFadeDuration, bVar.C));
        bVar.d(typedArray.getInt(a.j.AnimatedStateListDrawableCompat_android_exitFadeDuration, bVar.D));
        setDither(typedArray.getBoolean(a.j.AnimatedStateListDrawableCompat_android_dither, bVar.z));
    }

    private void g() {
        onStateChange(getState());
    }

    private void c(@ah Context context, @ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals(c)) {
                    e(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals(b)) {
                    d(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        if (r0 != 2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        if (r10.getName().equals("animated-vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        r4 = androidx.k.b.a.c.a(r8, r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 21) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        r4 = android.graphics.drawable.Drawable.createFromXmlInner(r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
    
        r4 = android.graphics.drawable.Drawable.createFromXmlInner(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.b.a.a.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0078, code lost:
    
        if (r4 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        if (r1 == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
    
        if (r3 == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
    
        return r7.g.a(r1, r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.b.a.a.e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ba, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.b.a.a.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002f, code lost:
    
        if (r4 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0031, code lost:
    
        r0 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0036, code lost:
    
        if (r0 != 4) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int d(@ah Context context, @ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        TypedArray a2 = h.a(resources, theme, attributeSet, a.j.AnimatedStateListDrawableTransition);
        int resourceId = a2.getResourceId(a.j.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = a2.getResourceId(a.j.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = a2.getResourceId(a.j.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable a3 = resourceId3 > 0 ? ao.a().a(context, resourceId3) : null;
        boolean z = a2.getBoolean(a.j.AnimatedStateListDrawableTransition_android_reversible, false);
        a2.recycle();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        if (r5 != 2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
    
        if (r7.getName().equals("vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
    
        r5 = androidx.k.b.a.i.a(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0049, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 21) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        r5 = android.graphics.drawable.Drawable.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
    
        r5 = android.graphics.drawable.Drawable.createFromXmlInner(r6, r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + androidx.appcompat.b.a.a.f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0070, code lost:
    
        if (r5 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
    
        return r4.g.a(r0, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + androidx.appcompat.b.a.a.f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
    
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0029, code lost:
    
        r5 = r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002e, code lost:
    
        if (r5 != 4) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int e(@ah Context context, @ah Resources resources, @ah XmlPullParser xmlPullParser, @ah AttributeSet attributeSet, @ai Resources.Theme theme) {
        TypedArray a2 = h.a(resources, theme, attributeSet, a.j.AnimatedStateListDrawableItem);
        int resourceId = a2.getResourceId(a.j.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = a2.getResourceId(a.j.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable a3 = resourceId2 > 0 ? ao.a().a(context, resourceId2) : null;
        a2.recycle();
        int[] a4 = a(attributeSet);
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.k && super.mutate() == this) {
            this.g.a();
            this.k = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public b c() {
        return new b(this.g, this, null);
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b
    void clearMutated() {
        super.clearMutated();
        this.k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends e.a {
        private static final long M = 4294967296L;
        private static final long N = 8589934592L;

        /* renamed from: a, reason: collision with root package name */
        androidx.c.f<Long> f98a;
        j<Integer> b;

        private static long f(int i, int i2) {
            return i2 | (i << 32);
        }

        b(@ai b bVar, @ah a aVar, @ai Resources resources) {
            super(bVar, aVar, resources);
            if (bVar != null) {
                this.f98a = bVar.f98a;
                this.b = bVar.b;
            } else {
                this.f98a = new androidx.c.f<>();
                this.b = new j<>();
            }
        }

        @Override // androidx.appcompat.b.a.e.a, androidx.appcompat.b.a.b.AbstractC0015b
        void a() {
            this.f98a = this.f98a.clone();
            this.b = this.b.clone();
        }

        int a(int i, int i2, @ah Drawable drawable, boolean z) {
            int a2 = super.a(drawable);
            long f = f(i, i2);
            long j = z ? N : 0L;
            long j2 = a2;
            this.f98a.f(f, Long.valueOf(j2 | j));
            if (z) {
                this.f98a.f(f(i2, i), Long.valueOf(M | j2 | j));
            }
            return a2;
        }

        int a(@ah int[] iArr, @ah Drawable drawable, int i) {
            int a2 = super.a(iArr, drawable);
            this.b.d(a2, Integer.valueOf(i));
            return a2;
        }

        int a(@ah int[] iArr) {
            int b = super.b(iArr);
            return b >= 0 ? b : super.b(StateSet.WILD_CARD);
        }

        int a(int i) {
            if (i < 0) {
                return 0;
            }
            return this.b.a(i, 0).intValue();
        }

        int a(int i, int i2) {
            return (int) this.f98a.a(f(i, i2), -1L).longValue();
        }

        boolean b(int i, int i2) {
            return (this.f98a.a(f(i, i2), -1L).longValue() & M) != 0;
        }

        boolean c(int i, int i2) {
            return (this.f98a.a(f(i, i2), -1L).longValue() & N) != 0;
        }

        @Override // androidx.appcompat.b.a.e.a, android.graphics.drawable.Drawable.ConstantState
        @ah
        public Drawable newDrawable() {
            return new a(this, null);
        }

        @Override // androidx.appcompat.b.a.e.a, android.graphics.drawable.Drawable.ConstantState
        @ah
        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }
    }

    @Override // androidx.appcompat.b.a.e, androidx.appcompat.b.a.b
    void a(@ah b.AbstractC0015b abstractC0015b) {
        super.a(abstractC0015b);
        if (abstractC0015b instanceof b) {
            this.g = (b) abstractC0015b;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class e implements TimeInterpolator {

        /* renamed from: a, reason: collision with root package name */
        private int[] f101a;
        private int b;
        private int c;

        e(AnimationDrawable animationDrawable, boolean z) {
            a(animationDrawable, z);
        }

        int a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.b = numberOfFrames;
            if (this.f101a == null || this.f101a.length < numberOfFrames) {
                this.f101a = new int[numberOfFrames];
            }
            int[] iArr = this.f101a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr[i2] = duration;
                i += duration;
            }
            this.c = i;
            return i;
        }

        int a() {
            return this.c;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.c) + 0.5f);
            int i2 = this.b;
            int[] iArr = this.f101a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.c : 0.0f);
        }
    }
}
