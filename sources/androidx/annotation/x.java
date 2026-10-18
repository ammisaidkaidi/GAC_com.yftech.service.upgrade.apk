package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface x {

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
        String a();

        int b();
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
        String a();

        int b();

        int c() default 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum c {
        NONE,
        INFERRED,
        INT_ENUM,
        INT_FLAG,
        COLOR,
        GRAVITY,
        RESOURCE_ID
    }

    String a() default "";

    int b() default 0;

    boolean c() default true;

    c d() default c.INFERRED;

    a[] e() default {};

    b[] f() default {};
}
