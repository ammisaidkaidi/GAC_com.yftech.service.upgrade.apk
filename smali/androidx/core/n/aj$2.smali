.class Landroidx/core/n/aj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/n/aj;->a(Landroidx/core/n/am;)Landroidx/core/n/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/n/am;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/n/aj;


# direct methods
.method constructor <init>(Landroidx/core/n/aj;Landroidx/core/n/am;Landroid/view/View;)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/core/n/aj$2;->c:Landroidx/core/n/aj;

    iput-object p2, p0, Landroidx/core/n/aj$2;->a:Landroidx/core/n/am;

    iput-object p3, p0, Landroidx/core/n/aj$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 783
    iget-object p1, p0, Landroidx/core/n/aj$2;->a:Landroidx/core/n/am;

    iget-object p0, p0, Landroidx/core/n/aj$2;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/n/am;->a(Landroid/view/View;)V

    return-void
.end method
