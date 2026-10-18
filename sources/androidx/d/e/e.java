package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.d.e.m;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f721a = "ConstraintLayoutStates";
    private static final boolean e = false;
    g b;
    private final d f;
    int c = -1;
    int d = -1;
    private SparseArray<a> g = new SparseArray<>();
    private SparseArray<g> h = new SparseArray<>();
    private i i = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, d dVar, int i) {
        this.f = dVar;
        a(context, i);
    }

    public boolean a(int i, float f, float f2) {
        if (this.c != i) {
            return true;
        }
        a valueAt = i == -1 ? this.g.valueAt(0) : this.g.get(this.c);
        return (this.d == -1 || !valueAt.b.get(this.d).a(f, f2)) && this.d != valueAt.a(f, f2);
    }

    public void b(int i, float f, float f2) {
        g gVar;
        int i2;
        a aVar;
        int a2;
        g gVar2;
        int i3;
        if (this.c == i) {
            if (i == -1) {
                aVar = this.g.valueAt(0);
            } else {
                aVar = this.g.get(this.c);
            }
            if ((this.d == -1 || !aVar.b.get(this.d).a(f, f2)) && this.d != (a2 = aVar.a(f, f2))) {
                if (a2 == -1) {
                    gVar2 = this.b;
                } else {
                    gVar2 = aVar.b.get(a2).g;
                }
                if (a2 == -1) {
                    i3 = aVar.c;
                } else {
                    i3 = aVar.b.get(a2).f;
                }
                if (gVar2 == null) {
                    return;
                }
                this.d = a2;
                if (this.i != null) {
                    this.i.a(-1, i3);
                }
                gVar2.c(this.f);
                if (this.i != null) {
                    this.i.b(-1, i3);
                    return;
                }
                return;
            }
            return;
        }
        this.c = i;
        a aVar2 = this.g.get(this.c);
        int a3 = aVar2.a(f, f2);
        if (a3 == -1) {
            gVar = aVar2.d;
        } else {
            gVar = aVar2.b.get(a3).g;
        }
        if (a3 == -1) {
            i2 = aVar2.c;
        } else {
            i2 = aVar2.b.get(a3).f;
        }
        if (gVar == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
            return;
        }
        this.d = a3;
        if (this.i != null) {
            this.i.a(i, i2);
        }
        gVar.c(this.f);
        if (this.i != null) {
            this.i.b(i, i2);
        }
    }

    public void a(i iVar) {
        this.i = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        int f722a;
        ArrayList<b> b = new ArrayList<>();
        int c;
        g d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.State_android_id) {
                    this.f722a = obtainStyledAttributes.getResourceId(index, this.f722a);
                } else if (index == m.C0052m.State_constraints) {
                    this.c = obtainStyledAttributes.getResourceId(index, this.c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.c);
                    context.getResources().getResourceName(this.c);
                    if ("layout".equals(resourceTypeName)) {
                        this.d = new g();
                        this.d.a(context, this.c);
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
        int f723a;
        float b;
        float c;
        float d;
        float e;
        int f;
        g g;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.b = Float.NaN;
            this.c = Float.NaN;
            this.d = Float.NaN;
            this.e = Float.NaN;
            this.f = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == m.C0052m.Variant_constraints) {
                    this.f = obtainStyledAttributes.getResourceId(index, this.f);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f);
                    context.getResources().getResourceName(this.f);
                    if ("layout".equals(resourceTypeName)) {
                        this.g = new g();
                        this.g.a(context, this.f);
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

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0090, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0056. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0012. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        a aVar = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xml.getName();
                            switch (name.hashCode()) {
                                case -1349929691:
                                    if (name.equals("ConstraintSet")) {
                                        c = 4;
                                        break;
                                    }
                                    break;
                                case 80204913:
                                    if (name.equals("State")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                                case 1382829617:
                                    if (name.equals("StateSet")) {
                                        break;
                                    }
                                    break;
                                case 1657696882:
                                    if (name.equals("layoutDescription")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case 1901439077:
                                    if (name.equals("Variant")) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                            }
                            c = 65535;
                            switch (c) {
                                case 0:
                                case 1:
                                    continue;
                                case 2:
                                    aVar = new a(context, xml);
                                    this.g.put(aVar.f722a, aVar);
                                    break;
                                case 3:
                                    b bVar = new b(context, xml);
                                    if (aVar == null) {
                                        break;
                                    } else {
                                        aVar.a(bVar);
                                        break;
                                    }
                                case 4:
                                    a(context, xml);
                                    break;
                                default:
                                    Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                    break;
                            }
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    private void a(Context context, XmlPullParser xmlPullParser) {
        g gVar = new g();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue != null && attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                gVar.a(context, xmlPullParser);
                this.h.put(identifier, gVar);
                return;
            }
        }
    }
}
