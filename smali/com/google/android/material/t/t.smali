.class public Lcom/google/android/material/t/t;
.super Lcom/google/android/material/t/g;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/t/g;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/material/t/t;->a:F

    .line 44
    iput-boolean p2, p0, Lcom/google/android/material/t/t;->b:Z

    return-void
.end method


# virtual methods
.method public a(FFFLcom/google/android/material/t/q;)V
    .locals 2
    .param p4    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 50
    iget v0, p0, Lcom/google/android/material/t/t;->a:F

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/t/q;->b(FF)V

    .line 51
    iget-boolean v0, p0, Lcom/google/android/material/t/t;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/t/t;->a:F

    :goto_0
    mul-float/2addr v0, p3

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/t/t;->a:F

    neg-float v0, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p4, p2, v0}, Lcom/google/android/material/t/q;->b(FF)V

    .line 52
    iget p0, p0, Lcom/google/android/material/t/t;->a:F

    mul-float/2addr p0, p3

    add-float/2addr p2, p0

    invoke-virtual {p4, p2, v1}, Lcom/google/android/material/t/q;->b(FF)V

    .line 53
    invoke-virtual {p4, p1, v1}, Lcom/google/android/material/t/q;->b(FF)V

    return-void
.end method
