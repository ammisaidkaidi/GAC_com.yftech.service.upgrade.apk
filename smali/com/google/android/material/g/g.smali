.class public interface abstract Lcom/google/android/material/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/g/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/g/g$c;,
        Lcom/google/android/material/g/g$a;,
        Lcom/google/android/material/g/g$b;,
        Lcom/google/android/material/g/g$d;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract g_()V
.end method

.method public abstract getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end method

.method public abstract getRevealInfo()Lcom/google/android/material/g/g$d;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Lcom/google/android/material/g/g$d;)V
    .param p1    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method
