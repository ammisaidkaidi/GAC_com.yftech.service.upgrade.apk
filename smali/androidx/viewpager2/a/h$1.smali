.class Landroidx/viewpager2/a/h$1;
.super Landroidx/viewpager2/a/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/a/h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/viewpager2/a/h$1;->a:Landroidx/viewpager2/a/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/a/h$c;-><init>(Landroidx/viewpager2/a/h$1;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/viewpager2/a/h$1;->a:Landroidx/viewpager2/a/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/viewpager2/a/h;->i:Z

    .line 137
    iget-object p0, p0, Landroidx/viewpager2/a/h$1;->a:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->k:Landroidx/viewpager2/a/g;

    invoke-virtual {p0}, Landroidx/viewpager2/a/g;->a()V

    return-void
.end method
