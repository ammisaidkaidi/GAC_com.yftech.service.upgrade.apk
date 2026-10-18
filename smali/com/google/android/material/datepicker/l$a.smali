.class public final Lcom/google/android/material/datepicker/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation
.end field

.field b:I

.field c:Lcom/google/android/material/datepicker/a;

.field d:I

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field g:I


# direct methods
.method private constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;)V"
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 530
    iput v0, p0, Lcom/google/android/material/datepicker/l$a;->b:I

    .line 533
    iput v0, p0, Lcom/google/android/material/datepicker/l$a;->d:I

    const/4 v1, 0x0

    .line 534
    iput-object v1, p0, Lcom/google/android/material/datepicker/l$a;->e:Ljava/lang/CharSequence;

    .line 535
    iput-object v1, p0, Lcom/google/android/material/datepicker/l$a;->f:Ljava/lang/Object;

    .line 536
    iput v0, p0, Lcom/google/android/material/datepicker/l$a;->g:I

    .line 539
    iput-object p1, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/f;

    return-void
.end method

.method public static a()Lcom/google/android/material/datepicker/l$a;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/l$a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 559
    new-instance v0, Lcom/google/android/material/datepicker/l$a;

    new-instance v1, Lcom/google/android/material/datepicker/v;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/v;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/l$a;-><init>(Lcom/google/android/material/datepicker/f;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/l$a;
    .locals 1
    .param p0    # Lcom/google/android/material/datepicker/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 550
    new-instance v0, Lcom/google/android/material/datepicker/l$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/l$a;-><init>(Lcom/google/android/material/datepicker/f;)V

    return-object v0
.end method

.method public static b()Lcom/google/android/material/datepicker/l$a;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/l$a<",
            "Landroidx/core/m/f<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 568
    new-instance v0, Lcom/google/android/material/datepicker/l$a;

    new-instance v1, Lcom/google/android/material/datepicker/u;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/u;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/l$a;-><init>(Lcom/google/android/material/datepicker/f;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/google/android/material/datepicker/l$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 580
    iput p1, p0, Lcom/google/android/material/datepicker/l$a;->b:I

    return-object p0
.end method

.method public a(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/a;",
            ")",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lcom/google/android/material/datepicker/l$a;->c:Lcom/google/android/material/datepicker/a;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/l$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 608
    iput-object p1, p0, Lcom/google/android/material/datepicker/l$a;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 609
    iput p1, p0, Lcom/google/android/material/datepicker/l$a;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/android/material/datepicker/l$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/google/android/material/datepicker/l$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public b(I)Lcom/google/android/material/datepicker/l$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 597
    iput p1, p0, Lcom/google/android/material/datepicker/l$a;->d:I

    const/4 p1, 0x0

    .line 598
    iput-object p1, p0, Lcom/google/android/material/datepicker/l$a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(I)Lcom/google/android/material/datepicker/l$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;"
        }
    .end annotation

    .line 616
    iput p1, p0, Lcom/google/android/material/datepicker/l$a;->g:I

    return-object p0
.end method

.method public c()Lcom/google/android/material/datepicker/l;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/l<",
            "TS;>;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$a;->c:Lcom/google/android/material/datepicker/a;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lcom/google/android/material/datepicker/a$a;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a$a;->a()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/l$a;->c:Lcom/google/android/material/datepicker/a;

    .line 626
    :cond_0
    iget v0, p0, Lcom/google/android/material/datepicker/l$a;->d:I

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/f;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/f;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l$a;->d:I

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$a;->f:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/f;

    iget-object v1, p0, Lcom/google/android/material/datepicker/l$a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/f;->a(Ljava/lang/Object;)V

    .line 632
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/l$a;)Lcom/google/android/material/datepicker/l;

    move-result-object p0

    return-object p0
.end method
