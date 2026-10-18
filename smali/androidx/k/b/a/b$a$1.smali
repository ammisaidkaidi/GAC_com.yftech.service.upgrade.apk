.class Landroidx/k/b/a/b$a$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/b/a/b$a;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/k/b/a/b$a;


# direct methods
.method constructor <init>(Landroidx/k/b/a/b$a;)V
    .locals 0

    .line 78
    iput-object p1, p0, Landroidx/k/b/a/b$a$1;->a:Landroidx/k/b/a/b$a;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 86
    iget-object p0, p0, Landroidx/k/b/a/b$a$1;->a:Landroidx/k/b/a/b$a;

    invoke-virtual {p0, p1}, Landroidx/k/b/a/b$a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 81
    iget-object p0, p0, Landroidx/k/b/a/b$a$1;->a:Landroidx/k/b/a/b$a;

    invoke-virtual {p0, p1}, Landroidx/k/b/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
