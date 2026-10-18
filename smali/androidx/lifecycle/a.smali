.class public Landroidx/lifecycle/a;
.super Landroidx/lifecycle/v;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/v;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/lifecycle/a;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public b()Landroid/app/Application;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Landroidx/lifecycle/a;->a:Landroid/app/Application;

    return-object p0
.end method
