.class public Lcom/google/android/material/g/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:F = 3.4028235E38f


# instance fields
.field public b:F

.field public c:F

.field public d:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/google/android/material/g/g$d;->b:F

    .line 148
    iput p2, p0, Lcom/google/android/material/g/g$d;->c:F

    .line 149
    iput p3, p0, Lcom/google/android/material/g/g$d;->d:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/g/g$1;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/google/android/material/g/g$d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/g/g$d;)V
    .locals 2
    .param p1    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 153
    iget v0, p1, Lcom/google/android/material/g/g$d;->b:F

    iget v1, p1, Lcom/google/android/material/g/g$d;->c:F

    iget p1, p1, Lcom/google/android/material/g/g$d;->d:F

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/g/g$d;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/google/android/material/g/g$d;->b:F

    .line 158
    iput p2, p0, Lcom/google/android/material/g/g$d;->c:F

    .line 159
    iput p3, p0, Lcom/google/android/material/g/g$d;->d:F

    return-void
.end method

.method public a(Lcom/google/android/material/g/g$d;)V
    .locals 2
    .param p1    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 163
    iget v0, p1, Lcom/google/android/material/g/g$d;->b:F

    iget v1, p1, Lcom/google/android/material/g/g$d;->c:F

    iget p1, p1, Lcom/google/android/material/g/g$d;->d:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/material/g/g$d;->a(FFF)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 171
    iget p0, p0, Lcom/google/android/material/g/g$d;->d:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
