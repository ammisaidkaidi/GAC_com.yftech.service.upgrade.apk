.class public Lcom/google/android/material/t/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFLcom/google/android/material/t/q;)V
    .locals 0
    .param p4    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x0

    .line 64
    invoke-virtual {p4, p1, p0}, Lcom/google/android/material/t/q;->b(FF)V

    return-void
.end method

.method public a(FFLcom/google/android/material/t/q;)V
    .locals 1
    .param p3    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 39
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/material/t/g;->a(FFFLcom/google/android/material/t/q;)V

    return-void
.end method

.method f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
