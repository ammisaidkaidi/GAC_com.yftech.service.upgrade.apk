.class final Lcom/google/android/material/t/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field public final b:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field public final d:Lcom/google/android/material/t/p$a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public final e:F


# direct methods
.method constructor <init>(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Lcom/google/android/material/t/p$a;Landroid/graphics/Path;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/t/p$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p4, p0, Lcom/google/android/material/t/p$b;->d:Lcom/google/android/material/t/p$a;

    .line 334
    iput-object p1, p0, Lcom/google/android/material/t/p$b;->a:Lcom/google/android/material/t/o;

    .line 335
    iput p2, p0, Lcom/google/android/material/t/p$b;->e:F

    .line 336
    iput-object p3, p0, Lcom/google/android/material/t/p$b;->c:Landroid/graphics/RectF;

    .line 337
    iput-object p5, p0, Lcom/google/android/material/t/p$b;->b:Landroid/graphics/Path;

    return-void
.end method
