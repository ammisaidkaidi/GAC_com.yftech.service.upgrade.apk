.class abstract Landroidx/d/b/b/l;
.super Landroidx/d/b/b/e;
.source "SourceFile"


# static fields
.field protected static final N:F = 20.0f


# instance fields
.field O:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/d/b/b/e;-><init>()V

    .line 31
    sget v0, Landroidx/d/b/b/l;->a:I

    iput v0, p0, Landroidx/d/b/b/l;->O:I

    return-void
.end method


# virtual methods
.method abstract a()F
.end method

.method abstract a(IIFFFF)V
.end method

.method abstract a(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
.end method

.method a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
.end method

.method abstract b()F
.end method
