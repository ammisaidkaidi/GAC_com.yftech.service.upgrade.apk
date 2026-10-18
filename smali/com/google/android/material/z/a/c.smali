.class Lcom/google/android/material/z/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Z


# direct methods
.method private constructor <init>(IIZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/material/z/a/c;->a:I

    .line 39
    iput p2, p0, Lcom/google/android/material/z/a/c;->b:I

    .line 40
    iput-boolean p3, p0, Lcom/google/android/material/z/a/c;->c:Z

    return-void
.end method

.method static a(II)Lcom/google/android/material/z/a/c;
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/material/z/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/z/a/c;-><init>(IIZ)V

    return-object v0
.end method

.method static b(II)Lcom/google/android/material/z/a/c;
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/material/z/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/z/a/c;-><init>(IIZ)V

    return-object v0
.end method
