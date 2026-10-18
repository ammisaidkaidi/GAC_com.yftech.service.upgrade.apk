package androidx.k.b.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.q;
import androidx.k.b.a.b;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class c extends h implements androidx.k.b.a.b {
    private static final String e = "AnimatedVDCompat";
    private static final String f = "animated-vector";
    private static final String g = "target";
    private static final boolean h = false;

    /* renamed from: a, reason: collision with root package name */
    b f921a;
    ArrayList<b.a> b;
    final Drawable.Callback c;
    private a i;
    private Context j;
    private ArgbEvaluator k;
    private Animator.AnimatorListener l;

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
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
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
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    c() {
        this(null, null, null);
    }

    private c(@ai Context context) {
        this(context, null, null);
    }

    private c(@ai Context context, @ai a aVar, @ai Resources resources) {
        this.k = null;
        this.l = null;
        this.b = null;
        this.c = new Drawable.Callback() { // from class: androidx.k.b.a.c.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                c.this.unscheduleSelf(runnable);
            }
        };
        this.j = context;
        if (aVar != null) {
            this.i = aVar;
        } else {
            this.i = new a(context, aVar, this.c, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.d != null) {
            this.d.mutate();
        }
        return this;
    }

    @ai
    public static c a(@ah Context context, @q int i) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            c cVar = new c(context);
            cVar.d = androidx.core.b.b.g.a(context.getResources(), i, context.getTheme());
            cVar.d.setCallback(cVar.c);
            cVar.f921a = new b(cVar.d.getConstantState());
            return cVar;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
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
            return a(context, context.getResources(), xml, asAttributeSet, context.getTheme());
        } catch (IOException e2) {
            Log.e(e, "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e(e, "parser error", e3);
            return null;
        }
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.d == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(this.d.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        if (this.d != null) {
            return this.d.getChangingConfigurations();
        }
        return this.i.f924a | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.d != null) {
            this.d.draw(canvas);
            return;
        }
        this.i.b.draw(canvas);
        if (this.i.c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.d != null) {
            this.d.setBounds(rect);
        } else {
            this.i.b.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.d != null) {
            return this.d.setState(iArr);
        }
        return this.i.b.setState(iArr);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.d != null) {
            return this.d.setLevel(i);
        }
        return this.i.b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.c(this.d);
        }
        return this.i.b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.d != null) {
            this.d.setAlpha(i);
        } else {
            this.i.b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.d != null) {
            this.d.setColorFilter(colorFilter);
        } else {
            this.i.b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.e(this.d);
        }
        return this.i.b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, i);
        } else {
            this.i.b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, colorStateList);
        } else {
            this.i.b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, mode);
        } else {
            this.i.b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.d != null) {
            return this.d.setVisible(z, z2);
        }
        this.i.b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (this.d != null) {
            return this.d.isStateful();
        }
        return this.i.b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.d != null) {
            return this.d.getOpacity();
        }
        return this.i.b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.d != null) {
            return this.d.getIntrinsicWidth();
        }
        return this.i.b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.d != null) {
            return this.d.getIntrinsicHeight();
        }
        return this.i.b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.b(this.d);
        }
        return this.i.b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, z);
        } else {
            this.i.b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (f.equals(name)) {
                    TypedArray a2 = androidx.core.b.b.h.a(resources, theme, attributeSet, androidx.k.b.a.a.M);
                    int resourceId = a2.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i a3 = i.a(resources, resourceId, theme);
                        a3.a(false);
                        a3.setCallback(this.c);
                        if (this.i.b != null) {
                            this.i.b.setCallback(null);
                        }
                        this.i.b = a3;
                    }
                    a2.recycle();
                } else if (g.equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, androidx.k.b.a.a.O);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        if (this.j != null) {
                            a(string, e.a(this.j, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.i.a();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // androidx.k.b.a.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.d != null) {
            androidx.core.graphics.drawable.a.a(this.d, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.d != null) {
            return androidx.core.graphics.drawable.a.d(this.d);
        }
        return false;
    }

    @am(a = 24)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f925a;

        public b(Drawable.ConstantState constantState) {
            this.f925a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            cVar.d = this.f925a.newDrawable();
            cVar.d.setCallback(cVar.c);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.d = this.f925a.newDrawable(resources);
            cVar.d.setCallback(cVar.c);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.d = this.f925a.newDrawable(resources, theme);
            cVar.d.setCallback(cVar.c);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f925a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f925a.getChangingConfigurations();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        int f924a;
        i b;
        AnimatorSet c;
        ArrayList<Animator> d;
        androidx.c.a<Animator, String> e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f924a = aVar.f924a;
                if (aVar.b != null) {
                    Drawable.ConstantState constantState = aVar.b.getConstantState();
                    if (resources != null) {
                        this.b = (i) constantState.newDrawable(resources);
                    } else {
                        this.b = (i) constantState.newDrawable();
                    }
                    this.b = (i) this.b.mutate();
                    this.b.setCallback(callback);
                    this.b.setBounds(aVar.b.getBounds());
                    this.b.a(false);
                }
                if (aVar.d != null) {
                    int size = aVar.d.size();
                    this.d = new ArrayList<>(size);
                    this.e = new androidx.c.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = aVar.d.get(i);
                        Animator clone = animator.clone();
                        String str = aVar.e.get(animator);
                        clone.setTarget(this.b.a(str));
                        this.d.add(clone);
                        this.e.put(clone, str);
                    }
                    a();
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f924a;
        }

        public void a() {
            if (this.c == null) {
                this.c = new AnimatorSet();
            }
            this.c.playTogether(this.d);
        }
    }

    private void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.k == null) {
                    this.k = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.k);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.i.b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        if (this.i.d == null) {
            this.i.d = new ArrayList<>();
            this.i.e = new androidx.c.a<>();
        }
        this.i.d.add(animator);
        this.i.e.put(animator, str);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        if (this.d != null) {
            return ((AnimatedVectorDrawable) this.d).isRunning();
        }
        return this.i.c.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.d != null) {
            ((AnimatedVectorDrawable) this.d).start();
        } else {
            if (this.i.c.isStarted()) {
                return;
            }
            this.i.c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.d != null) {
            ((AnimatedVectorDrawable) this.d).stop();
        } else {
            this.i.c.end();
        }
    }

    @am(a = 23)
    private static boolean a(AnimatedVectorDrawable animatedVectorDrawable, b.a aVar) {
        return animatedVectorDrawable.unregisterAnimationCallback(aVar.a());
    }

    @Override // androidx.k.b.a.b
    public void a(@ah b.a aVar) {
        if (this.d != null) {
            b((AnimatedVectorDrawable) this.d, aVar);
            return;
        }
        if (aVar == null) {
            return;
        }
        if (this.b == null) {
            this.b = new ArrayList<>();
        }
        if (this.b.contains(aVar)) {
            return;
        }
        this.b.add(aVar);
        if (this.l == null) {
            this.l = new AnimatorListenerAdapter() { // from class: androidx.k.b.a.c.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ArrayList arrayList = new ArrayList(c.this.b);
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        ((b.a) arrayList.get(i)).a(c.this);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ArrayList arrayList = new ArrayList(c.this.b);
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        ((b.a) arrayList.get(i)).b(c.this);
                    }
                }
            };
        }
        this.i.c.addListener(this.l);
    }

    @am(a = 23)
    private static void b(@ah AnimatedVectorDrawable animatedVectorDrawable, @ah b.a aVar) {
        animatedVectorDrawable.registerAnimationCallback(aVar.a());
    }

    private void b() {
        if (this.l != null) {
            this.i.c.removeListener(this.l);
            this.l = null;
        }
    }

    @Override // androidx.k.b.a.b
    public boolean b(@ah b.a aVar) {
        if (this.d != null) {
            a((AnimatedVectorDrawable) this.d, aVar);
        }
        if (this.b == null || aVar == null) {
            return false;
        }
        boolean remove = this.b.remove(aVar);
        if (this.b.size() == 0) {
            b();
        }
        return remove;
    }

    @Override // androidx.k.b.a.b
    public void a() {
        if (this.d != null) {
            ((AnimatedVectorDrawable) this.d).clearAnimationCallbacks();
            return;
        }
        b();
        if (this.b == null) {
            return;
        }
        this.b.clear();
    }

    public static void a(Drawable drawable, b.a aVar) {
        if (drawable == null || aVar == null || !(drawable instanceof Animatable)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            b((AnimatedVectorDrawable) drawable, aVar);
        } else {
            ((c) drawable).a(aVar);
        }
    }

    public static boolean b(Drawable drawable, b.a aVar) {
        if (drawable == null || aVar == null || !(drawable instanceof Animatable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return a((AnimatedVectorDrawable) drawable, aVar);
        }
        return ((c) drawable).b(aVar);
    }

    public static void a(Drawable drawable) {
        if (drawable instanceof Animatable) {
            if (Build.VERSION.SDK_INT >= 24) {
                ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
            } else {
                ((c) drawable).a();
            }
        }
    }
}
