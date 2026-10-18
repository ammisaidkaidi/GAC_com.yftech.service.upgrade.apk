package androidx.d.c.b;

import androidx.d.c.b.a.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class j extends e implements i {
    public e[] bd = new e[4];
    public int be = 0;

    @Override // androidx.d.c.b.i
    public void a(f fVar) {
    }

    @Override // androidx.d.c.b.i
    public void a(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        if (this.be + 1 > this.bd.length) {
            this.bd = (e[]) Arrays.copyOf(this.bd, this.bd.length * 2);
        }
        this.bd[this.be] = eVar;
        this.be++;
    }

    @Override // androidx.d.c.b.e
    public void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        j jVar = (j) eVar;
        this.be = 0;
        int i = jVar.be;
        for (int i2 = 0; i2 < i; i2++) {
            a(hashMap.get(jVar.bd[i2]));
        }
    }

    @Override // androidx.d.c.b.i
    public void j() {
        this.be = 0;
        Arrays.fill(this.bd, (Object) null);
    }

    public void a(ArrayList<o> arrayList, int i, o oVar) {
        for (int i2 = 0; i2 < this.be; i2++) {
            oVar.a(this.bd[i2]);
        }
        for (int i3 = 0; i3 < this.be; i3++) {
            androidx.d.c.b.a.i.a(this.bd[i3], i, arrayList, oVar);
        }
    }

    public int M(int i) {
        for (int i2 = 0; i2 < this.be; i2++) {
            e eVar = this.bd[i2];
            if (i == 0 && eVar.aW != -1) {
                return eVar.aW;
            }
            if (i == 1 && eVar.aX != -1) {
                return eVar.aX;
            }
        }
        return -1;
    }
}
