package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.ap;
import androidx.core.app.p;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
class q implements o {

    /* renamed from: a, reason: collision with root package name */
    private final Notification.Builder f375a;
    private final p.f b;
    private RemoteViews c;
    private RemoteViews d;
    private final List<Bundle> e = new ArrayList();
    private final Bundle f = new Bundle();
    private int g;
    private RemoteViews h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p.f fVar) {
        this.b = fVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f375a = new Notification.Builder(fVar.f366a, fVar.J);
        } else {
            this.f375a = new Notification.Builder(fVar.f366a);
        }
        Notification notification = fVar.Q;
        this.f375a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, fVar.h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(fVar.d).setContentText(fVar.e).setContentInfo(fVar.j).setContentIntent(fVar.f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(fVar.g, (notification.flags & 128) != 0).setLargeIcon(fVar.i).setNumber(fVar.k).setProgress(fVar.s, fVar.t, fVar.u);
        if (Build.VERSION.SDK_INT < 21) {
            this.f375a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f375a.setSubText(fVar.q).setUsesChronometer(fVar.n).setPriority(fVar.l);
            Iterator<p.a> it = fVar.b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            if (fVar.C != null) {
                this.f.putAll(fVar.C);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (fVar.y) {
                    this.f.putBoolean(r.f376a, true);
                }
                if (fVar.v != null) {
                    this.f.putString(r.b, fVar.v);
                    if (fVar.w) {
                        this.f.putBoolean(r.c, true);
                    } else {
                        this.f.putBoolean(u.f378a, true);
                    }
                }
                if (fVar.x != null) {
                    this.f.putString(r.d, fVar.x);
                }
            }
            this.c = fVar.G;
            this.d = fVar.H;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f375a.setShowWhen(fVar.m);
            if (Build.VERSION.SDK_INT < 21 && fVar.S != null && !fVar.S.isEmpty()) {
                this.f.putStringArray(p.P, (String[]) fVar.S.toArray(new String[fVar.S.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f375a.setLocalOnly(fVar.y).setGroup(fVar.v).setGroupSummary(fVar.w).setSortKey(fVar.x);
            this.g = fVar.N;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f375a.setCategory(fVar.B).setColor(fVar.D).setVisibility(fVar.E).setPublicVersion(fVar.F).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = fVar.S.iterator();
            while (it2.hasNext()) {
                this.f375a.addPerson(it2.next());
            }
            this.h = fVar.I;
            if (fVar.c.size() > 0) {
                Bundle bundle = fVar.b().getBundle("android.car.EXTENSIONS");
                bundle = bundle == null ? new Bundle() : bundle;
                Bundle bundle2 = new Bundle();
                for (int i = 0; i < fVar.c.size(); i++) {
                    bundle2.putBundle(Integer.toString(i), s.a(fVar.c.get(i)));
                }
                bundle.putBundle("invisible_actions", bundle2);
                fVar.b().putBundle("android.car.EXTENSIONS", bundle);
                this.f.putBundle("android.car.EXTENSIONS", bundle);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f375a.setExtras(fVar.C).setRemoteInputHistory(fVar.r);
            if (fVar.G != null) {
                this.f375a.setCustomContentView(fVar.G);
            }
            if (fVar.H != null) {
                this.f375a.setCustomBigContentView(fVar.H);
            }
            if (fVar.I != null) {
                this.f375a.setCustomHeadsUpContentView(fVar.I);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f375a.setBadgeIconType(fVar.K).setShortcutId(fVar.L).setTimeoutAfter(fVar.M).setGroupAlertBehavior(fVar.N);
            if (fVar.A) {
                this.f375a.setColorized(fVar.z);
            }
            if (!TextUtils.isEmpty(fVar.J)) {
                this.f375a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f375a.setAllowSystemGeneratedContextualActions(fVar.O);
            this.f375a.setBubbleMetadata(p.e.a(fVar.P));
        }
        if (fVar.R) {
            if (this.b.w) {
                this.g = 2;
            } else {
                this.g = 1;
            }
            this.f375a.setVibrate(null);
            this.f375a.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.f375a.setDefaults(notification.defaults);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.b.v)) {
                    this.f375a.setGroup(p.aA);
                }
                this.f375a.setGroupAlertBehavior(this.g);
            }
        }
    }

    @Override // androidx.core.app.o
    public Notification.Builder a() {
        return this.f375a;
    }

    public Notification b() {
        Bundle a2;
        RemoteViews d;
        RemoteViews c;
        p.o oVar = this.b.p;
        if (oVar != null) {
            oVar.a(this);
        }
        RemoteViews b = oVar != null ? oVar.b(this) : null;
        Notification c2 = c();
        if (b != null) {
            c2.contentView = b;
        } else if (this.b.G != null) {
            c2.contentView = this.b.G;
        }
        if (Build.VERSION.SDK_INT >= 16 && oVar != null && (c = oVar.c(this)) != null) {
            c2.bigContentView = c;
        }
        if (Build.VERSION.SDK_INT >= 21 && oVar != null && (d = this.b.p.d(this)) != null) {
            c2.headsUpContentView = d;
        }
        if (Build.VERSION.SDK_INT >= 16 && oVar != null && (a2 = p.a(c2)) != null) {
            oVar.a(a2);
        }
        return c2;
    }

    private void a(p.a aVar) {
        Notification.Action.Builder builder;
        Bundle bundle;
        if (Build.VERSION.SDK_INT >= 20) {
            IconCompat b = aVar.b();
            if (Build.VERSION.SDK_INT >= 23) {
                builder = new Notification.Action.Builder(b != null ? b.f() : null, aVar.c(), aVar.d());
            } else {
                builder = new Notification.Action.Builder(b != null ? b.c() : 0, aVar.c(), aVar.d());
            }
            if (aVar.g() != null) {
                for (RemoteInput remoteInput : w.a(aVar.g())) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            if (aVar.e() != null) {
                bundle = new Bundle(aVar.e());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.f());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.f());
            }
            bundle.putInt("android.support.action.semanticAction", aVar.h());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.h());
            }
            if (Build.VERSION.SDK_INT >= 29) {
                builder.setContextual(aVar.i());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.k());
            builder.addExtras(bundle);
            this.f375a.addAction(builder.build());
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.e.add(s.a(this.f375a, aVar));
        }
    }

    protected Notification c() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f375a.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification build = this.f375a.build();
            if (this.g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.g == 2) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.g == 1) {
                    a(build);
                }
            }
            return build;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f375a.setExtras(this.f);
            Notification build2 = this.f375a.build();
            if (this.c != null) {
                build2.contentView = this.c;
            }
            if (this.d != null) {
                build2.bigContentView = this.d;
            }
            if (this.h != null) {
                build2.headsUpContentView = this.h;
            }
            if (this.g != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.g == 2) {
                    a(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.g == 1) {
                    a(build2);
                }
            }
            return build2;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f375a.setExtras(this.f);
            Notification build3 = this.f375a.build();
            if (this.c != null) {
                build3.contentView = this.c;
            }
            if (this.d != null) {
                build3.bigContentView = this.d;
            }
            if (this.g != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.g == 2) {
                    a(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.g == 1) {
                    a(build3);
                }
            }
            return build3;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> a2 = s.a(this.e);
            if (a2 != null) {
                this.f.putSparseParcelableArray(r.e, a2);
            }
            this.f375a.setExtras(this.f);
            Notification build4 = this.f375a.build();
            if (this.c != null) {
                build4.contentView = this.c;
            }
            if (this.d != null) {
                build4.bigContentView = this.d;
            }
            return build4;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Notification build5 = this.f375a.build();
            Bundle a3 = p.a(build5);
            Bundle bundle = new Bundle(this.f);
            for (String str : this.f.keySet()) {
                if (a3.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a3.putAll(bundle);
            SparseArray<Bundle> a4 = s.a(this.e);
            if (a4 != null) {
                p.a(build5).putSparseParcelableArray(r.e, a4);
            }
            if (this.c != null) {
                build5.contentView = this.c;
            }
            if (this.d != null) {
                build5.bigContentView = this.d;
            }
            return build5;
        }
        return this.f375a.getNotification();
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
