package androidx.recyclerview.widget;

import androidx.recyclerview.widget.a;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    final a f1100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        a.b a(int i, int i2, int i3, Object obj);

        void a(a.b bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(a aVar) {
        this.f1100a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<a.b> list) {
        while (true) {
            int b = b(list);
            if (b == -1) {
                return;
            } else {
                a(list, b, b + 1);
            }
        }
    }

    private void a(List<a.b> list, int i, int i2) {
        a.b bVar = list.get(i);
        a.b bVar2 = list.get(i2);
        int i3 = bVar2.f;
        if (i3 != 4) {
            switch (i3) {
                case 1:
                    c(list, i, bVar, i2, bVar2);
                    return;
                case 2:
                    a(list, i, bVar, i2, bVar2);
                    return;
                default:
                    return;
            }
        }
        b(list, i, bVar, i2, bVar2);
    }

    void a(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        boolean z;
        boolean z2 = false;
        if (bVar.g < bVar.i) {
            if (bVar2.g == bVar.g && bVar2.i == bVar.i - bVar.g) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.g == bVar.i + 1 && bVar2.i == bVar.g - bVar.i) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        if (bVar.i < bVar2.g) {
            bVar2.g--;
        } else if (bVar.i < bVar2.g + bVar2.i) {
            bVar2.i--;
            bVar.f = 2;
            bVar.i = 1;
            if (bVar2.i == 0) {
                list.remove(i2);
                this.f1100a.a(bVar2);
                return;
            }
            return;
        }
        a.b bVar3 = null;
        if (bVar.g <= bVar2.g) {
            bVar2.g++;
        } else if (bVar.g < bVar2.g + bVar2.i) {
            bVar3 = this.f1100a.a(2, bVar.g + 1, (bVar2.g + bVar2.i) - bVar.g, null);
            bVar2.i = bVar.g - bVar2.g;
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f1100a.a(bVar);
            return;
        }
        if (z) {
            if (bVar3 != null) {
                if (bVar.g > bVar3.g) {
                    bVar.g -= bVar3.i;
                }
                if (bVar.i > bVar3.g) {
                    bVar.i -= bVar3.i;
                }
            }
            if (bVar.g > bVar2.g) {
                bVar.g -= bVar2.i;
            }
            if (bVar.i > bVar2.g) {
                bVar.i -= bVar2.i;
            }
        } else {
            if (bVar3 != null) {
                if (bVar.g >= bVar3.g) {
                    bVar.g -= bVar3.i;
                }
                if (bVar.i >= bVar3.g) {
                    bVar.i -= bVar3.i;
                }
            }
            if (bVar.g >= bVar2.g) {
                bVar.g -= bVar2.i;
            }
            if (bVar.i >= bVar2.g) {
                bVar.i -= bVar2.i;
            }
        }
        list.set(i, bVar2);
        if (bVar.g != bVar.i) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
    }

    private void c(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        int i3 = bVar.i < bVar2.g ? -1 : 0;
        if (bVar.g < bVar2.g) {
            i3++;
        }
        if (bVar2.g <= bVar.g) {
            bVar.g += bVar2.i;
        }
        if (bVar2.g <= bVar.i) {
            bVar.i += bVar2.i;
        }
        bVar2.g += i3;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void b(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        a.b a2;
        a.b bVar3 = null;
        if (bVar.i < bVar2.g) {
            bVar2.g--;
        } else if (bVar.i < bVar2.g + bVar2.i) {
            bVar2.i--;
            a2 = this.f1100a.a(4, bVar.g, 1, bVar2.h);
            if (bVar.g > bVar2.g) {
                bVar2.g++;
            } else if (bVar.g < bVar2.g + bVar2.i) {
                int i3 = (bVar2.g + bVar2.i) - bVar.g;
                bVar3 = this.f1100a.a(4, bVar.g + 1, i3, bVar2.h);
                bVar2.i -= i3;
            }
            list.set(i2, bVar);
            if (bVar2.i <= 0) {
                list.set(i, bVar2);
            } else {
                list.remove(i);
                this.f1100a.a(bVar2);
            }
            if (a2 != null) {
                list.add(i, a2);
            }
            if (bVar3 == null) {
                list.add(i, bVar3);
                return;
            }
            return;
        }
        a2 = null;
        if (bVar.g > bVar2.g) {
        }
        list.set(i2, bVar);
        if (bVar2.i <= 0) {
        }
        if (a2 != null) {
        }
        if (bVar3 == null) {
        }
    }

    private int b(List<a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }
}
