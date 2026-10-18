package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface p {

    /* renamed from: a, reason: collision with root package name */
    public static final int f28a = 0;
    public static final int b = 1;
    public static final int c = 2;

    int a() default 1;
}
