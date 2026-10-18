.class Landroidx/j/e$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/e;->a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/e$a;

.field final synthetic b:Landroidx/j/e;

.field private mViewBounds:Landroidx/j/e$a;


# direct methods
.method constructor <init>(Landroidx/j/e;Landroidx/j/e$a;)V
    .locals 0

    .line 326
    iput-object p1, p0, Landroidx/j/e$8;->b:Landroidx/j/e;

    iput-object p2, p0, Landroidx/j/e$8;->a:Landroidx/j/e$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    iget-object p1, p0, Landroidx/j/e$8;->a:Landroidx/j/e$a;

    iput-object p1, p0, Landroidx/j/e$8;->mViewBounds:Landroidx/j/e$a;

    return-void
.end method
