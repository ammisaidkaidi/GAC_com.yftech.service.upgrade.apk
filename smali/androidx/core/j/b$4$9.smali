.class Landroidx/core/j/b$4$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/j/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Typeface;

.field final synthetic b:Landroidx/core/j/b$4;


# direct methods
.method constructor <init>(Landroidx/core/j/b$4;Landroid/graphics/Typeface;)V
    .locals 0

    .line 645
    iput-object p1, p0, Landroidx/core/j/b$4$9;->b:Landroidx/core/j/b$4;

    iput-object p2, p0, Landroidx/core/j/b$4$9;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 648
    iget-object v0, p0, Landroidx/core/j/b$4$9;->b:Landroidx/core/j/b$4;

    iget-object v0, v0, Landroidx/core/j/b$4;->d:Landroidx/core/j/b$d;

    iget-object p0, p0, Landroidx/core/j/b$4$9;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroidx/core/j/b$d;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
