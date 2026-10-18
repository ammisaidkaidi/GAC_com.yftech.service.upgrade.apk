.class Landroidx/core/l/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/l/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/l/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/core/l/d$a;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/core/l/d$a;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Landroidx/core/l/d$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Landroidx/core/l/d$b$a;->a:Landroidx/core/l/d$a;

    .line 575
    iput-object p2, p0, Landroidx/core/l/d$b$a;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/l/d;
    .locals 1

    .line 580
    iget-object v0, p0, Landroidx/core/l/d$b$a;->b:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/core/l/d$b$a;->a:Landroidx/core/l/d$a;

    invoke-static {v0, p0}, Landroidx/core/l/d;->a(Ljava/lang/CharSequence;Landroidx/core/l/d$a;)Landroidx/core/l/d;

    move-result-object p0

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0

    .line 568
    invoke-virtual {p0}, Landroidx/core/l/d$b$a;->a()Landroidx/core/l/d;

    move-result-object p0

    return-object p0
.end method
