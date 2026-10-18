.class Lcom/google/android/material/q/d$2;
.super Lcom/google/android/material/q/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/q/d;->a(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/q/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lcom/google/android/material/q/f;

.field final synthetic c:Lcom/google/android/material/q/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/q/d;Landroid/text/TextPaint;Lcom/google/android/material/q/f;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/android/material/q/d$2;->c:Lcom/google/android/material/q/d;

    iput-object p2, p0, Lcom/google/android/material/q/d$2;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/google/android/material/q/d$2;->b:Lcom/google/android/material/q/f;

    invoke-direct {p0}, Lcom/google/android/material/q/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/google/android/material/q/d$2;->b:Lcom/google/android/material/q/f;

    invoke-virtual {p0, p1}, Lcom/google/android/material/q/f;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 226
    iget-object v0, p0, Lcom/google/android/material/q/d$2;->c:Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/q/d$2;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/q/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 227
    iget-object p0, p0, Lcom/google/android/material/q/d$2;->b:Lcom/google/android/material/q/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/q/f;->a(Landroid/graphics/Typeface;Z)V

    return-void
.end method
