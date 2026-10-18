.class Lcom/google/android/material/q/d$1;
.super Landroidx/core/b/b/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/q/d;->a(Landroid/content/Context;Lcom/google/android/material/q/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/q/f;

.field final synthetic b:Lcom/google/android/material/q/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/q/d;Lcom/google/android/material/q/f;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/google/android/material/q/d$1;->b:Lcom/google/android/material/q/d;

    iput-object p2, p0, Lcom/google/android/material/q/d$1;->a:Lcom/google/android/material/q/f;

    invoke-direct {p0}, Landroidx/core/b/b/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/google/android/material/q/d$1;->b:Lcom/google/android/material/q/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/q/d;->a(Lcom/google/android/material/q/d;Z)Z

    .line 188
    iget-object p0, p0, Lcom/google/android/material/q/d$1;->a:Lcom/google/android/material/q/f;

    invoke-virtual {p0, p1}, Lcom/google/android/material/q/f;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lcom/google/android/material/q/d$1;->b:Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/q/d$1;->b:Lcom/google/android/material/q/d;

    iget v1, v1, Lcom/google/android/material/q/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/q/d;->a(Lcom/google/android/material/q/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    iget-object p1, p0, Lcom/google/android/material/q/d$1;->b:Lcom/google/android/material/q/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/q/d;->a(Lcom/google/android/material/q/d;Z)Z

    .line 182
    iget-object p1, p0, Lcom/google/android/material/q/d$1;->a:Lcom/google/android/material/q/f;

    iget-object p0, p0, Lcom/google/android/material/q/d$1;->b:Lcom/google/android/material/q/d;

    invoke-static {p0}, Lcom/google/android/material/q/d;->a(Lcom/google/android/material/q/d;)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/q/f;->a(Landroid/graphics/Typeface;Z)V

    return-void
.end method
