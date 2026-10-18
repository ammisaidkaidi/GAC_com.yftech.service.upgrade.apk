.class public final Landroidx/core/b/b/d$c;
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
    name = "c"
.end annotation


# instance fields
.field private final a:[Landroidx/core/b/b/d$d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroidx/core/b/b/d$d;)V
    .locals 0
    .param p1    # [Landroidx/core/b/b/d$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroidx/core/b/b/d$c;->a:[Landroidx/core/b/b/d$d;

    return-void
.end method


# virtual methods
.method public a()[Landroidx/core/b/b/d$d;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 158
    iget-object p0, p0, Landroidx/core/b/b/d$c;->a:[Landroidx/core/b/b/d$d;

    return-object p0
.end method
