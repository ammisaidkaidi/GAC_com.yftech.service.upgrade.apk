.class public Lcom/google/android/material/internal/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/google/android/material/internal/z$b;->a:I

    .line 122
    iput p2, p0, Lcom/google/android/material/internal/z$b;->b:I

    .line 123
    iput p3, p0, Lcom/google/android/material/internal/z$b;->c:I

    .line 124
    iput p4, p0, Lcom/google/android/material/internal/z$b;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/z$b;)V
    .locals 1
    .param p1    # Lcom/google/android/material/internal/z$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget v0, p1, Lcom/google/android/material/internal/z$b;->a:I

    iput v0, p0, Lcom/google/android/material/internal/z$b;->a:I

    .line 129
    iget v0, p1, Lcom/google/android/material/internal/z$b;->b:I

    iput v0, p0, Lcom/google/android/material/internal/z$b;->b:I

    .line 130
    iget v0, p1, Lcom/google/android/material/internal/z$b;->c:I

    iput v0, p0, Lcom/google/android/material/internal/z$b;->c:I

    .line 131
    iget p1, p1, Lcom/google/android/material/internal/z$b;->d:I

    iput p1, p0, Lcom/google/android/material/internal/z$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 136
    iget v0, p0, Lcom/google/android/material/internal/z$b;->a:I

    iget v1, p0, Lcom/google/android/material/internal/z$b;->b:I

    iget v2, p0, Lcom/google/android/material/internal/z$b;->c:I

    iget p0, p0, Lcom/google/android/material/internal/z$b;->d:I

    invoke-static {p1, v0, v1, v2, p0}, Landroidx/core/n/af;->b(Landroid/view/View;IIII)V

    return-void
.end method
