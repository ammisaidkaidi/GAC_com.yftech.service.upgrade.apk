.class final Landroidx/fragment/app/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/d;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/g$b;

.field h:Landroidx/lifecycle/g$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/d;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/fragment/app/s$a;->a:I

    .line 77
    iput-object p2, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    .line 78
    sget-object p1, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->g:Landroidx/lifecycle/g$b;

    .line 79
    sget-object p1, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/g$b;

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/d;Landroidx/lifecycle/g$b;)V
    .locals 0
    .param p2    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroidx/fragment/app/s$a;->a:I

    .line 84
    iput-object p2, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    .line 85
    iget-object p1, p2, Landroidx/fragment/app/d;->ai:Landroidx/lifecycle/g$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->g:Landroidx/lifecycle/g$b;

    .line 86
    iput-object p3, p0, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/g$b;

    return-void
.end method
