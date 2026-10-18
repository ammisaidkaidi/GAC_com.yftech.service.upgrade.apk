package androidx.j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import java.io.IOException;
import java.lang.reflect.Constructor;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class ah {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?>[] f850a = {Context.class, AttributeSet.class};
    private static final androidx.c.a<String, Constructor<?>> b = new androidx.c.a<>();
    private final Context c;

    private ah(@androidx.annotation.ah Context context) {
        this.c = context;
    }

    public static ah a(Context context) {
        return new ah(context);
    }

    public ag a(int i) {
        XmlResourceParser xml = this.c.getResources().getXml(i);
        try {
            try {
                return a(xml, Xml.asAttributeSet(xml), (ag) null);
            } catch (IOException e) {
                throw new InflateException(xml.getPositionDescription() + ": " + e.getMessage(), e);
            } catch (XmlPullParserException e2) {
                throw new InflateException(e2.getMessage(), e2);
            }
        } finally {
            xml.close();
        }
    }

    public aj a(int i, ViewGroup viewGroup) {
        XmlResourceParser xml = this.c.getResources().getXml(i);
        try {
            try {
                return a(xml, Xml.asAttributeSet(xml), viewGroup);
            } catch (IOException e) {
                InflateException inflateException = new InflateException(xml.getPositionDescription() + ": " + e.getMessage());
                inflateException.initCause(e);
                throw inflateException;
            } catch (XmlPullParserException e2) {
                InflateException inflateException2 = new InflateException(e2.getMessage());
                inflateException2.initCause(e2);
                throw inflateException2;
            }
        } finally {
            xml.close();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0182, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ag a(XmlPullParser xmlPullParser, AttributeSet attributeSet, ag agVar) {
        int depth = xmlPullParser.getDepth();
        al alVar = agVar instanceof al ? (al) agVar : null;
        loop0: while (true) {
            ag agVar2 = null;
            while (true) {
                int next = xmlPullParser.next();
                if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                    if (next == 2) {
                        String name = xmlPullParser.getName();
                        if ("fade".equals(name)) {
                            agVar2 = new l(this.c, attributeSet);
                        } else if ("changeBounds".equals(name)) {
                            agVar2 = new e(this.c, attributeSet);
                        } else if ("slide".equals(name)) {
                            agVar2 = new ae(this.c, attributeSet);
                        } else if ("explode".equals(name)) {
                            agVar2 = new k(this.c, attributeSet);
                        } else if ("changeImageTransform".equals(name)) {
                            agVar2 = new g(this.c, attributeSet);
                        } else if ("changeTransform".equals(name)) {
                            agVar2 = new i(this.c, attributeSet);
                        } else if ("changeClipBounds".equals(name)) {
                            agVar2 = new f(this.c, attributeSet);
                        } else if ("autoTransition".equals(name)) {
                            agVar2 = new c(this.c, attributeSet);
                        } else if ("changeScroll".equals(name)) {
                            agVar2 = new h(this.c, attributeSet);
                        } else if ("transitionSet".equals(name)) {
                            agVar2 = new al(this.c, attributeSet);
                        } else if ("transition".equals(name)) {
                            agVar2 = (ag) a(attributeSet, ag.class, "transition");
                        } else if ("targets".equals(name)) {
                            b(xmlPullParser, attributeSet, agVar);
                        } else if ("arcMotion".equals(name)) {
                            if (agVar == null) {
                                throw new RuntimeException("Invalid use of arcMotion element");
                            }
                            agVar.a(new b(this.c, attributeSet));
                        } else if ("pathMotion".equals(name)) {
                            if (agVar == null) {
                                throw new RuntimeException("Invalid use of pathMotion element");
                            }
                            agVar.a((w) a(attributeSet, w.class, "pathMotion"));
                        } else {
                            if (!"patternPathMotion".equals(name)) {
                                throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
                            }
                            if (agVar == null) {
                                throw new RuntimeException("Invalid use of patternPathMotion element");
                            }
                            agVar.a(new y(this.c, attributeSet));
                        }
                        if (agVar2 == null) {
                            continue;
                        } else {
                            if (!xmlPullParser.isEmptyElementTag()) {
                                a(xmlPullParser, attributeSet, agVar2);
                            }
                            if (alVar != null) {
                                break;
                            }
                            if (agVar != null) {
                                throw new InflateException("Could not add transition to another transition.");
                            }
                        }
                    }
                }
            }
            alVar.a(agVar2);
        }
    }

    private Object a(AttributeSet attributeSet, Class<?> cls, String str) {
        Object newInstance;
        Class<? extends U> asSubclass;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        if (attributeValue == null) {
            throw new InflateException(str + " tag must have a 'class' attribute");
        }
        try {
            synchronized (b) {
                Constructor<?> constructor = b.get(attributeValue);
                if (constructor == null && (asSubclass = Class.forName(attributeValue, false, this.c.getClassLoader()).asSubclass(cls)) != 0) {
                    constructor = asSubclass.getConstructor(f850a);
                    constructor.setAccessible(true);
                    b.put(attributeValue, constructor);
                }
                newInstance = constructor.newInstance(this.c, attributeSet);
            }
            return newInstance;
        } catch (Exception e) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e);
        }
    }

    @SuppressLint({"RestrictedApi"})
    private void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, ag agVar) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                if (xmlPullParser.getName().equals("target")) {
                    TypedArray obtainStyledAttributes = this.c.obtainStyledAttributes(attributeSet, af.f834a);
                    int c = androidx.core.b.b.h.c(obtainStyledAttributes, xmlPullParser, "targetId", 1, 0);
                    if (c != 0) {
                        agVar.b(c);
                    } else {
                        int c2 = androidx.core.b.b.h.c(obtainStyledAttributes, xmlPullParser, "excludeId", 2, 0);
                        if (c2 != 0) {
                            agVar.a(c2, true);
                        } else {
                            String a2 = androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "targetName", 4);
                            if (a2 != null) {
                                agVar.a(a2);
                            } else {
                                String a3 = androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "excludeName", 5);
                                if (a3 != null) {
                                    agVar.a(a3, true);
                                } else {
                                    String a4 = androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "excludeClass", 3);
                                    if (a4 != null) {
                                        try {
                                            agVar.a(Class.forName(a4), true);
                                        } catch (ClassNotFoundException e) {
                                            e = e;
                                            obtainStyledAttributes.recycle();
                                            throw new RuntimeException("Could not create " + a4, e);
                                        }
                                    } else {
                                        String a5 = androidx.core.b.b.h.a(obtainStyledAttributes, xmlPullParser, "targetClass", 0);
                                        if (a5 != null) {
                                            try {
                                                agVar.a(Class.forName(a5));
                                            } catch (ClassNotFoundException e2) {
                                                e = e2;
                                                a4 = a5;
                                                obtainStyledAttributes.recycle();
                                                throw new RuntimeException("Could not create " + a4, e);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    obtainStyledAttributes.recycle();
                } else {
                    throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0054, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private aj a(XmlPullParser xmlPullParser, AttributeSet attributeSet, ViewGroup viewGroup) {
        int depth = xmlPullParser.getDepth();
        aj ajVar = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("transitionManager")) {
                        ajVar = new aj();
                    } else {
                        if (!name.equals("transition") || ajVar == null) {
                            break;
                        }
                        a(attributeSet, xmlPullParser, viewGroup, ajVar);
                    }
                }
            }
        }
        throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
    }

    @SuppressLint({"RestrictedApi"})
    private void a(AttributeSet attributeSet, XmlPullParser xmlPullParser, ViewGroup viewGroup, aj ajVar) {
        ag a2;
        TypedArray obtainStyledAttributes = this.c.obtainStyledAttributes(attributeSet, af.b);
        int c = androidx.core.b.b.h.c(obtainStyledAttributes, xmlPullParser, "transition", 2, -1);
        int c2 = androidx.core.b.b.h.c(obtainStyledAttributes, xmlPullParser, "fromScene", 0, -1);
        ac a3 = c2 < 0 ? null : ac.a(viewGroup, c2, this.c);
        int c3 = androidx.core.b.b.h.c(obtainStyledAttributes, xmlPullParser, "toScene", 1, -1);
        ac a4 = c3 >= 0 ? ac.a(viewGroup, c3, this.c) : null;
        if (c >= 0 && (a2 = a(c)) != null) {
            if (a4 == null) {
                throw new RuntimeException("No toScene for transition ID " + c);
            }
            if (a3 == null) {
                ajVar.a(a4, a2);
            } else {
                ajVar.a(a3, a4, a2);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
