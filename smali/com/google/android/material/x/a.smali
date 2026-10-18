.class public Lcom/google/android/material/x/a;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/x/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lcom/google/android/material/a$o;->TabItem:[I

    .line 55
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ba;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ba;

    move-result-object p1

    .line 56
    sget p2, Lcom/google/android/material/a$o;->TabItem_android_text:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ba;->d(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/x/a;->a:Ljava/lang/CharSequence;

    .line 57
    sget p2, Lcom/google/android/material/a$o;->TabItem_android_icon:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ba;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/x/a;->b:Landroid/graphics/drawable/Drawable;

    .line 58
    sget p2, Lcom/google/android/material/a$o;->TabItem_android_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/x/a;->c:I

    .line 59
    invoke-virtual {p1}, Landroidx/appcompat/widget/ba;->f()V

    return-void
.end method
