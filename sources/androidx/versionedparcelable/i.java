package androidx.versionedparcelable;

import androidx.annotation.ap;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.SOURCE)
@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public @interface i {
    boolean a() default false;

    boolean b() default false;

    boolean c() default false;

    int[] d() default {};

    String e() default "";

    Class f() default void.class;
}
