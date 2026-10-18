package androidx.d.b.b;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.d.e.d;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static final int f614a = -1;
    static HashMap<String, Constructor<? extends e>> b = new HashMap<>();
    private static final String d = "KeyFrames";
    private HashMap<Integer, ArrayList<e>> c = new HashMap<>();

    static {
        try {
            b.put("KeyAttribute", f.class.getConstructor(new Class[0]));
            b.put("KeyPosition", k.class.getConstructor(new Class[0]));
            b.put("KeyCycle", h.class.getConstructor(new Class[0]));
            b.put("KeyTimeCycle", m.class.getConstructor(new Class[0]));
            b.put("KeyTrigger", n.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e(d, "unable to load", e);
        }
    }

    private void a(e eVar) {
        if (!this.c.containsKey(Integer.valueOf(eVar.c))) {
            this.c.put(Integer.valueOf(eVar.c), new ArrayList<>());
        }
        this.c.get(Integer.valueOf(eVar.c)).add(eVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0014. Please report as an issue. */
    public j(Context context, XmlPullParser xmlPullParser) {
        e eVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType != 0) {
                    switch (eventType) {
                        case 2:
                            String name = xmlPullParser.getName();
                            if (b.containsKey(name)) {
                                try {
                                    e newInstance = b.get(name).newInstance(new Object[0]);
                                    try {
                                        newInstance.a(context, Xml.asAttributeSet(xmlPullParser));
                                        a(newInstance);
                                        eVar = newInstance;
                                    } catch (Exception e) {
                                        e = e;
                                        eVar = newInstance;
                                        Log.e(d, "unable to create ", e);
                                        eventType = xmlPullParser.next();
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            } else if (name.equalsIgnoreCase("CustomAttribute") && eVar != null && eVar.f != null) {
                                androidx.d.e.b.a(context, xmlPullParser, eVar.f);
                            }
                            break;
                        case 3:
                            if (!"KeyFrameSet".equals(xmlPullParser.getName())) {
                                break;
                            } else {
                                return;
                            }
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
    }

    public void a(p pVar) {
        ArrayList<e> arrayList = this.c.get(Integer.valueOf(pVar.o));
        if (arrayList != null) {
            pVar.a(arrayList);
        }
        ArrayList<e> arrayList2 = this.c.get(-1);
        if (arrayList2 != null) {
            Iterator<e> it = arrayList2.iterator();
            while (it.hasNext()) {
                e next = it.next();
                if (next.a(((d.a) pVar.n.getLayoutParams()).an)) {
                    pVar.a(next);
                }
            }
        }
    }

    static String a(int i, Context context) {
        return context.getResources().getResourceEntryName(i);
    }

    public Set<Integer> a() {
        return this.c.keySet();
    }

    public ArrayList<e> a(int i) {
        return this.c.get(Integer.valueOf(i));
    }
}
