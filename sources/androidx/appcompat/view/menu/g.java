package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ah;
import androidx.annotation.ap;
import androidx.core.n.ag;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class g implements androidx.core.e.a.a {
    private static final String j = "MenuBuilder";
    private static final String k = "android:menu:presenters";
    private static final String l = "android:menu:actionviewstates";
    private static final String m = "android:menu:expandedactionview";
    private static final int[] n = {1, 4, 5, 3, 2, 0};
    private ContextMenu.ContextMenuInfo A;
    private j I;
    private boolean K;

    /* renamed from: a, reason: collision with root package name */
    CharSequence f136a;
    Drawable b;
    View c;
    private final Context o;
    private final Resources p;
    private boolean q;
    private boolean r;
    private a s;
    private int z = 0;
    private boolean B = false;
    private boolean C = false;
    private boolean D = false;
    private boolean E = false;
    private boolean F = false;
    private ArrayList<j> G = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<n>> H = new CopyOnWriteArrayList<>();
    private boolean J = false;
    private ArrayList<j> t = new ArrayList<>();
    private ArrayList<j> u = new ArrayList<>();
    private boolean v = true;
    private ArrayList<j> w = new ArrayList<>();
    private ArrayList<j> x = new ArrayList<>();
    private boolean y = true;

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(@ah g gVar);

        boolean a(@ah g gVar, @ah MenuItem menuItem);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        boolean a(j jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return l;
    }

    public g r() {
        return this;
    }

    public g(Context context) {
        this.o = context;
        this.p = context.getResources();
        g(true);
    }

    public g a(int i) {
        this.z = i;
        return this;
    }

    public void a(n nVar) {
        a(nVar, this.o);
    }

    public void a(n nVar, Context context) {
        this.H.add(new WeakReference<>(nVar));
        nVar.a(context, this);
        this.y = true;
    }

    public void b(n nVar) {
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar2 = next.get();
            if (nVar2 == null || nVar2 == nVar) {
                this.H.remove(next);
            }
        }
    }

    private void f(boolean z) {
        if (this.H.isEmpty()) {
            return;
        }
        i();
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar = next.get();
            if (nVar == null) {
                this.H.remove(next);
            } else {
                nVar.a(z);
            }
        }
        j();
    }

    private boolean a(s sVar, n nVar) {
        if (this.H.isEmpty()) {
            return false;
        }
        boolean a2 = nVar != null ? nVar.a(sVar) : false;
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar2 = next.get();
            if (nVar2 == null) {
                this.H.remove(next);
            } else if (!a2) {
                a2 = nVar2.a(sVar);
            }
        }
        return a2;
    }

    private void e(Bundle bundle) {
        Parcelable f;
        if (this.H.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar = next.get();
            if (nVar == null) {
                this.H.remove(next);
            } else {
                int c = nVar.c();
                if (c > 0 && (f = nVar.f()) != null) {
                    sparseArray.put(c, f);
                }
            }
        }
        bundle.putSparseParcelableArray(k, sparseArray);
    }

    private void f(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(k);
        if (sparseParcelableArray == null || this.H.isEmpty()) {
            return;
        }
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar = next.get();
            if (nVar == null) {
                this.H.remove(next);
            } else {
                int c = nVar.c();
                if (c > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(c)) != null) {
                    nVar.a(parcelable);
                }
            }
        }
    }

    public void a(Bundle bundle) {
        e(bundle);
    }

    public void b(Bundle bundle) {
        f(bundle);
    }

    public void c(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(m, item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((s) item.getSubMenu()).c(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(a(), sparseArray);
        }
    }

    public void d(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(a());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((s) item.getSubMenu()).d(bundle);
            }
        }
        int i2 = bundle.getInt(m);
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void a(a aVar) {
        this.s = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int g = g(i3);
        j a2 = a(i, i2, i3, g, charSequence, this.z);
        if (this.A != null) {
            a2.a(this.A);
        }
        this.t.add(a(this.t, g), a2);
        c(true);
        return a2;
    }

    private j a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new j(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.p.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.p.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.p.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        j jVar = (j) a(i, i2, i3, charSequence);
        s sVar = new s(this.o, this, jVar);
        jVar.a(sVar);
        return sVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.p.getString(i4));
    }

    @Override // androidx.core.e.a.a, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.J = z;
    }

    public boolean b() {
        return this.J;
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.o.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i5 = 0; i5 < size; i5++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        a(c(i), true);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int d = d(i);
        if (d >= 0) {
            int size = this.t.size() - d;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.t.get(d).getGroupId() != i) {
                    break;
                }
                a(d, false);
                i2 = i3;
            }
            c(true);
        }
    }

    private void a(int i, boolean z) {
        if (i < 0 || i >= this.t.size()) {
            return;
        }
        this.t.remove(i);
        if (z) {
            c(true);
        }
    }

    public void b(int i) {
        a(i, true);
    }

    public void c() {
        this.B = true;
        clear();
        clearHeader();
        this.H.clear();
        this.B = false;
        this.C = false;
        this.D = false;
        c(true);
    }

    @Override // android.view.Menu
    public void clear() {
        if (this.I != null) {
            d(this.I);
        }
        this.t.clear();
        c(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.t.size();
        i();
        for (int i = 0; i < size; i++) {
            j jVar = this.t.get(i);
            if (jVar.getGroupId() == groupId && jVar.h() && jVar.isCheckable()) {
                jVar.b(jVar == menuItem);
            }
        }
        j();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.t.get(i2);
            if (jVar.getGroupId() == i) {
                jVar.a(z2);
                jVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.t.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.t.get(i2);
            if (jVar.getGroupId() == i && jVar.c(z)) {
                z2 = true;
            }
        }
        if (z2) {
            c(true);
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.t.get(i2);
            if (jVar.getGroupId() == i) {
                jVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.K) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.t.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.t.get(i2);
            if (jVar.getItemId() == i) {
                return jVar;
            }
            if (jVar.hasSubMenu() && (findItem = jVar.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public int c(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.t.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int d(int i) {
        return a(i, 0);
    }

    public int a(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (this.t.get(i2).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public int size() {
        return this.t.size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.t.get(i);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return a(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.q = z;
        c(false);
    }

    private static int g(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 < 0 || i2 >= n.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (i & androidx.core.e.a.a.d) | (n[i2] << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.q;
    }

    public void a(boolean z) {
        if (this.r == z) {
            return;
        }
        g(z);
        c(false);
    }

    private void g(boolean z) {
        this.r = z && this.p.getConfiguration().keyboard != 1 && ag.c(ViewConfiguration.get(this.o), this.o);
    }

    public boolean e() {
        return this.r;
    }

    Resources f() {
        return this.p;
    }

    public Context g() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@ah g gVar, @ah MenuItem menuItem) {
        return this.s != null && this.s.a(gVar, menuItem);
    }

    public void h() {
        if (this.s != null) {
            this.s.a(this);
        }
    }

    private static int a(ArrayList<j> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        j a2 = a(i, keyEvent);
        boolean a3 = a2 != null ? a(a2, i2) : false;
        if ((i2 & 2) != 0) {
            b(true);
        }
        return a3;
    }

    void a(List<j> list, int i, KeyEvent keyEvent) {
        boolean d = d();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.t.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = this.t.get(i2);
                if (jVar.hasSubMenu()) {
                    ((g) jVar.getSubMenu()).a(list, i, keyEvent);
                }
                char alphabeticShortcut = d ? jVar.getAlphabeticShortcut() : jVar.getNumericShortcut();
                if (((modifiers & androidx.core.e.a.a.h) == ((d ? jVar.getAlphabeticModifiers() : jVar.getNumericModifiers()) & androidx.core.e.a.a.h)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (d && alphabeticShortcut == '\b' && i == 67)) && jVar.isEnabled())) {
                    list.add(jVar);
                }
            }
        }
    }

    j a(int i, KeyEvent keyEvent) {
        char numericShortcut;
        ArrayList<j> arrayList = this.G;
        arrayList.clear();
        a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean d = d();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = arrayList.get(i2);
            if (d) {
                numericShortcut = jVar.getAlphabeticShortcut();
            } else {
                numericShortcut = jVar.getNumericShortcut();
            }
            if ((numericShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((numericShortcut == keyData.meta[2] && (metaState & 2) != 0) || (d && numericShortcut == '\b' && i == 67))) {
                return jVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return a(findItem(i), i2);
    }

    public boolean a(MenuItem menuItem, int i) {
        return a(menuItem, (n) null, i);
    }

    public boolean a(MenuItem menuItem, n nVar, int i) {
        j jVar = (j) menuItem;
        if (jVar == null || !jVar.isEnabled()) {
            return false;
        }
        boolean a2 = jVar.a();
        androidx.core.n.b b2 = jVar.b();
        boolean z = b2 != null && b2.c();
        if (jVar.n()) {
            a2 |= jVar.expandActionView();
            if (a2) {
                b(true);
            }
        } else if (jVar.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                b(false);
            }
            if (!jVar.hasSubMenu()) {
                jVar.a(new s(g(), this, jVar));
            }
            s sVar = (s) jVar.getSubMenu();
            if (z) {
                b2.a(sVar);
            }
            a2 |= a(sVar, nVar);
            if (!a2) {
                b(true);
            }
        } else if ((i & 1) == 0) {
            b(true);
        }
        return a2;
    }

    public final void b(boolean z) {
        if (this.F) {
            return;
        }
        this.F = true;
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar = next.get();
            if (nVar == null) {
                this.H.remove(next);
            } else {
                nVar.a(this, z);
            }
        }
        this.F = false;
    }

    @Override // android.view.Menu
    public void close() {
        b(true);
    }

    public void c(boolean z) {
        if (!this.B) {
            if (z) {
                this.v = true;
                this.y = true;
            }
            f(z);
            return;
        }
        this.C = true;
        if (z) {
            this.D = true;
        }
    }

    public void i() {
        if (this.B) {
            return;
        }
        this.B = true;
        this.C = false;
        this.D = false;
    }

    public void j() {
        this.B = false;
        if (this.C) {
            this.C = false;
            c(this.D);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar) {
        this.v = true;
        c(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(j jVar) {
        this.y = true;
        c(true);
    }

    @ah
    public ArrayList<j> k() {
        if (!this.v) {
            return this.u;
        }
        this.u.clear();
        int size = this.t.size();
        for (int i = 0; i < size; i++) {
            j jVar = this.t.get(i);
            if (jVar.isVisible()) {
                this.u.add(jVar);
            }
        }
        this.v = false;
        this.y = true;
        return this.u;
    }

    public void l() {
        ArrayList<j> k2 = k();
        if (this.y) {
            Iterator<WeakReference<n>> it = this.H.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<n> next = it.next();
                n nVar = next.get();
                if (nVar == null) {
                    this.H.remove(next);
                } else {
                    z |= nVar.b();
                }
            }
            if (z) {
                this.w.clear();
                this.x.clear();
                int size = k2.size();
                for (int i = 0; i < size; i++) {
                    j jVar = k2.get(i);
                    if (jVar.k()) {
                        this.w.add(jVar);
                    } else {
                        this.x.add(jVar);
                    }
                }
            } else {
                this.w.clear();
                this.x.clear();
                this.x.addAll(k());
            }
            this.y = false;
        }
    }

    public ArrayList<j> m() {
        l();
        return this.w;
    }

    public ArrayList<j> n() {
        l();
        return this.x;
    }

    public void clearHeader() {
        this.b = null;
        this.f136a = null;
        this.c = null;
        c(false);
    }

    private void a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources f = f();
        if (view != null) {
            this.c = view;
            this.f136a = null;
            this.b = null;
        } else {
            if (i > 0) {
                this.f136a = f.getText(i);
            } else if (charSequence != null) {
                this.f136a = charSequence;
            }
            if (i2 > 0) {
                this.b = androidx.core.b.c.a(g(), i2);
            } else if (drawable != null) {
                this.b = drawable;
            }
            this.c = null;
        }
        c(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g a(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g e(int i) {
        a(i, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g a(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g f(int i) {
        a(0, null, i, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g a(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    public CharSequence o() {
        return this.f136a;
    }

    public Drawable p() {
        return this.b;
    }

    public View q() {
        return this.c;
    }

    public void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.A = contextMenuInfo;
    }

    public void d(boolean z) {
        this.E = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s() {
        return this.E;
    }

    public boolean c(j jVar) {
        boolean z = false;
        if (this.H.isEmpty()) {
            return false;
        }
        i();
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar = next.get();
            if (nVar == null) {
                this.H.remove(next);
            } else {
                z = nVar.a(this, jVar);
                if (z) {
                    break;
                }
            }
        }
        j();
        if (z) {
            this.I = jVar;
        }
        return z;
    }

    public boolean d(j jVar) {
        boolean z = false;
        if (this.H.isEmpty() || this.I != jVar) {
            return false;
        }
        i();
        Iterator<WeakReference<n>> it = this.H.iterator();
        while (it.hasNext()) {
            WeakReference<n> next = it.next();
            n nVar = next.get();
            if (nVar == null) {
                this.H.remove(next);
            } else {
                z = nVar.b(this, jVar);
                if (z) {
                    break;
                }
            }
        }
        j();
        if (z) {
            this.I = null;
        }
        return z;
    }

    public j t() {
        return this.I;
    }

    public void e(boolean z) {
        this.K = z;
    }
}
