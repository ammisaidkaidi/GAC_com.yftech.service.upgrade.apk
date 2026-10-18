package androidx.core.l.a;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.core.m.g;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f486a = new String[0];
    private static final Comparator<a> b = new Comparator<a>() { // from class: androidx.core.l.a.b.1
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(a aVar, a aVar2) {
            if (aVar.c < aVar2.c) {
                return -1;
            }
            if (aVar.c <= aVar2.c && aVar.d >= aVar2.d) {
                return aVar.d > aVar2.d ? -1 : 0;
            }
            return 1;
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* renamed from: androidx.core.l.a.b$b, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface InterfaceC0036b {
    }

    public static boolean a(@ah Spannable spannable, int i) {
        if (a()) {
            return Linkify.addLinks(spannable, i);
        }
        if (i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        if ((i & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            a((ArrayList<a>) arrayList, spannable, g.e, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter, (Linkify.TransformFilter) null);
        }
        if ((i & 2) != 0) {
            a((ArrayList<a>) arrayList, spannable, g.f, new String[]{"mailto:"}, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
        }
        if ((i & 8) != 0) {
            a((ArrayList<a>) arrayList, spannable);
        }
        b(arrayList, spannable);
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f487a == null) {
                a(aVar.b, aVar.c, aVar.d, spannable);
            }
        }
        return true;
    }

    public static boolean a(@ah TextView textView, int i) {
        if (a()) {
            return Linkify.addLinks(textView, i);
        }
        if (i == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (!a((Spannable) text, i)) {
                return false;
            }
            a(textView);
            return true;
        }
        SpannableString valueOf = SpannableString.valueOf(text);
        if (!a(valueOf, i)) {
            return false;
        }
        a(textView);
        textView.setText(valueOf);
        return true;
    }

    public static void a(@ah TextView textView, @ah Pattern pattern, @ai String str) {
        if (a()) {
            Linkify.addLinks(textView, pattern, str);
        } else {
            a(textView, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
        }
    }

    public static void a(@ah TextView textView, @ah Pattern pattern, @ai String str, @ai Linkify.MatchFilter matchFilter, @ai Linkify.TransformFilter transformFilter) {
        if (a()) {
            Linkify.addLinks(textView, pattern, str, matchFilter, transformFilter);
        } else {
            a(textView, pattern, str, (String[]) null, matchFilter, transformFilter);
        }
    }

    @SuppressLint({"NewApi"})
    public static void a(@ah TextView textView, @ah Pattern pattern, @ai String str, @ai String[] strArr, @ai Linkify.MatchFilter matchFilter, @ai Linkify.TransformFilter transformFilter) {
        if (a()) {
            Linkify.addLinks(textView, pattern, str, strArr, matchFilter, transformFilter);
            return;
        }
        SpannableString valueOf = SpannableString.valueOf(textView.getText());
        if (a(valueOf, pattern, str, strArr, matchFilter, transformFilter)) {
            textView.setText(valueOf);
            a(textView);
        }
    }

    public static boolean a(@ah Spannable spannable, @ah Pattern pattern, @ai String str) {
        if (a()) {
            return Linkify.addLinks(spannable, pattern, str);
        }
        return a(spannable, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
    }

    public static boolean a(@ah Spannable spannable, @ah Pattern pattern, @ai String str, @ai Linkify.MatchFilter matchFilter, @ai Linkify.TransformFilter transformFilter) {
        if (a()) {
            return Linkify.addLinks(spannable, pattern, str, matchFilter, transformFilter);
        }
        return a(spannable, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    @SuppressLint({"NewApi"})
    public static boolean a(@ah Spannable spannable, @ah Pattern pattern, @ai String str, @ai String[] strArr, @ai Linkify.MatchFilter matchFilter, @ai Linkify.TransformFilter transformFilter) {
        if (a()) {
            return Linkify.addLinks(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
        if (str == null) {
            str = com.yftech.service.upgrade.a.d;
        }
        if (strArr == null || strArr.length < 1) {
            strArr = f486a;
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str.toLowerCase(Locale.ROOT);
        int i = 0;
        while (i < strArr.length) {
            String str2 = strArr[i];
            i++;
            strArr2[i] = str2 == null ? com.yftech.service.upgrade.a.d : str2.toLowerCase(Locale.ROOT);
        }
        Matcher matcher = pattern.matcher(spannable);
        boolean z = false;
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter != null ? matchFilter.acceptMatch(spannable, start, end) : true) {
                a(a(matcher.group(0), strArr2, matcher, transformFilter), start, end, spannable);
                z = true;
            }
        }
        return z;
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 28;
    }

    private static void a(@ah TextView textView) {
        if ((textView.getMovementMethod() instanceof LinkMovementMethod) || !textView.getLinksClickable()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private static String a(@ah String str, @ah String[] strArr, Matcher matcher, @ai Linkify.TransformFilter transformFilter) {
        boolean z;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        int i = 0;
        while (true) {
            z = true;
            if (i >= strArr.length) {
                z = false;
                break;
            }
            if (str.regionMatches(true, 0, strArr[i], 0, strArr[i].length())) {
                if (!str.regionMatches(false, 0, strArr[i], 0, strArr[i].length())) {
                    str = strArr[i] + str.substring(strArr[i].length());
                }
            } else {
                i++;
            }
        }
        if (z || strArr.length <= 0) {
            return str;
        }
        return strArr[0] + str;
    }

    private static void a(ArrayList<a> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) {
                a aVar = new a();
                aVar.b = a(matcher.group(0), strArr, matcher, transformFilter);
                aVar.c = start;
                aVar.d = end;
                arrayList.add(aVar);
            }
        }
    }

    private static void a(String str, int i, int i2, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i, i2, 33);
    }

    private static void a(ArrayList<a> arrayList, Spannable spannable) {
        int indexOf;
        String obj = spannable.toString();
        int i = 0;
        while (true) {
            try {
                String a2 = a(obj);
                if (a2 != null && (indexOf = obj.indexOf(a2)) >= 0) {
                    a aVar = new a();
                    int length = a2.length() + indexOf;
                    aVar.c = indexOf + i;
                    i += length;
                    aVar.d = i;
                    obj = obj.substring(length);
                    try {
                        aVar.b = "geo:0,0?q=" + URLEncoder.encode(a2, "UTF-8");
                        arrayList.add(aVar);
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                return;
            } catch (UnsupportedOperationException unused2) {
                return;
            }
        }
    }

    private static String a(String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            return WebView.findAddress(str);
        }
        return androidx.core.l.a.a.c(str);
    }

    private static void b(ArrayList<a> arrayList, Spannable spannable) {
        int i;
        int i2 = 0;
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int i3 = 0; i3 < uRLSpanArr.length; i3++) {
            a aVar = new a();
            aVar.f487a = uRLSpanArr[i3];
            aVar.c = spannable.getSpanStart(uRLSpanArr[i3]);
            aVar.d = spannable.getSpanEnd(uRLSpanArr[i3]);
            arrayList.add(aVar);
        }
        Collections.sort(arrayList, b);
        int size = arrayList.size();
        while (i2 < size - 1) {
            a aVar2 = arrayList.get(i2);
            int i4 = i2 + 1;
            a aVar3 = arrayList.get(i4);
            if (aVar2.c <= aVar3.c && aVar2.d > aVar3.c) {
                if (aVar3.d > aVar2.d && aVar2.d - aVar2.c <= aVar3.d - aVar3.c) {
                    i = aVar2.d - aVar2.c < aVar3.d - aVar3.c ? i2 : -1;
                } else {
                    i = i4;
                }
                if (i != -1) {
                    Object obj = arrayList.get(i).f487a;
                    if (obj != null) {
                        spannable.removeSpan(obj);
                    }
                    arrayList.remove(i);
                    size--;
                }
            }
            i2 = i4;
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        URLSpan f487a;
        String b;
        int c;
        int d;

        a() {
        }
    }
}
