package androidx.core.n;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* loaded from: /home/user/work/dex/classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private final a f562a;

    /* loaded from: /home/user/work/dex/classes.dex */
    interface a {
        void a(GestureDetector.OnDoubleTapListener onDoubleTapListener);

        void a(boolean z);

        boolean a();

        boolean a(MotionEvent motionEvent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class b implements a {
        private static final int j = ViewConfiguration.getLongPressTimeout();
        private static final int k = ViewConfiguration.getTapTimeout();
        private static final int l = ViewConfiguration.getDoubleTapTimeout();
        private static final int m = 1;
        private static final int n = 2;
        private static final int o = 3;
        private VelocityTracker A;

        /* renamed from: a, reason: collision with root package name */
        final GestureDetector.OnGestureListener f563a;
        GestureDetector.OnDoubleTapListener b;
        boolean c;
        boolean d;
        MotionEvent e;
        private int f;
        private int g;
        private int h;
        private int i;
        private final Handler p;
        private boolean q;
        private boolean r;
        private boolean s;
        private MotionEvent t;
        private boolean u;
        private float v;
        private float w;
        private float x;
        private float y;
        private boolean z;

        /* loaded from: /home/user/work/dex/classes.dex */
        private class a extends Handler {
            a() {
            }

            a(Handler handler) {
                super(handler.getLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        b.this.f563a.onShowPress(b.this.e);
                        return;
                    case 2:
                        b.this.b();
                        return;
                    case 3:
                        if (b.this.b != null) {
                            if (!b.this.c) {
                                b.this.b.onSingleTapConfirmed(b.this.e);
                                return;
                            } else {
                                b.this.d = true;
                                return;
                            }
                        }
                        return;
                    default:
                        throw new RuntimeException("Unknown message " + message);
                }
            }
        }

        b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.p = new a(handler);
            } else {
                this.p = new a();
            }
            this.f563a = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                a((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            a(context);
        }

        private void a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            if (this.f563a == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            this.z = true;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.h = viewConfiguration.getScaledMinimumFlingVelocity();
            this.i = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f = scaledTouchSlop * scaledTouchSlop;
            this.g = scaledDoubleTapSlop * scaledDoubleTapSlop;
        }

        @Override // androidx.core.n.g.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.b = onDoubleTapListener;
        }

        @Override // androidx.core.n.g.a
        public void a(boolean z) {
            this.z = z;
        }

        @Override // androidx.core.n.g.a
        public boolean a() {
            return this.z;
        }

        /* JADX WARN: Removed duplicated region for block: B:106:0x0204  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x021d  */
        @Override // androidx.core.n.g.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean a(MotionEvent motionEvent) {
            boolean z;
            boolean onFling;
            int action = motionEvent.getAction();
            if (this.A == null) {
                this.A = VelocityTracker.obtain();
            }
            this.A.addMovement(motionEvent);
            int i = action & 255;
            boolean z2 = i == 6;
            int actionIndex = z2 ? motionEvent.getActionIndex() : -1;
            int pointerCount = motionEvent.getPointerCount();
            float f = 0.0f;
            float f2 = 0.0f;
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (actionIndex != i2) {
                    f += motionEvent.getX(i2);
                    f2 += motionEvent.getY(i2);
                }
            }
            float f3 = z2 ? pointerCount - 1 : pointerCount;
            float f4 = f / f3;
            float f5 = f2 / f3;
            switch (i) {
                case 0:
                    if (this.b != null) {
                        boolean hasMessages = this.p.hasMessages(3);
                        if (hasMessages) {
                            this.p.removeMessages(3);
                        }
                        if (this.e != null && this.t != null && hasMessages && a(this.e, this.t, motionEvent)) {
                            this.u = true;
                            z = this.b.onDoubleTap(this.e) | false | this.b.onDoubleTapEvent(motionEvent);
                            this.v = f4;
                            this.x = f4;
                            this.w = f5;
                            this.y = f5;
                            if (this.e != null) {
                                this.e.recycle();
                            }
                            this.e = MotionEvent.obtain(motionEvent);
                            this.r = true;
                            this.s = true;
                            this.c = true;
                            this.q = false;
                            this.d = false;
                            if (this.z) {
                                this.p.removeMessages(2);
                                this.p.sendEmptyMessageAtTime(2, this.e.getDownTime() + k + j);
                            }
                            this.p.sendEmptyMessageAtTime(1, this.e.getDownTime() + k);
                            return z | this.f563a.onDown(motionEvent);
                        }
                        this.p.sendEmptyMessageDelayed(3, l);
                    }
                    z = false;
                    this.v = f4;
                    this.x = f4;
                    this.w = f5;
                    this.y = f5;
                    if (this.e != null) {
                    }
                    this.e = MotionEvent.obtain(motionEvent);
                    this.r = true;
                    this.s = true;
                    this.c = true;
                    this.q = false;
                    this.d = false;
                    if (this.z) {
                    }
                    this.p.sendEmptyMessageAtTime(1, this.e.getDownTime() + k);
                    return z | this.f563a.onDown(motionEvent);
                case 1:
                    this.c = false;
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    if (this.u) {
                        onFling = this.b.onDoubleTapEvent(motionEvent) | false;
                    } else {
                        if (this.q) {
                            this.p.removeMessages(3);
                            this.q = false;
                        } else if (this.r) {
                            boolean onSingleTapUp = this.f563a.onSingleTapUp(motionEvent);
                            if (this.d && this.b != null) {
                                this.b.onSingleTapConfirmed(motionEvent);
                            }
                            onFling = onSingleTapUp;
                        } else {
                            VelocityTracker velocityTracker = this.A;
                            int pointerId = motionEvent.getPointerId(0);
                            velocityTracker.computeCurrentVelocity(1000, this.i);
                            float yVelocity = velocityTracker.getYVelocity(pointerId);
                            float xVelocity = velocityTracker.getXVelocity(pointerId);
                            if (Math.abs(yVelocity) > this.h || Math.abs(xVelocity) > this.h) {
                                onFling = this.f563a.onFling(this.e, motionEvent, xVelocity, yVelocity);
                            }
                        }
                        onFling = false;
                    }
                    if (this.t != null) {
                        this.t.recycle();
                    }
                    this.t = obtain;
                    if (this.A != null) {
                        this.A.recycle();
                        this.A = null;
                    }
                    this.u = false;
                    this.d = false;
                    this.p.removeMessages(1);
                    this.p.removeMessages(2);
                    break;
                case 2:
                    if (this.q) {
                        return false;
                    }
                    float f6 = this.v - f4;
                    float f7 = this.w - f5;
                    if (this.u) {
                        return false | this.b.onDoubleTapEvent(motionEvent);
                    }
                    if (!this.r) {
                        if (Math.abs(f6) < 1.0f && Math.abs(f7) < 1.0f) {
                            return false;
                        }
                        boolean onScroll = this.f563a.onScroll(this.e, motionEvent, f6, f7);
                        this.v = f4;
                        this.w = f5;
                        return onScroll;
                    }
                    int i3 = (int) (f4 - this.x);
                    int i4 = (int) (f5 - this.y);
                    int i5 = (i3 * i3) + (i4 * i4);
                    if (i5 > this.f) {
                        onFling = this.f563a.onScroll(this.e, motionEvent, f6, f7);
                        this.v = f4;
                        this.w = f5;
                        this.r = false;
                        this.p.removeMessages(3);
                        this.p.removeMessages(1);
                        this.p.removeMessages(2);
                    } else {
                        onFling = false;
                    }
                    if (i5 > this.f) {
                        this.s = false;
                        break;
                    }
                    break;
                case 3:
                    c();
                    return false;
                case 4:
                default:
                    return false;
                case 5:
                    this.v = f4;
                    this.x = f4;
                    this.w = f5;
                    this.y = f5;
                    d();
                    return false;
                case 6:
                    this.v = f4;
                    this.x = f4;
                    this.w = f5;
                    this.y = f5;
                    this.A.computeCurrentVelocity(1000, this.i);
                    int actionIndex2 = motionEvent.getActionIndex();
                    int pointerId2 = motionEvent.getPointerId(actionIndex2);
                    float xVelocity2 = this.A.getXVelocity(pointerId2);
                    float yVelocity2 = this.A.getYVelocity(pointerId2);
                    for (int i6 = 0; i6 < pointerCount; i6++) {
                        if (i6 != actionIndex2) {
                            int pointerId3 = motionEvent.getPointerId(i6);
                            if ((this.A.getXVelocity(pointerId3) * xVelocity2) + (this.A.getYVelocity(pointerId3) * yVelocity2) < 0.0f) {
                                this.A.clear();
                                return false;
                            }
                        }
                    }
                    return false;
            }
            return onFling;
        }

        private void c() {
            this.p.removeMessages(1);
            this.p.removeMessages(2);
            this.p.removeMessages(3);
            this.A.recycle();
            this.A = null;
            this.u = false;
            this.c = false;
            this.r = false;
            this.s = false;
            this.d = false;
            if (this.q) {
                this.q = false;
            }
        }

        private void d() {
            this.p.removeMessages(1);
            this.p.removeMessages(2);
            this.p.removeMessages(3);
            this.u = false;
            this.r = false;
            this.s = false;
            this.d = false;
            if (this.q) {
                this.q = false;
            }
        }

        private boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.s || motionEvent3.getEventTime() - motionEvent2.getEventTime() > l) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x * x) + (y * y) < this.g;
        }

        void b() {
            this.p.removeMessages(3);
            this.d = false;
            this.q = true;
            this.f563a.onLongPress(this.e);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class c implements a {

        /* renamed from: a, reason: collision with root package name */
        private final GestureDetector f565a;

        c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f565a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.n.g.a
        public boolean a() {
            return this.f565a.isLongpressEnabled();
        }

        @Override // androidx.core.n.g.a
        public boolean a(MotionEvent motionEvent) {
            return this.f565a.onTouchEvent(motionEvent);
        }

        @Override // androidx.core.n.g.a
        public void a(boolean z) {
            this.f565a.setIsLongpressEnabled(z);
        }

        @Override // androidx.core.n.g.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f565a.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public g(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public g(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f562a = new c(context, onGestureListener, handler);
        } else {
            this.f562a = new b(context, onGestureListener, handler);
        }
    }

    public boolean a() {
        return this.f562a.a();
    }

    public boolean a(MotionEvent motionEvent) {
        return this.f562a.a(motionEvent);
    }

    public void a(boolean z) {
        this.f562a.a(z);
    }

    public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f562a.a(onDoubleTapListener);
    }
}
