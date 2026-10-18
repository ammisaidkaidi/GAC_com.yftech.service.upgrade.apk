.class public abstract Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/a$b;,
        Landroidx/appcompat/app/a$g;,
        Landroidx/appcompat/app/a$f;,
        Landroidx/appcompat/app/a$d;,
        Landroidx/appcompat/app/a$e;,
        Landroidx/appcompat/app/a$a;,
        Landroidx/appcompat/app/a$c;
    }
.end annotation


# static fields
.field public static final a:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x4

.field public static final g:I = 0x8

.field public static final h:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    return-void

    .line 1022
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    return-void
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroidx/appcompat/app/a$b;)V
.end method

.method public abstract a(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$e;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Landroidx/appcompat/app/a$d;)V
.end method

.method public abstract a(Landroidx/appcompat/app/a$f;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Landroidx/appcompat/app/a$f;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Landroidx/appcompat/app/a$f;IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Landroidx/appcompat/app/a$f;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Z)V
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public abstract b()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract b(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param
.end method

.method public abstract b(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract b(Landroidx/appcompat/app/a$d;)V
.end method

.method public abstract b(Landroidx/appcompat/app/a$f;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract b(Ljava/lang/CharSequence;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()Landroid/view/View;
.end method

.method public abstract c(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param
.end method

.method public abstract c(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method

.method public abstract c(Landroidx/appcompat/app/a$f;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    return-void
.end method

.method public abstract c(Z)V
.end method

.method public abstract d()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract d(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    return-void
.end method

.method public abstract d(Z)V
.end method

.method public abstract e()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract e(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public abstract e(Z)V
.end method

.method public abstract f()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract f(I)V
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    return-void
.end method

.method public f(Z)V
    .locals 0

    return-void
.end method

.method public abstract g()I
.end method

.method public abstract g(I)V
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 967
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract h()Landroidx/appcompat/app/a$f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract h(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public h(Z)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    return-void
.end method

.method public abstract i()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract i(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public i(Z)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    return-void
.end method

.method public abstract j()Landroidx/appcompat/app/a$f;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract j(I)Landroidx/appcompat/app/a$f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public j(Z)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    return-void
.end method

.method public abstract k()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public k(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    return-void
.end method

.method public abstract l()I
.end method

.method public l(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    return-void
.end method

.method public abstract m()V
.end method

.method public m(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1007
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract n()V
.end method

.method public abstract o()Z
.end method

.method public p()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public q()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public r()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public v()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public w()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public x()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method y()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method z()V
    .locals 0

    return-void
.end method
