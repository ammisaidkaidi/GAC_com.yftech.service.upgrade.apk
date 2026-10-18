package androidx.k.b.a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.annotation.ah;
import androidx.annotation.am;

/* loaded from: /home/user/work/dex/classes.dex */
public interface b extends Animatable {
    void a();

    void a(@ah a aVar);

    boolean b(@ah a aVar);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class a {

        /* renamed from: a, reason: collision with root package name */
        Animatable2.AnimationCallback f919a;

        public void a(Drawable drawable) {
        }

        public void b(Drawable drawable) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @am(a = 23)
        public Animatable2.AnimationCallback a() {
            if (this.f919a == null) {
                this.f919a = new Animatable2.AnimationCallback() { // from class: androidx.k.b.a.b.a.1
                    @Override // android.graphics.drawable.Animatable2.AnimationCallback
                    public void onAnimationStart(Drawable drawable) {
                        a.this.a(drawable);
                    }

                    @Override // android.graphics.drawable.Animatable2.AnimationCallback
                    public void onAnimationEnd(Drawable drawable) {
                        a.this.b(drawable);
                    }
                };
            }
            return this.f919a;
        }
    }
}
