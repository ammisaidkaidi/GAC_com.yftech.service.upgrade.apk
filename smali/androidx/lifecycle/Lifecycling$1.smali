.class final Landroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/m;->a(Ljava/lang/Object;)Landroidx/lifecycle/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/h;


# direct methods
.method constructor <init>(Landroidx/lifecycle/h;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroidx/lifecycle/Lifecycling$1;->a:Landroidx/lifecycle/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/j;Landroidx/lifecycle/g$a;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/g$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 60
    iget-object p0, p0, Landroidx/lifecycle/Lifecycling$1;->a:Landroidx/lifecycle/h;

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/g$a;)V

    return-void
.end method
