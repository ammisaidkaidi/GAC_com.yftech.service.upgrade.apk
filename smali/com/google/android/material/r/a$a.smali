.class final Lcom/google/android/material/r/a$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/r/a$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/r/a$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 180
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 181
    iget-object v0, p1, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {v0}, Lcom/google/android/material/t/j;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/t/j;

    iput-object v0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    .line 182
    iget-boolean p1, p1, Lcom/google/android/material/r/a$a;->b:Z

    iput-boolean p1, p0, Lcom/google/android/material/r/a$a;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/t/j;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/google/android/material/r/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/r/a;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 188
    new-instance v0, Lcom/google/android/material/r/a;

    new-instance v1, Lcom/google/android/material/r/a$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/r/a$a;-><init>(Lcom/google/android/material/r/a$a;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/r/a;-><init>(Lcom/google/android/material/r/a$a;Lcom/google/android/material/r/a$1;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/r/a$a;->a()Lcom/google/android/material/r/a;

    move-result-object p0

    return-object p0
.end method
