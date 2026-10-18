package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.a;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

@SuppressLint({"RestrictedAPI"})
/* loaded from: /home/user/work/dex/classes.dex */
class at extends androidx.e.a.c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    static final int f235a = 0;
    static final int b = 1;
    static final int c = 2;
    static final int d = -1;
    private static final boolean p = false;
    private static final String q = "SuggestionsAdapter";
    private static final int r = 50;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private final SearchView s;
    private final SearchableInfo t;
    private final Context u;
    private final WeakHashMap<String, Drawable.ConstantState> v;
    private final int w;
    private boolean x;
    private int y;
    private ColorStateList z;

    @Override // androidx.e.a.a, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public at(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        this.x = false;
        this.y = 1;
        this.A = -1;
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.F = -1;
        this.s = searchView;
        this.t = searchableInfo;
        this.w = searchView.getSuggestionCommitIconResId();
        this.u = context;
        this.v = weakHashMap;
    }

    public void a(int i) {
        this.y = i;
    }

    public int a() {
        return this.y;
    }

    @Override // androidx.e.a.a, androidx.e.a.b.a
    public Cursor a(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? com.yftech.service.upgrade.a.d : charSequence.toString();
        if (this.s.getVisibility() != 0 || this.s.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor a2 = a(this.t, charSequence2, 50);
            if (a2 != null) {
                a2.getCount();
                return a2;
            }
        } catch (RuntimeException e) {
            Log.w(q, "Search suggestions query threw an exception.", e);
        }
        return null;
    }

    public void b() {
        a((Cursor) null);
        this.x = true;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        d(c());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        d(c());
    }

    private void d(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // androidx.e.a.a, androidx.e.a.b.a
    public void a(Cursor cursor) {
        if (this.x) {
            Log.w(q, "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.A = cursor.getColumnIndex("suggest_text_1");
                this.B = cursor.getColumnIndex("suggest_text_2");
                this.C = cursor.getColumnIndex("suggest_text_2_url");
                this.D = cursor.getColumnIndex("suggest_icon_1");
                this.E = cursor.getColumnIndex("suggest_icon_2");
                this.F = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e(q, "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.e.a.c, androidx.e.a.a
    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View a2 = super.a(context, cursor, viewGroup);
        a2.setTag(new a(a2));
        ((ImageView) a2.findViewById(a.g.edit_query)).setImageResource(this.w);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f236a;
        public final TextView b;
        public final ImageView c;
        public final ImageView d;
        public final ImageView e;

        public a(View view) {
            this.f236a = (TextView) view.findViewById(R.id.text1);
            this.b = (TextView) view.findViewById(R.id.text2);
            this.c = (ImageView) view.findViewById(R.id.icon1);
            this.d = (ImageView) view.findViewById(R.id.icon2);
            this.e = (ImageView) view.findViewById(a.g.edit_query);
        }
    }

    @Override // androidx.e.a.a
    public void a(View view, Context context, Cursor cursor) {
        CharSequence a2;
        a aVar = (a) view.getTag();
        int i = this.F != -1 ? cursor.getInt(this.F) : 0;
        if (aVar.f236a != null) {
            a(aVar.f236a, a(cursor, this.A));
        }
        if (aVar.b != null) {
            String a3 = a(cursor, this.C);
            if (a3 != null) {
                a2 = b((CharSequence) a3);
            } else {
                a2 = a(cursor, this.B);
            }
            if (TextUtils.isEmpty(a2)) {
                if (aVar.f236a != null) {
                    aVar.f236a.setSingleLine(false);
                    aVar.f236a.setMaxLines(2);
                }
            } else if (aVar.f236a != null) {
                aVar.f236a.setSingleLine(true);
                aVar.f236a.setMaxLines(1);
            }
            a(aVar.b, a2);
        }
        if (aVar.c != null) {
            a(aVar.c, e(cursor), 4);
        }
        if (aVar.d != null) {
            a(aVar.d, f(cursor), 8);
        }
        if (this.y == 2 || (this.y == 1 && (i & 1) != 0)) {
            aVar.e.setVisibility(0);
            aVar.e.setTag(aVar.f236a.getText());
            aVar.e.setOnClickListener(this);
            return;
        }
        aVar.e.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.s.a((CharSequence) tag);
        }
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.z == null) {
            TypedValue typedValue = new TypedValue();
            this.h.getTheme().resolveAttribute(a.b.textColorSearchUrl, typedValue, true);
            this.z = this.h.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.z, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private Drawable e(Cursor cursor) {
        if (this.D == -1) {
            return null;
        }
        Drawable a2 = a(cursor.getString(this.D));
        return a2 != null ? a2 : f();
    }

    private Drawable f(Cursor cursor) {
        if (this.E == -1) {
            return null;
        }
        return a(cursor.getString(this.E));
    }

    private void a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    @Override // androidx.e.a.a, androidx.e.a.b.a
    public CharSequence b(Cursor cursor) {
        String a2;
        String a3;
        if (cursor == null) {
            return null;
        }
        String a4 = a(cursor, "suggest_intent_query");
        if (a4 != null) {
            return a4;
        }
        if (this.t.shouldRewriteQueryFromData() && (a3 = a(cursor, "suggest_intent_data")) != null) {
            return a3;
        }
        if (!this.t.shouldRewriteQueryFromText() || (a2 = a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return a2;
    }

    @Override // androidx.e.a.a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(q, "Search suggestions cursor threw exception.", e);
            View a2 = a(this.h, this.g, viewGroup);
            if (a2 != null) {
                ((a) a2.getTag()).f236a.setText(e.toString());
            }
            return a2;
        }
    }

    @Override // androidx.e.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(q, "Search suggestions cursor threw exception.", e);
            View b2 = b(this.h, this.g, viewGroup);
            if (b2 != null) {
                ((a) b2.getTag()).f236a.setText(e.toString());
            }
            return b2;
        }
    }

    private Drawable a(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.u.getPackageName() + "/" + parseInt;
            Drawable b2 = b(str2);
            if (b2 != null) {
                return b2;
            }
            Drawable a2 = androidx.core.b.c.a(this.u, parseInt);
            a(str2, a2);
            return a2;
        } catch (Resources.NotFoundException unused) {
            Log.w(q, "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable b3 = b(str);
            if (b3 != null) {
                return b3;
            }
            Drawable b4 = b(Uri.parse(str));
            a(str, b4);
            return b4;
        }
    }

    private Drawable b(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return a(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.u.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(openInputStream, null);
            } finally {
                try {
                    openInputStream.close();
                } catch (IOException e) {
                    Log.e(q, "Error closing icon stream for " + uri, e);
                }
            }
        } catch (FileNotFoundException e2) {
            Log.w(q, "Icon not found: " + uri + ", " + e2.getMessage());
            return null;
        }
        Log.w(q, "Icon not found: " + uri + ", " + e2.getMessage());
        return null;
    }

    private Drawable b(String str) {
        Drawable.ConstantState constantState = this.v.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private void a(String str, Drawable drawable) {
        if (drawable != null) {
            this.v.put(str, drawable.getConstantState());
        }
    }

    private Drawable f() {
        Drawable a2 = a(this.t.getSearchActivity());
        return a2 != null ? a2 : this.h.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable a(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.v.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.v.get(flattenToShortString);
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(this.u.getResources());
        }
        Drawable b2 = b(componentName);
        this.v.put(flattenToShortString, b2 != null ? b2.getConstantState() : null);
        return b2;
    }

    private Drawable b(ComponentName componentName) {
        PackageManager packageManager = this.h.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w(q, "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(q, e.toString());
            return null;
        }
    }

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    private static String a(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e(q, "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    Drawable a(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.h.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else if (size == 2) {
                parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + uri);
            }
            if (parseInt == 0) {
                throw new FileNotFoundException("No resource found for: " + uri);
            }
            return resourcesForApplication.getDrawable(parseInt);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    Cursor a(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query(com.yftech.service.upgrade.a.d).fragment(com.yftech.service.upgrade.a.d);
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.h.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }
}
