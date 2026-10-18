.class public final Landroidx/core/b/b/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/b/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:Landroidx/core/j/a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroidx/core/j/a;II)V
    .locals 0
    .param p1    # Landroidx/core/j/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/core/b/b/d$e;->a:Landroidx/core/j/a;

    .line 84
    iput p2, p0, Landroidx/core/b/b/d$e;->c:I

    .line 85
    iput p3, p0, Landroidx/core/b/b/d$e;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/j/a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 89
    iget-object p0, p0, Landroidx/core/b/b/d$e;->a:Landroidx/core/j/a;

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 93
    iget p0, p0, Landroidx/core/b/b/d$e;->c:I

    return p0
.end method

.method public c()I
    .locals 0

    .line 97
    iget p0, p0, Landroidx/core/b/b/d$e;->b:I

    return p0
.end method
