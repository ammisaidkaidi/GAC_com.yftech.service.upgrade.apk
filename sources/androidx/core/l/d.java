package androidx.core.l;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Layout;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.aw;
import androidx.annotation.u;
import androidx.annotation.z;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.i.o;
import androidx.core.m.i;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: /home/user/work/dex/classes.dex */
public class d implements Spannable {

    /* renamed from: a, reason: collision with root package name */
    private static final char f490a = '\n';
    private static final Object b = new Object();

    @u(a = "sLock")
    @ah
    private static Executor c = null;

    @ah
    private final Spannable d;

    @ah
    private final a e;

    @ah
    private final int[] f;

    @ai
    private final PrecomputedText g;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final PrecomputedText.Params f491a;

        @ah
        private final TextPaint b;

        @ai
        private final TextDirectionHeuristic c;
        private final int d;
        private final int e;

        /* renamed from: androidx.core.l.d$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class C0037a {

            /* renamed from: a, reason: collision with root package name */
            @ah
            private final TextPaint f492a;
            private TextDirectionHeuristic b;
            private int c;
            private int d;

            public C0037a(@ah TextPaint textPaint) {
                this.f492a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.c = 1;
                    this.d = 1;
                } else {
                    this.d = 0;
                    this.c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.b = null;
                }
            }

            @am(a = 23)
            public C0037a a(int i) {
                this.c = i;
                return this;
            }

            @am(a = 23)
            public C0037a b(int i) {
                this.d = i;
                return this;
            }

            @am(a = 18)
            public C0037a a(@ah TextDirectionHeuristic textDirectionHeuristic) {
                this.b = textDirectionHeuristic;
                return this;
            }

            @ah
            public a a() {
                return new a(this.f492a, this.b, this.c, this.d);
            }
        }

        @SuppressLint({"NewApi"})
        a(@ah TextPaint textPaint, @ah TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f491a = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f491a = null;
            }
            this.b = textPaint;
            this.c = textDirectionHeuristic;
            this.d = i;
            this.e = i2;
        }

        @am(a = 28)
        public a(@ah PrecomputedText.Params params) {
            this.b = params.getTextPaint();
            this.c = params.getTextDirection();
            this.d = params.getBreakStrategy();
            this.e = params.getHyphenationFrequency();
            this.f491a = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        @ah
        public TextPaint a() {
            return this.b;
        }

        @ai
        @am(a = 18)
        public TextDirectionHeuristic b() {
            return this.c;
        }

        @am(a = 23)
        public int c() {
            return this.d;
        }

        @am(a = 23)
        public int d() {
            return this.e;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public boolean a(@ah a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.d != aVar.c() || this.e != aVar.d())) || this.b.getTextSize() != aVar.a().getTextSize() || this.b.getTextScaleX() != aVar.a().getTextScaleX() || this.b.getTextSkewX() != aVar.a().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.b.getLetterSpacing() != aVar.a().getLetterSpacing() || !TextUtils.equals(this.b.getFontFeatureSettings(), aVar.a().getFontFeatureSettings()))) || this.b.getFlags() != aVar.a().getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.b.getTextLocales().equals(aVar.a().getTextLocales())) {
                    return false;
                }
            } else if (Build.VERSION.SDK_INT >= 17 && !this.b.getTextLocale().equals(aVar.a().getTextLocale())) {
                return false;
            }
            return this.b.getTypeface() == null ? aVar.a().getTypeface() == null : this.b.getTypeface().equals(aVar.a().getTypeface());
        }

        public boolean equals(@ai Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.c == aVar.b();
            }
            return false;
        }

        public int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return androidx.core.m.e.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Float.valueOf(this.b.getLetterSpacing()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocales(), this.b.getTypeface(), Boolean.valueOf(this.b.isElegantTextHeight()), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return androidx.core.m.e.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Float.valueOf(this.b.getLetterSpacing()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocale(), this.b.getTypeface(), Boolean.valueOf(this.b.isElegantTextHeight()), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            if (Build.VERSION.SDK_INT >= 18) {
                return androidx.core.m.e.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocale(), this.b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            if (Build.VERSION.SDK_INT >= 17) {
                return androidx.core.m.e.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocale(), this.b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            return androidx.core.m.e.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Integer.valueOf(this.b.getFlags()), this.b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.b.getTextSize());
            sb.append(", textScaleX=" + this.b.getTextScaleX());
            sb.append(", textSkewX=" + this.b.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.b.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.b.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.b.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.b.getTextLocale());
            }
            sb.append(", typeface=" + this.b.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.b.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.c);
            sb.append(", breakStrategy=" + this.d);
            sb.append(", hyphenationFrequency=" + this.e);
            sb.append("}");
            return sb.toString();
        }
    }

    @SuppressLint({"NewApi"})
    public static d a(@ah CharSequence charSequence, @ah a aVar) {
        i.a(charSequence);
        i.a(aVar);
        try {
            o.a("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && aVar.f491a != null) {
                return new d(PrecomputedText.create(charSequence, aVar.f491a), aVar);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                int indexOf = TextUtils.indexOf(charSequence, f490a, i, length);
                i = indexOf < 0 ? length : indexOf + 1;
                arrayList.add(Integer.valueOf(i));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), aVar.a(), ActivityChooserView.a.f166a).setBreakStrategy(aVar.c()).setHyphenationFrequency(aVar.d()).setTextDirection(aVar.b()).build();
            } else if (Build.VERSION.SDK_INT >= 21) {
                new StaticLayout(charSequence, aVar.a(), ActivityChooserView.a.f166a, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            return new d(charSequence, aVar, iArr);
        } finally {
            o.b();
        }
    }

    private d(@ah CharSequence charSequence, @ah a aVar, @ah int[] iArr) {
        this.d = new SpannableString(charSequence);
        this.e = aVar;
        this.f = iArr;
        this.g = null;
    }

    @am(a = 28)
    private d(@ah PrecomputedText precomputedText, @ah a aVar) {
        this.d = precomputedText;
        this.e = aVar;
        this.f = null;
        this.g = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    @ai
    @am(a = 28)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PrecomputedText a() {
        if (this.d instanceof PrecomputedText) {
            return (PrecomputedText) this.d;
        }
        return null;
    }

    @ah
    public a b() {
        return this.e;
    }

    @z(a = FabTransformationScrimBehavior.c)
    @SuppressLint({"NewApi"})
    public int c() {
        if (Build.VERSION.SDK_INT >= 29) {
            return this.g.getParagraphCount();
        }
        return this.f.length;
    }

    @z(a = FabTransformationScrimBehavior.c)
    @SuppressLint({"NewApi"})
    public int a(@z(a = 0) int i) {
        i.a(i, 0, c(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            return this.g.getParagraphStart(i);
        }
        if (i == 0) {
            return 0;
        }
        return this.f[i - 1];
    }

    @z(a = FabTransformationScrimBehavior.c)
    @SuppressLint({"NewApi"})
    public int b(@z(a = 0) int i) {
        i.a(i, 0, c(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            return this.g.getParagraphEnd(i);
        }
        return this.f[i];
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b extends FutureTask<d> {

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class a implements Callable<d> {

            /* renamed from: a, reason: collision with root package name */
            private a f493a;
            private CharSequence b;

            a(@ah a aVar, @ah CharSequence charSequence) {
                this.f493a = aVar;
                this.b = charSequence;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d call() {
                return d.a(this.b, this.f493a);
            }
        }

        b(@ah a aVar, @ah CharSequence charSequence) {
            super(new a(aVar, charSequence));
        }
    }

    @aw
    public static Future<d> a(@ah CharSequence charSequence, @ah a aVar, @ai Executor executor) {
        b bVar = new b(aVar, charSequence);
        if (executor == null) {
            synchronized (b) {
                if (c == null) {
                    c = Executors.newFixedThreadPool(1);
                }
                executor = c;
            }
        }
        executor.execute(bVar);
        return bVar;
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.g.setSpan(obj, i, i2, i3);
        } else {
            this.d.setSpan(obj, i, i2, i3);
        }
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.g.removeSpan(obj);
        } else {
            this.d.removeSpan(obj);
        }
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.g.getSpans(i, i2, cls);
        }
        return (T[]) this.d.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.d.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.d.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.d.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.d.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.d.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.d.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.d.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @ah
    public String toString() {
        return this.d.toString();
    }
}
