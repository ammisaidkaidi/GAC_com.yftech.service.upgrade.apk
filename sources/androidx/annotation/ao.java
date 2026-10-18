package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.CLASS)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface ao {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
        ao a() default @ao;
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
        ao a() default @ao;
    }

    String a() default "";

    String[] b() default {};

    String[] c() default {};

    boolean d() default false;
}
