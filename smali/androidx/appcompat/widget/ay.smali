.class public Landroidx/appcompat/widget/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:Landroid/graphics/PorterDuff$Mode;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Landroidx/appcompat/widget/ay;->a:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Landroidx/appcompat/widget/ay;->d:Z

    .line 37
    iput-object v0, p0, Landroidx/appcompat/widget/ay;->b:Landroid/graphics/PorterDuff$Mode;

    .line 38
    iput-boolean v1, p0, Landroidx/appcompat/widget/ay;->c:Z

    return-void
.end method
