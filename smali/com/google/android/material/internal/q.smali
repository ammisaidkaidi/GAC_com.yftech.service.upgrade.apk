.class public Lcom/google/android/material/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/q$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Lcom/google/android/material/q/f;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/material/q/d;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/q$a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/internal/q$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    .line 43
    new-instance v0, Lcom/google/android/material/internal/q$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/q$1;-><init>(Lcom/google/android/material/internal/q;)V

    iput-object v0, p0, Lcom/google/android/material/internal/q;->b:Lcom/google/android/material/q/f;

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/internal/q;->d:Z

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/q;->e:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/internal/q$a;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)F
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/internal/q;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/material/internal/q;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/internal/q;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/google/android/material/internal/q;->d:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/google/android/material/internal/q;->d:Z

    if-nez v0, :cond_0

    .line 101
    iget p0, p0, Lcom/google/android/material/internal/q;->c:F

    return p0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/q;->a(Ljava/lang/CharSequence;)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/q;->c:F

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/internal/q;->d:Z

    .line 106
    iget p0, p0, Lcom/google/android/material/internal/q;->c:F

    return p0
.end method

.method public a()Landroid/text/TextPaint;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/q;->f:Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    iget-object p0, p0, Lcom/google/android/material/internal/q;->b:Lcom/google/android/material/q/f;

    invoke-virtual {v0, p1, v1, p0}, Lcom/google/android/material/q/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/q/f;)V

    return-void
.end method

.method public a(Lcom/google/android/material/internal/q$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/internal/q$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/q;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/google/android/material/q/d;Landroid/content/Context;)V
    .locals 2
    .param p1    # Lcom/google/android/material/q/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 134
    iget-object v0, p0, Lcom/google/android/material/internal/q;->f:Lcom/google/android/material/q/d;

    if-eq v0, p1, :cond_2

    .line 135
    iput-object p1, p0, Lcom/google/android/material/internal/q;->f:Lcom/google/android/material/q/d;

    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/q;->b:Lcom/google/android/material/q/f;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/q/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/q/f;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/material/internal/q;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/q$a;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/q$a;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/q;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/q;->b:Lcom/google/android/material/q/f;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/q/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/q/f;)V

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/google/android/material/internal/q;->d:Z

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/q;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/q$a;

    if-eqz p0, :cond_2

    .line 149
    invoke-interface {p0}, Lcom/google/android/material/internal/q$a;->i()V

    .line 150
    invoke-interface {p0}, Lcom/google/android/material/internal/q$a;->getState()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/material/internal/q$a;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/google/android/material/internal/q;->d:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/google/android/material/internal/q;->d:Z

    return p0
.end method

.method public c()Lcom/google/android/material/q/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 123
    iget-object p0, p0, Lcom/google/android/material/internal/q;->f:Lcom/google/android/material/q/d;

    return-object p0
.end method
