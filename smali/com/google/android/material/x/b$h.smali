.class public Lcom/google/android/material/x/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final a:I = -0x1


# instance fields
.field public b:Lcom/google/android/material/x/b;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public c:Lcom/google/android/material/x/b$l;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private f:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private g:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private h:I

.field private i:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private j:I
    .annotation build Lcom/google/android/material/x/b$c;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1880
    iput v0, p0, Lcom/google/android/material/x/b$h;->h:I

    const/4 v0, 0x1

    .line 1882
    iput v0, p0, Lcom/google/android/material/x/b$h;->j:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;
    .locals 0

    .line 1864
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;
    .locals 0

    .line 1864
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/x/b$h;)I
    .locals 0

    .line 1864
    iget p0, p0, Lcom/google/android/material/x/b$h;->j:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/google/android/material/x/b$h;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1955
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1956
    iget-object v1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$h;->a(Landroid/view/View;)Lcom/google/android/material/x/b$h;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/x/b$h;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2001
    iput-object p1, p0, Lcom/google/android/material/x/b$h;->e:Landroid/graphics/drawable/Drawable;

    .line 2002
    iget-object p1, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    iget p1, p1, Lcom/google/android/material/x/b;->D:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    iget p1, p1, Lcom/google/android/material/x/b;->G:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2003
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {p1, v0}, Lcom/google/android/material/x/b;->a(Z)V

    .line 2005
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->m()V

    .line 2006
    sget-boolean p1, Lcom/google/android/material/b/b;->a:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    .line 2007
    invoke-static {p1}, Lcom/google/android/material/x/b$l;->a(Lcom/google/android/material/x/b$l;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    .line 2008
    invoke-static {p1}, Lcom/google/android/material/x/b$l;->b(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2010
    iget-object p1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-virtual {p1}, Lcom/google/android/material/x/b$l;->invalidate()V

    :cond_2
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/google/android/material/x/b$h;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1936
    iput-object p1, p0, Lcom/google/android/material/x/b$h;->i:Landroid/view/View;

    .line 1937
    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->m()V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2041
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$l;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2044
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/x/b$h;->f:Ljava/lang/CharSequence;

    .line 2045
    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->m()V

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/android/material/x/b$h;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1908
    iput-object p1, p0, Lcom/google/android/material/x/b$h;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1897
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public b()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1920
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->i:Landroid/view/View;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2177
    iput-object p1, p0, Lcom/google/android/material/x/b$h;->g:Ljava/lang/CharSequence;

    .line 2178
    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->m()V

    return-object p0
.end method

.method b(I)V
    .locals 0

    .line 1980
    iput p1, p0, Lcom/google/android/material/x/b$h;->h:I

    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1966
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public c(I)Lcom/google/android/material/x/b$h;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2023
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$h;->a(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/x/b$h;

    move-result-object p0

    return-object p0

    .line 2024
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()I
    .locals 0

    .line 1976
    iget p0, p0, Lcom/google/android/material/x/b$h;->h:I

    return p0
.end method

.method public d(I)Lcom/google/android/material/x/b$h;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2058
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$h;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;

    move-result-object p0

    return-object p0

    .line 2059
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(I)Lcom/google/android/material/x/b$h;
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/material/x/b$c;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2107
    iput p1, p0, Lcom/google/android/material/x/b$h;->j:I

    .line 2108
    iget-object p1, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    iget p1, p1, Lcom/google/android/material/x/b;->D:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    iget p1, p1, Lcom/google/android/material/x/b;->G:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2109
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {p1, v0}, Lcom/google/android/material/x/b;->a(Z)V

    .line 2111
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->m()V

    .line 2112
    sget-boolean p1, Lcom/google/android/material/b/b;->a:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    .line 2113
    invoke-static {p1}, Lcom/google/android/material/x/b$l;->a(Lcom/google/android/material/x/b$l;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    .line 2114
    invoke-static {p1}, Lcom/google/android/material/x/b$l;->b(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2116
    iget-object p1, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-virtual {p1}, Lcom/google/android/material/x/b$l;->invalidate()V

    :cond_2
    return-object p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1990
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f()Lcom/google/android/material/b/a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2072
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-static {p0}, Lcom/google/android/material/x/b$l;->c(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;

    move-result-object p0

    return-object p0
.end method

.method public f(I)Lcom/google/android/material/x/b$h;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2160
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$h;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;

    move-result-object p0

    return-object p0

    .line 2161
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()V
    .locals 0

    .line 2080
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-static {p0}, Lcom/google/android/material/x/b$l;->d(Lcom/google/android/material/x/b$l;)V

    return-void
.end method

.method public h()Lcom/google/android/material/b/a;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2089
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-static {p0}, Lcom/google/android/material/x/b$l;->e(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;

    move-result-object p0

    return-object p0
.end method

.method public i()I
    .locals 0
    .annotation build Lcom/google/android/material/x/b$c;
    .end annotation

    .line 2130
    iget p0, p0, Lcom/google/android/material/x/b$h;->j:I

    return p0
.end method

.method public j()V
    .locals 1

    .line 2135
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {v0, p0}, Lcom/google/android/material/x/b;->d(Lcom/google/android/material/x/b$h;)V

    return-void

    .line 2136
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()Z
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-eqz v0, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/x/b$h;->h:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 2144
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2193
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method m()V
    .locals 1

    .line 2197
    iget-object v0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    if-eqz v0, :cond_0

    .line 2198
    iget-object p0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->b()V

    :cond_0
    return-void
.end method

.method n()V
    .locals 2

    const/4 v0, 0x0

    .line 2203
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    .line 2204
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    .line 2205
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->d:Ljava/lang/Object;

    .line 2206
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->e:Landroid/graphics/drawable/Drawable;

    .line 2207
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->f:Ljava/lang/CharSequence;

    .line 2208
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->g:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 2209
    iput v1, p0, Lcom/google/android/material/x/b$h;->h:I

    .line 2210
    iput-object v0, p0, Lcom/google/android/material/x/b$h;->i:Landroid/view/View;

    return-void
.end method
