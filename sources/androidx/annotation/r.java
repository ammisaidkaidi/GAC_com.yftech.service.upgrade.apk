package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface r {
    double a() default Double.NEGATIVE_INFINITY;

    double b() default Double.POSITIVE_INFINITY;

    boolean c() default true;

    boolean d() default true;
}
