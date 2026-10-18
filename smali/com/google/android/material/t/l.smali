.class public final Lcom/google/android/material/t/l;
.super Lcom/google/android/material/t/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/material/t/g;

.field private final b:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/t/g;F)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/t/g;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/material/t/l;->a:Lcom/google/android/material/t/g;

    .line 29
    iput p2, p0, Lcom/google/android/material/t/l;->b:F

    return-void
.end method


# virtual methods
.method public a(FFFLcom/google/android/material/t/q;)V
    .locals 1
    .param p4    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 35
    iget-object v0, p0, Lcom/google/android/material/t/l;->a:Lcom/google/android/material/t/g;

    iget p0, p0, Lcom/google/android/material/t/l;->b:F

    sub-float/2addr p2, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/t/g;->a(FFFLcom/google/android/material/t/q;)V

    return-void
.end method

.method f()Z
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/material/t/l;->a:Lcom/google/android/material/t/g;

    invoke-virtual {p0}, Lcom/google/android/material/t/g;->f()Z

    move-result p0

    return p0
.end method
