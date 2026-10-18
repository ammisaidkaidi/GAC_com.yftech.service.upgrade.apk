.class Landroidx/appcompat/app/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 264
    iput-object p1, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    iget v0, v0, Landroidx/appcompat/app/h;->G:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/h;->k(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    iget v0, v0, Landroidx/appcompat/app/h;->G:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/h;->k(I)V

    .line 273
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    iput-boolean v1, v0, Landroidx/appcompat/app/h;->F:Z

    .line 274
    iget-object p0, p0, Landroidx/appcompat/app/h$2;->a:Landroidx/appcompat/app/h;

    iput v1, p0, Landroidx/appcompat/app/h;->G:I

    return-void
.end method
