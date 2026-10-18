package androidx.d.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.core.n.af;
import androidx.d.e.m;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {
    private static final String c = "TransitionLayout";

    /* renamed from: a, reason: collision with root package name */
    String f712a;
    boolean b;
    private a d;
    private int e;
    private float f;
    private String g;
    private int h;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum a {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    private static int c(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public a a() {
        return this.d;
    }

    public void a(float f) {
        this.f = f;
    }

    public void a(int i) {
        this.h = i;
    }

    public void b(int i) {
        this.e = i;
    }

    public void a(String str) {
        this.g = str;
    }

    public int b() {
        switch (this.d) {
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                return 4;
            default:
                return 1;
        }
    }

    public float c() {
        switch (this.d) {
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case INT_TYPE:
                return this.e;
            case FLOAT_TYPE:
                return this.f;
            case STRING_TYPE:
                throw new RuntimeException("Cannot interpolate String");
            case BOOLEAN_TYPE:
                return this.b ? 1.0f : 0.0f;
            case DIMENSION_TYPE:
                return this.f;
            default:
                return Float.NaN;
        }
    }

    public void a(float[] fArr) {
        switch (this.d) {
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                int i = (this.h >> 24) & 255;
                int i2 = (this.h >> 16) & 255;
                int i3 = (this.h >> 8) & 255;
                int i4 = this.h & 255;
                float pow = (float) Math.pow(i2 / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(i3 / 255.0f, 2.2d);
                float pow3 = (float) Math.pow(i4 / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = pow3;
                fArr[3] = i / 255.0f;
                return;
            case INT_TYPE:
                fArr[0] = this.e;
                return;
            case FLOAT_TYPE:
                fArr[0] = this.f;
                return;
            case STRING_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case BOOLEAN_TYPE:
                fArr[0] = this.b ? 1.0f : 0.0f;
                return;
            case DIMENSION_TYPE:
                fArr[0] = this.f;
                return;
            default:
                return;
        }
    }

    public void b(float[] fArr) {
        switch (this.d) {
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                this.h = Color.HSVToColor(fArr);
                this.h = (c((int) (fArr[3] * 255.0f)) << 24) | (this.h & af.r);
                return;
            case INT_TYPE:
                this.e = (int) fArr[0];
                return;
            case FLOAT_TYPE:
                this.f = fArr[0];
                return;
            case STRING_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case BOOLEAN_TYPE:
                this.b = ((double) fArr[0]) > 0.5d;
                return;
            case DIMENSION_TYPE:
                this.f = fArr[0];
                return;
            default:
                return;
        }
    }

    public boolean a(b bVar) {
        if (bVar == null || this.d != bVar.d) {
            return false;
        }
        switch (this.d) {
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                return this.h == bVar.h;
            case INT_TYPE:
                return this.e == bVar.e;
            case FLOAT_TYPE:
                return this.f == bVar.f;
            case STRING_TYPE:
                return this.e == bVar.e;
            case BOOLEAN_TYPE:
                return this.b == bVar.b;
            case DIMENSION_TYPE:
                return this.f == bVar.f;
            default:
                return false;
        }
    }

    public b(String str, a aVar) {
        this.f712a = str;
        this.d = aVar;
    }

    public b(String str, a aVar, Object obj) {
        this.f712a = str;
        this.d = aVar;
        a(obj);
    }

    public b(b bVar, Object obj) {
        this.f712a = bVar.f712a;
        this.d = bVar.d;
        a(obj);
    }

    public void a(Object obj) {
        switch (this.d) {
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                this.h = ((Integer) obj).intValue();
                return;
            case INT_TYPE:
                this.e = ((Integer) obj).intValue();
                return;
            case FLOAT_TYPE:
                this.f = ((Float) obj).floatValue();
                return;
            case STRING_TYPE:
                this.g = (String) obj;
                return;
            case BOOLEAN_TYPE:
                this.b = ((Boolean) obj).booleanValue();
                return;
            case DIMENSION_TYPE:
                this.f = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public static HashMap<String, b> a(HashMap<String, b> hashMap, View view) {
        HashMap<String, b> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            b bVar = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new b(bVar, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return hashMap2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x003b. Please report as an issue. */
    public static void a(View view, HashMap<String, b> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            b bVar = hashMap.get(str);
            String str2 = "set" + str;
            try {
                switch (bVar.d) {
                    case COLOR_TYPE:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(bVar.h));
                        break;
                    case COLOR_DRAWABLE_TYPE:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(bVar.h);
                        method.invoke(view, colorDrawable);
                        break;
                    case INT_TYPE:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(bVar.e));
                        break;
                    case FLOAT_TYPE:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(bVar.f));
                        break;
                    case STRING_TYPE:
                        cls.getMethod(str2, CharSequence.class).invoke(view, bVar.g);
                        break;
                    case BOOLEAN_TYPE:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(bVar.b));
                        break;
                    case DIMENSION_TYPE:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(bVar.f));
                        break;
                }
            } catch (IllegalAccessException e) {
                Log.e(c, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e(c, e2.getMessage());
                Log.e(c, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(str2);
                Log.e(c, sb.toString());
            } catch (InvocationTargetException e3) {
                Log.e(c, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e3.printStackTrace();
            }
        }
    }

    public void a(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.f712a;
        try {
            boolean z = true;
            switch (this.d) {
                case COLOR_TYPE:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((c((int) (fArr[3] * 255.0f)) << 24) | (c((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (c((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | c((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case COLOR_DRAWABLE_TYPE:
                    Method method = cls.getMethod(str, Drawable.class);
                    int c2 = (c((int) (fArr[3] * 255.0f)) << 24) | (c((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (c((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | c((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(c2);
                    method.invoke(view, colorDrawable);
                    return;
                case INT_TYPE:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case FLOAT_TYPE:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case STRING_TYPE:
                    throw new RuntimeException("unable to interpolate strings " + this.f712a);
                case BOOLEAN_TYPE:
                    Method method2 = cls.getMethod(str, Boolean.TYPE);
                    Object[] objArr = new Object[1];
                    if (fArr[0] <= 0.5f) {
                        z = false;
                    }
                    objArr[0] = Boolean.valueOf(z);
                    method2.invoke(view, objArr);
                    return;
                case DIMENSION_TYPE:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            Log.e(c, "cannot access method " + str + "on View \"" + androidx.d.b.b.c.a(view) + "\"");
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e(c, "no method " + str + "on View \"" + androidx.d.b.b.c.a(view) + "\"");
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public static void a(Context context, XmlPullParser xmlPullParser, HashMap<String, b> hashMap) {
        a aVar;
        Object string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        a aVar2 = null;
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == m.C0052m.CustomAttribute_attributeName) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == m.C0052m.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                aVar2 = a.BOOLEAN_TYPE;
            } else {
                if (index == m.C0052m.CustomAttribute_customColorValue) {
                    aVar = a.COLOR_TYPE;
                    string = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == m.C0052m.CustomAttribute_customColorDrawableValue) {
                    aVar = a.COLOR_DRAWABLE_TYPE;
                    string = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == m.C0052m.CustomAttribute_customPixelDimension) {
                    aVar = a.DIMENSION_TYPE;
                    string = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == m.C0052m.CustomAttribute_customDimension) {
                    aVar = a.DIMENSION_TYPE;
                    string = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == m.C0052m.CustomAttribute_customFloatValue) {
                    aVar = a.FLOAT_TYPE;
                    string = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == m.C0052m.CustomAttribute_customIntegerValue) {
                    aVar = a.INT_TYPE;
                    string = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else if (index == m.C0052m.CustomAttribute_customStringValue) {
                    aVar = a.STRING_TYPE;
                    string = obtainStyledAttributes.getString(index);
                }
                Object obj2 = string;
                aVar2 = aVar;
                obj = obj2;
            }
        }
        if (str != null && obj != null) {
            hashMap.put(str, new b(str, aVar2, obj));
        }
        obtainStyledAttributes.recycle();
    }
}
