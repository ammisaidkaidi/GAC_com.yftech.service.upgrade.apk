.class public Lcom/google/android/material/z/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/z/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:F
    .annotation build Landroidx/annotation/r;
        a = 0.0
        b = 1.0
    .end annotation
.end field

.field private final b:F
    .annotation build Landroidx/annotation/r;
        a = 0.0
        b = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param

    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    iput p1, p0, Lcom/google/android/material/z/l$c;->a:F

    .line 1483
    iput p2, p0, Lcom/google/android/material/z/l$c;->b:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/z/l$c;)F
    .locals 0

    .line 1472
    iget p0, p0, Lcom/google/android/material/z/l$c;->a:F

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/z/l$c;)F
    .locals 0

    .line 1472
    iget p0, p0, Lcom/google/android/material/z/l$c;->b:F

    return p0
.end method


# virtual methods
.method public a()F
    .locals 0
    .annotation build Landroidx/annotation/r;
        a = 0.0
        b = 1.0
    .end annotation

    .line 1488
    iget p0, p0, Lcom/google/android/material/z/l$c;->a:F

    return p0
.end method

.method public b()F
    .locals 0
    .annotation build Landroidx/annotation/r;
        a = 0.0
        b = 1.0
    .end annotation

    .line 1493
    iget p0, p0, Lcom/google/android/material/z/l$c;->b:F

    return p0
.end method
