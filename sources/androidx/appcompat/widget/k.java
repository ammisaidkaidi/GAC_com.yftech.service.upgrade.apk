package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.appcompat.widget.ao;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    private static final String f273a = "AppCompatDrawableManag";
    private static final boolean b = false;
    private static final PorterDuff.Mode c = PorterDuff.Mode.SRC_IN;
    private static k d;
    private ao e;

    public static synchronized void a() {
        synchronized (k.class) {
            if (d == null) {
                d = new k();
                d.e = ao.a();
                d.e.a(new ao.e() { // from class: androidx.appcompat.widget.k.1

                    /* renamed from: a, reason: collision with root package name */
                    private final int[] f274a = {a.f.abc_textfield_search_default_mtrl_alpha, a.f.abc_textfield_default_mtrl_alpha, a.f.abc_ab_share_pack_mtrl_alpha};
                    private final int[] b = {a.f.abc_ic_commit_search_api_mtrl_alpha, a.f.abc_seekbar_tick_mark_material, a.f.abc_ic_menu_share_mtrl_alpha, a.f.abc_ic_menu_copy_mtrl_am_alpha, a.f.abc_ic_menu_cut_mtrl_alpha, a.f.abc_ic_menu_selectall_mtrl_alpha, a.f.abc_ic_menu_paste_mtrl_am_alpha};
                    private final int[] c = {a.f.abc_textfield_activated_mtrl_alpha, a.f.abc_textfield_search_activated_mtrl_alpha, a.f.abc_cab_background_top_mtrl_alpha, a.f.abc_text_cursor_material, a.f.abc_text_select_handle_left_mtrl_dark, a.f.abc_text_select_handle_middle_mtrl_dark, a.f.abc_text_select_handle_right_mtrl_dark, a.f.abc_text_select_handle_left_mtrl_light, a.f.abc_text_select_handle_middle_mtrl_light, a.f.abc_text_select_handle_right_mtrl_light};
                    private final int[] d = {a.f.abc_popup_background_mtrl_mult, a.f.abc_cab_background_internal_bg, a.f.abc_menu_hardkey_panel_mtrl_mult};
                    private final int[] e = {a.f.abc_tab_indicator_material, a.f.abc_textfield_search_material};
                    private final int[] f = {a.f.abc_btn_check_material, a.f.abc_btn_radio_material, a.f.abc_btn_check_material_anim, a.f.abc_btn_radio_material_anim};

                    private ColorStateList a(@androidx.annotation.ah Context context) {
                        return b(context, av.a(context, a.b.colorButtonNormal));
                    }

                    private ColorStateList b(@androidx.annotation.ah Context context) {
                        return b(context, 0);
                    }

                    private ColorStateList c(@androidx.annotation.ah Context context) {
                        return b(context, av.a(context, a.b.colorAccent));
                    }

                    private ColorStateList b(@androidx.annotation.ah Context context, @androidx.annotation.k int i) {
                        int a2 = av.a(context, a.b.colorControlHighlight);
                        return new ColorStateList(new int[][]{av.f238a, av.d, av.b, av.h}, new int[]{av.c(context, a.b.colorButtonNormal), androidx.core.graphics.e.a(a2, i), androidx.core.graphics.e.a(a2, i), i});
                    }

                    private ColorStateList d(Context context) {
                        int[][] iArr = new int[3];
                        int[] iArr2 = new int[3];
                        ColorStateList b2 = av.b(context, a.b.colorSwitchThumbNormal);
                        if (b2 != null && b2.isStateful()) {
                            iArr[0] = av.f238a;
                            iArr2[0] = b2.getColorForState(iArr[0], 0);
                            iArr[1] = av.e;
                            iArr2[1] = av.a(context, a.b.colorControlActivated);
                            iArr[2] = av.h;
                            iArr2[2] = b2.getDefaultColor();
                        } else {
                            iArr[0] = av.f238a;
                            iArr2[0] = av.c(context, a.b.colorSwitchThumbNormal);
                            iArr[1] = av.e;
                            iArr2[1] = av.a(context, a.b.colorControlActivated);
                            iArr[2] = av.h;
                            iArr2[2] = av.a(context, a.b.colorSwitchThumbNormal);
                        }
                        return new ColorStateList(iArr, iArr2);
                    }

                    @Override // androidx.appcompat.widget.ao.e
                    public Drawable a(@androidx.annotation.ah ao aoVar, @androidx.annotation.ah Context context, int i) {
                        if (i == a.f.abc_cab_background_top_material) {
                            return new LayerDrawable(new Drawable[]{aoVar.a(context, a.f.abc_cab_background_internal_bg), aoVar.a(context, a.f.abc_cab_background_top_mtrl_alpha)});
                        }
                        return null;
                    }

                    private void a(Drawable drawable, int i, PorterDuff.Mode mode) {
                        if (af.c(drawable)) {
                            drawable = drawable.mutate();
                        }
                        if (mode == null) {
                            mode = k.c;
                        }
                        drawable.setColorFilter(k.a(i, mode));
                    }

                    @Override // androidx.appcompat.widget.ao.e
                    public boolean a(@androidx.annotation.ah Context context, int i, @androidx.annotation.ah Drawable drawable) {
                        if (i == a.f.abc_seekbar_track_material) {
                            LayerDrawable layerDrawable = (LayerDrawable) drawable;
                            a(layerDrawable.findDrawableByLayerId(R.id.background), av.a(context, a.b.colorControlNormal), k.c);
                            a(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), av.a(context, a.b.colorControlNormal), k.c);
                            a(layerDrawable.findDrawableByLayerId(R.id.progress), av.a(context, a.b.colorControlActivated), k.c);
                            return true;
                        }
                        if (i != a.f.abc_ratingbar_material && i != a.f.abc_ratingbar_indicator_material && i != a.f.abc_ratingbar_small_material) {
                            return false;
                        }
                        LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                        a(layerDrawable2.findDrawableByLayerId(R.id.background), av.c(context, a.b.colorControlNormal), k.c);
                        a(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), av.a(context, a.b.colorControlActivated), k.c);
                        a(layerDrawable2.findDrawableByLayerId(R.id.progress), av.a(context, a.b.colorControlActivated), k.c);
                        return true;
                    }

                    private boolean a(int[] iArr, int i) {
                        for (int i2 : iArr) {
                            if (i2 == i) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // androidx.appcompat.widget.ao.e
                    public ColorStateList a(@androidx.annotation.ah Context context, int i) {
                        if (i == a.f.abc_edit_text_material) {
                            return androidx.appcompat.a.a.a.a(context, a.d.abc_tint_edittext);
                        }
                        if (i == a.f.abc_switch_track_mtrl_alpha) {
                            return androidx.appcompat.a.a.a.a(context, a.d.abc_tint_switch_track);
                        }
                        if (i == a.f.abc_switch_thumb_material) {
                            return d(context);
                        }
                        if (i == a.f.abc_btn_default_mtrl_shape) {
                            return a(context);
                        }
                        if (i == a.f.abc_btn_borderless_material) {
                            return b(context);
                        }
                        if (i == a.f.abc_btn_colored_material) {
                            return c(context);
                        }
                        if (i == a.f.abc_spinner_mtrl_am_alpha || i == a.f.abc_spinner_textfield_background_material) {
                            return androidx.appcompat.a.a.a.a(context, a.d.abc_tint_spinner);
                        }
                        if (a(this.b, i)) {
                            return av.b(context, a.b.colorControlNormal);
                        }
                        if (a(this.e, i)) {
                            return androidx.appcompat.a.a.a.a(context, a.d.abc_tint_default);
                        }
                        if (a(this.f, i)) {
                            return androidx.appcompat.a.a.a.a(context, a.d.abc_tint_btn_checkable);
                        }
                        if (i == a.f.abc_seekbar_thumb_material) {
                            return androidx.appcompat.a.a.a.a(context, a.d.abc_tint_seek_thumb);
                        }
                        return null;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:15:0x0062 A[RETURN] */
                    /* JADX WARN: Removed duplicated region for block: B:7:0x0047  */
                    @Override // androidx.appcompat.widget.ao.e
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public boolean b(@androidx.annotation.ah Context context, int i, @androidx.annotation.ah Drawable drawable) {
                        int i2;
                        boolean z;
                        PorterDuff.Mode mode = k.c;
                        boolean a2 = a(this.f274a, i);
                        int i3 = R.attr.colorBackground;
                        if (a2) {
                            i3 = a.b.colorControlNormal;
                        } else if (a(this.c, i)) {
                            i3 = a.b.colorControlActivated;
                        } else if (a(this.d, i)) {
                            mode = PorterDuff.Mode.MULTIPLY;
                        } else {
                            if (i == a.f.abc_list_divider_mtrl_alpha) {
                                i3 = R.attr.colorForeground;
                                i2 = Math.round(40.8f);
                                z = true;
                                if (!z) {
                                    return false;
                                }
                                if (af.c(drawable)) {
                                    drawable = drawable.mutate();
                                }
                                drawable.setColorFilter(k.a(av.a(context, i3), mode));
                                if (i2 != -1) {
                                    drawable.setAlpha(i2);
                                }
                                return true;
                            }
                            if (i != a.f.abc_dialog_material_background) {
                                i2 = -1;
                                z = false;
                                i3 = 0;
                                if (!z) {
                                }
                            }
                        }
                        i2 = -1;
                        z = true;
                        if (!z) {
                        }
                    }

                    @Override // androidx.appcompat.widget.ao.e
                    public PorterDuff.Mode a(int i) {
                        if (i == a.f.abc_switch_thumb_material) {
                            return PorterDuff.Mode.MULTIPLY;
                        }
                        return null;
                    }
                });
            }
        }
    }

    public static synchronized k b() {
        k kVar;
        synchronized (k.class) {
            if (d == null) {
                a();
            }
            kVar = d;
        }
        return kVar;
    }

    public synchronized Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        return this.e.a(context, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, boolean z) {
        return this.e.a(context, i, z);
    }

    public synchronized void a(@androidx.annotation.ah Context context) {
        this.e.a(context);
    }

    synchronized Drawable a(@androidx.annotation.ah Context context, @androidx.annotation.ah bf bfVar, @androidx.annotation.q int i) {
        return this.e.a(context, bfVar, i);
    }

    boolean a(@androidx.annotation.ah Context context, @androidx.annotation.q int i, @androidx.annotation.ah Drawable drawable) {
        return this.e.a(context, i, drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList b(@androidx.annotation.ah Context context, @androidx.annotation.q int i) {
        return this.e.b(context, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, ay ayVar, int[] iArr) {
        ao.a(drawable, ayVar, iArr);
    }

    public static synchronized PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (k.class) {
            a2 = ao.a(i, mode);
        }
        return a2;
    }
}
