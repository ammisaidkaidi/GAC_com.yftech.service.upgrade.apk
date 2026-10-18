.class final Lcom/google/android/material/z/a/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/z/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)Lcom/google/android/material/z/a/c;
    .locals 2

    sub-float p0, p3, p2

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p0, v0

    add-float/2addr p0, p2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 75
    invoke-static {v1, v0, p2, p0, p1}, Lcom/google/android/material/z/a/v;->a(IIFFF)I

    move-result p2

    .line 76
    invoke-static {v0, v1, p0, p3, p1}, Lcom/google/android/material/z/a/v;->a(IIFFF)I

    move-result p0

    .line 77
    invoke-static {p2, p0}, Lcom/google/android/material/z/a/c;->a(II)Lcom/google/android/material/z/a/c;

    move-result-object p0

    return-object p0
.end method
