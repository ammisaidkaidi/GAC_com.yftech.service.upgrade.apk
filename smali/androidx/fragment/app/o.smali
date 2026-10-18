.class public abstract Landroidx/fragment/app/o;
.super Landroidx/l/a/a;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:I = 0x1

.field private static final e:Ljava/lang/String; = "FragmentPagerAdapter"

.field private static final f:Z = false


# instance fields
.field private final g:Landroidx/fragment/app/j;

.field private final h:I

.field private i:Landroidx/fragment/app/s;

.field private j:Landroidx/fragment/app/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/j;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/j;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 134
    invoke-direct {p0}, Landroidx/l/a/a;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    .line 102
    iput-object v0, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    .line 135
    iput-object p1, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/j;

    .line 136
    iput p2, p0, Landroidx/fragment/app/o;->h:I

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract a(I)Landroidx/fragment/app/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    .line 161
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->b(I)J

    move-result-wide v0

    .line 164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/o;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v3, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/j;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/s;->f(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->a(I)Landroidx/fragment/app/d;

    move-result-object v2

    .line 172
    iget-object p2, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/o;->a(IJ)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2, v3, v2, p1}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 175
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 176
    invoke-virtual {v2, p1}, Landroidx/fragment/app/d;->f(Z)V

    .line 177
    iget p2, p0, Landroidx/fragment/app/o;->h:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 178
    iget-object p0, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    sget-object p1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/d;->g(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " requires a view id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 189
    check-cast p3, Landroidx/fragment/app/d;

    .line 191
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    .line 196
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/s;->d(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    .line 197
    iget-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 242
    check-cast p2, Landroidx/fragment/app/d;

    invoke-virtual {p2}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 234
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->j()V

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 205
    check-cast p3, Landroidx/fragment/app/d;

    .line 206
    iget-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    if-eq p3, p1, :cond_5

    .line 207
    iget-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 208
    iget-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->f(Z)V

    .line 209
    iget p1, p0, Landroidx/fragment/app/o;->h:I

    if-ne p1, p2, :cond_1

    .line 210
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    .line 213
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    iget-object v0, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    sget-object v1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->g(Z)V

    .line 218
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/d;->f(Z)V

    .line 219
    iget p1, p0, Landroidx/fragment/app/o;->h:I

    if-ne p1, p2, :cond_4

    .line 220
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    if-nez p1, :cond_3

    .line 221
    iget-object p1, p0, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    .line 223
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/fragment/app/s;

    sget-object p2, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/d;->g(Z)V

    .line 228
    :goto_1
    iput-object p3, p0, Landroidx/fragment/app/o;->j:Landroidx/fragment/app/d;

    :cond_5
    return-void
.end method
