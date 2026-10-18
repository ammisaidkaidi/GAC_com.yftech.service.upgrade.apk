.class Landroidx/j/n$1;
.super Landroidx/j/ag$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/n;->a(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/j/n;


# direct methods
.method constructor <init>(Landroidx/j/n;Landroid/graphics/Rect;)V
    .locals 0

    .line 91
    iput-object p1, p0, Landroidx/j/n$1;->b:Landroidx/j/n;

    iput-object p2, p0, Landroidx/j/n$1;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/j/ag$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/ag;)Landroid/graphics/Rect;
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 94
    iget-object p0, p0, Landroidx/j/n$1;->a:Landroid/graphics/Rect;

    return-object p0
.end method
