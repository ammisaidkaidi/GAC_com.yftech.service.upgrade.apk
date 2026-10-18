package androidx.annotation.a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface a {

    /* renamed from: androidx.annotation.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum EnumC0007a {
        WARNING,
        ERROR
    }

    EnumC0007a a() default EnumC0007a.ERROR;
}
