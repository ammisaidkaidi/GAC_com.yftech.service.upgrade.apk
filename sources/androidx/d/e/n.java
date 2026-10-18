package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.d.e.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public static final String f733a = "ConstraintLayoutStates";
    private static final boolean f = false;
    g c;
    int b = -1;
    int d = -1;
    int e = -1;
    private SparseArray<a> g = new SparseArray<>();
    private SparseArray<g> h = new SparseArray<>();
    private i i = null;

    public n(Context context, XmlPullParser xmlPullParser) {
        a(context, xmlPullParser);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0090 A[Catch: IOException -> 0x00c6, XmlPullParserException -> 0x00cb, TryCatch #2 {IOException -> 0x00c6, XmlPullParserException -> 0x00cb, blocks: (B:12:0x0029, B:16:0x0032, B:19:0x00c0, B:22:0x0037, B:28:0x0044, B:38:0x008a, B:40:0x00a8, B:42:0x0090, B:44:0x0097, B:47:0x009b, B:50:0x0062, B:53:0x006c, B:56:0x0075, B:59:0x007f, B:62:0x00bd), top: B:11:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009b A[Catch: IOException -> 0x00c6, XmlPullParserException -> 0x00cb, TryCatch #2 {IOException -> 0x00c6, XmlPullParserException -> 0x00cb, blocks: (B:12:0x0029, B:16:0x0032, B:19:0x00c0, B:22:0x0037, B:28:0x0044, B:38:0x008a, B:40:0x00a8, B:42:0x0090, B:44:0x0097, B:47:0x009b, B:50:0x0062, B:53:0x006c, B:56:0x0075, B:59:0x007f, B:62:0x00bd), top: B:11:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == m.C0052m.StateSet_defaultState) {
                this.b = obtainStyledAttributes.getResourceId(index, this.b);
            }
        }
        obtainStyledAttributes.recycle();
        a aVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (true) {
                char c = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xmlPullParser.getName();
                            int hashCode = name.hashCode();
                            if (hashCode == 80204913) {
                                if (name.equals("State")) {
                                    c = 2;
                                    switch (c) {
                                    }
                                }
                                c = 65535;
                                switch (c) {
                                }
                            } else if (hashCode == 1301459538) {
                                if (name.equals("LayoutDescription")) {
                                    c = 0;
                                    switch (c) {
                                    }
                                }
                                c = 65535;
                                switch (c) {
                                }
                            } else if (hashCode != 1382829617) {
                                if (hashCode == 1901439077 && name.equals("Variant")) {
                                    c = 3;
                                    switch (c) {
                                        case 0:
                                        case 1:
                                            break;
                                        case 2:
                                            aVar = new a(context, xmlPullParser);
                                            this.g.put(aVar.f734a, aVar);
                                            break;
                                        case 3:
                                            b bVar = new b(context, xmlPullParser);
                                            if (aVar != null) {
                                                aVar.a(bVar);
                                                break;
                                            } else {
                                                break;
                                            }
                                        default:
                                            Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                            break;
                                    }
                                }
                                c = 65535;
                                switch (c) {
                                }
                            } else {
                                if (name.equals("StateSet")) {
                                    switch (c) {
                                    }
                                }
                                c = 65535;
                                switch (c) {
                                }
                            }
                        case 3:
                            if (!"StateSet".equals(xmlPullParser.getName())) {
                                break;
                            } else {
                                return;
                            }
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    public boolean a(int i, float f2, float f3) {
        if (this.d != i) {
            return true;
        }
        a valueAt = i == -1 ? this.g.valueAt(0) : this.g.get(this.d);
        return (this.e == -1 || !valueAt.b.get(this.e).a(f2, f3)) && this.e != valueAt.a(f2, f3);
    }

    public void a(i iVar) {
        this.i = iVar;
    }

    public int a(int i, int i2, int i3) {
        return b(-1, i, i2, i3);
    }

    public int a(int i, int i2, float f2, float f3) {
        a aVar = this.g.get(i2);
        if (aVar == null) {
            return i2;
        }
        if (f2 == -1.0f || f3 == -1.0f) {
            if (aVar.c == i) {
                return i;
            }
            Iterator<b> it = aVar.b.iterator();
            while (it.hasNext()) {
                if (i == it.next().f) {
                    return i;
                }
            }
            return aVar.c;
        }
        b bVar = null;
        Iterator<b> it2 = aVar.b.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.a(f2, f3)) {
                if (i == next.f) {
                    return i;
                }
                bVar = next;
            }
        }
        if (bVar != null) {
            return bVar.f;
        }
        return aVar.c;
    }

    public int b(int i, int i2, float f2, float f3) {
        a aVar;
        int a2;
        if (i != i2) {
            a aVar2 = this.g.get(i2);
            if (aVar2 == null) {
                return -1;
            }
            int a3 = aVar2.a(f2, f3);
            return a3 == -1 ? aVar2.c : aVar2.b.get(a3).f;
        }
        if (i2 == -1) {
            aVar = this.g.valueAt(0);
        } else {
            aVar = this.g.get(this.d);
        }
        if (aVar == null) {
            return -1;
        }
        return ((this.e == -1 || !aVar.b.get(i).a(f2, f3)) && i != (a2 = aVar.a(f2, f3))) ? a2 == -1 ? aVar.c : aVar.b.get(a2).f : i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        int f734a;
        ArrayList<b> b = new ArrayList<>();
        int c;
        boolean d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.c = -1;
            this.d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.State_android_id) {
                    this.f734a = obtainStyledAttributes.getResourceId(index, this.f734a);
                } else if (index == m.C0052m.State_constraints) {
                    this.c = obtainStyledAttributes.getResourceId(index, this.c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.c);
                    context.getResources().getResourceName(this.c);
                    if ("layout".equals(resourceTypeName)) {
                        this.d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.b.add(bVar);
        }

        public int a(float f, float f2) {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        int f735a;
        float b;
        float c;
        float d;
        float e;
        int f;
        boolean g;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.b = Float.NaN;
            this.c = Float.NaN;
            this.d = Float.NaN;
            this.e = Float.NaN;
            this.f = -1;
            this.g = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.Variant_constraints) {
                    this.f = obtainStyledAttributes.getResourceId(index, this.f);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f);
                    context.getResources().getResourceName(this.f);
                    if ("layout".equals(resourceTypeName)) {
                        this.g = true;
                    }
                } else if (index == m.C0052m.Variant_region_heightLessThan) {
                    this.e = obtainStyledAttributes.getDimension(index, this.e);
                } else if (index == m.C0052m.Variant_region_heightMoreThan) {
                    this.c = obtainStyledAttributes.getDimension(index, this.c);
                } else if (index == m.C0052m.Variant_region_widthLessThan) {
                    this.d = obtainStyledAttributes.getDimension(index, this.d);
                } else if (index == m.C0052m.Variant_region_widthMoreThan) {
                    this.b = obtainStyledAttributes.getDimension(index, this.b);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        boolean a(float f, float f2) {
            if (!Float.isNaN(this.b) && f < this.b) {
                return false;
            }
            if (!Float.isNaN(this.c) && f2 < this.c) {
                return false;
            }
            if (Float.isNaN(this.d) || f <= this.d) {
                return Float.isNaN(this.e) || f2 <= this.e;
            }
            return false;
        }
    }
}
