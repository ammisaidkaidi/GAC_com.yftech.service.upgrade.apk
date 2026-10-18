.class public final Landroidx/core/n/a/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ACCESSIBILITY_CLICKABLE_SPAN_ID"
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Landroidx/core/n/a/d;

.field private final d:I


# direct methods
.method public constructor <init>(ILandroidx/core/n/a/d;I)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 56
    iput p1, p0, Landroidx/core/n/a/a;->b:I

    .line 57
    iput-object p2, p0, Landroidx/core/n/a/a;->c:Landroidx/core/n/a/d;

    .line 58
    iput p3, p0, Landroidx/core/n/a/a;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 70
    iget v1, p0, Landroidx/core/n/a/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Landroidx/core/n/a/a;->c:Landroidx/core/n/a/d;

    iget p0, p0, Landroidx/core/n/a/a;->d:I

    invoke-virtual {v0, p0, p1}, Landroidx/core/n/a/d;->a(ILandroid/os/Bundle;)Z

    return-void
.end method
