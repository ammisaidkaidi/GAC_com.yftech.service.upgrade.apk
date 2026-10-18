.class Landroidx/viewpager2/adapter/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/adapter/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/adapter/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;)V
    .locals 0

    .line 576
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$3;->a:Landroidx/viewpager2/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$3;->a:Landroidx/viewpager2/adapter/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/viewpager2/adapter/a;->d:Z

    .line 580
    iget-object p0, p0, Landroidx/viewpager2/adapter/a$3;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->b()V

    return-void
.end method
