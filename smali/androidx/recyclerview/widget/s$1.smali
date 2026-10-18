.class Landroidx/recyclerview/widget/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/d$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/s;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/s;)V
    .locals 0

    .line 98
    iput-object p1, p0, Landroidx/recyclerview/widget/s$1;->a:Landroidx/recyclerview/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    iget-object p0, p0, Landroidx/recyclerview/widget/s$1;->a:Landroidx/recyclerview/widget/s;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/s;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
