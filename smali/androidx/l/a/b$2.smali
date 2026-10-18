.class Landroidx/l/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/l/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/l/a/b;


# direct methods
.method constructor <init>(Landroidx/l/a/b;)V
    .locals 0

    .line 118
    iput-object p1, p0, Landroidx/l/a/b$2;->a:Landroidx/l/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Landroidx/l/a/b$2;->a:Landroidx/l/a/b;

    iget-object p1, p1, Landroidx/l/a/b;->a:Landroidx/l/a/d;

    iget-object p0, p0, Landroidx/l/a/b$2;->a:Landroidx/l/a/b;

    iget-object p0, p0, Landroidx/l/a/b;->a:Landroidx/l/a/d;

    invoke-virtual {p0}, Landroidx/l/a/d;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/l/a/d;->setCurrentItem(I)V

    return-void
.end method
