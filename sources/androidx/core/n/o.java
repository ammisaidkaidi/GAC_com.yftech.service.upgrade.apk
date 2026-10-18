package androidx.core.n;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

/* loaded from: /home/user/work/dex/classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final int f571a = 0;

    @Deprecated
    public static final int b = 1;

    @Deprecated
    public static final int c = 2;

    @Deprecated
    public static final int d = 4;

    @Deprecated
    public static final int e = 8;
    private static final String f = "MenuItemCompat";

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        boolean a(MenuItem menuItem);

        boolean b(MenuItem menuItem);
    }

    @Deprecated
    public static void a(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }

    @Deprecated
    public static MenuItem a(MenuItem menuItem, View view) {
        return menuItem.setActionView(view);
    }

    @Deprecated
    public static MenuItem b(MenuItem menuItem, int i) {
        return menuItem.setActionView(i);
    }

    @Deprecated
    public static View a(MenuItem menuItem) {
        return menuItem.getActionView();
    }

    public static MenuItem a(MenuItem menuItem, b bVar) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).a(bVar);
        }
        Log.w(f, "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static b b(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).b();
        }
        Log.w(f, "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    @Deprecated
    public static boolean c(MenuItem menuItem) {
        return menuItem.expandActionView();
    }

    @Deprecated
    public static boolean d(MenuItem menuItem) {
        return menuItem.collapseActionView();
    }

    @Deprecated
    public static boolean e(MenuItem menuItem) {
        return menuItem.isActionViewExpanded();
    }

    @Deprecated
    public static MenuItem a(MenuItem menuItem, final a aVar) {
        return menuItem.setOnActionExpandListener(new MenuItem.OnActionExpandListener() { // from class: androidx.core.n.o.1
            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem2) {
                return a.this.a(menuItem2);
            }

            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem2) {
                return a.this.b(menuItem2);
            }
        });
    }

    public static void a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).a(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setContentDescription(charSequence);
        }
    }

    public static CharSequence f(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).getContentDescription();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return menuItem.getContentDescription();
        }
        return null;
    }

    public static void b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).b(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setTooltipText(charSequence);
        }
    }

    public static CharSequence g(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).getTooltipText();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return menuItem.getTooltipText();
        }
        return null;
    }

    public static void a(MenuItem menuItem, char c2, char c3, int i, int i2) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).setShortcut(c2, c3, i, i2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setShortcut(c2, c3, i, i2);
        }
    }

    public static void a(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).setNumericShortcut(c2, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setNumericShortcut(c2, i);
        }
    }

    public static int h(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).getNumericModifiers();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return menuItem.getNumericModifiers();
        }
        return 0;
    }

    public static void b(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).setAlphabeticShortcut(c2, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setAlphabeticShortcut(c2, i);
        }
    }

    public static int i(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).getAlphabeticModifiers();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return menuItem.getAlphabeticModifiers();
        }
        return 0;
    }

    public static void a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintList(colorStateList);
        }
    }

    public static ColorStateList j(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).getIconTintList();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return menuItem.getIconTintList();
        }
        return null;
    }

    public static void a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof androidx.core.e.a.b) {
            ((androidx.core.e.a.b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintMode(mode);
        }
    }

    public static PorterDuff.Mode k(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.e.a.b) {
            return ((androidx.core.e.a.b) menuItem).getIconTintMode();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return menuItem.getIconTintMode();
        }
        return null;
    }

    private o() {
    }
}
