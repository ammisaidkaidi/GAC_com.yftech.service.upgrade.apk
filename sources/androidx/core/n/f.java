package androidx.core.n;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final View f559a;
    private final a b;
    private int c;
    private int d;
    private boolean e;
    private final View.OnLongClickListener f = new View.OnLongClickListener() { // from class: androidx.core.n.f.1
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return f.this.a(view);
        }
    };
    private final View.OnTouchListener g = new View.OnTouchListener() { // from class: androidx.core.n.f.2
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return f.this.a(view, motionEvent);
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        boolean a(View view, f fVar);
    }

    public f(View view, a aVar) {
        this.f559a = view;
        this.b = aVar;
    }

    public void a() {
        this.f559a.setOnLongClickListener(this.f);
        this.f559a.setOnTouchListener(this.g);
    }

    public void b() {
        this.f559a.setOnLongClickListener(null);
        this.f559a.setOnTouchListener(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean a(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                this.c = x;
                this.d = y;
                return false;
            case 1:
            case 3:
                this.e = false;
                return false;
            case 2:
                if (p.e(motionEvent, 8194) && (motionEvent.getButtonState() & 1) != 0 && !this.e && (this.c != x || this.d != y)) {
                    this.c = x;
                    this.d = y;
                    this.e = this.b.a(view, this);
                    return this.e;
                }
                return false;
            default:
                return false;
        }
    }

    public boolean a(View view) {
        return this.b.a(view, this);
    }

    public void a(Point point) {
        point.set(this.c, this.d);
    }
}
