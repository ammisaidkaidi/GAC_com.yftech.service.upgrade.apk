.class public final Lcom/google/android/material/q/a;
.super Lcom/google/android/material/q/f;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/q/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Lcom/google/android/material/q/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/q/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/q/f;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/google/android/material/q/a;->a:Landroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lcom/google/android/material/q/a;->b:Lcom/google/android/material/q/a$a;

    return-void
.end method

.method private a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/google/android/material/q/a;->c:Z

    if-nez v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/google/android/material/q/a;->b:Lcom/google/android/material/q/a$a;

    invoke-interface {p0, p1}, Lcom/google/android/material/q/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/google/android/material/q/a;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/google/android/material/q/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lcom/google/android/material/q/a;->a(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/q/a;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
