.class public Lcom/google/android/material/z/a/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/z/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/google/android/material/t/o;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 76
    instance-of p0, p1, Lcom/google/android/material/t/s;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/material/t/s;

    .line 77
    invoke-interface {p1}, Lcom/google/android/material/t/s;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
