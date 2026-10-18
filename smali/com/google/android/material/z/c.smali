.class Lcom/google/android/material/z/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:Z


# direct methods
.method private constructor <init>(IIZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/material/z/c;->a:I

    .line 34
    iput p2, p0, Lcom/google/android/material/z/c;->b:I

    .line 35
    iput-boolean p3, p0, Lcom/google/android/material/z/c;->c:Z

    return-void
.end method

.method static a(II)Lcom/google/android/material/z/c;
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/material/z/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/z/c;-><init>(IIZ)V

    return-object v0
.end method

.method static b(II)Lcom/google/android/material/z/c;
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/material/z/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/z/c;-><init>(IIZ)V

    return-object v0
.end method
