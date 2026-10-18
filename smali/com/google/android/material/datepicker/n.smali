.class public Lcom/google/android/material/datepicker/n;
.super Landroid/app/DatePickerDialog;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;,
        .enum Landroidx/annotation/ap$a;->TESTS:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x101035c
    .annotation build Landroidx/annotation/f;
    .end annotation
.end field

.field private static final b:I
    .annotation build Landroidx/annotation/at;
    .end annotation
.end field


# instance fields
.field private final c:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final d:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lcom/google/android/material/a$n;->MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner:I

    sput v0, Lcom/google/android/material/datepicker/n;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/n;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/n;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 83
    invoke-direct/range {p0 .. p6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$c;->colorSurface:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    .line 87
    invoke-static {p2, p3, p4}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 90
    new-instance p3, Lcom/google/android/material/t/j;

    sget p4, Lcom/google/android/material/datepicker/n;->b:I

    const p5, 0x101035c

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p5, p4}, Lcom/google/android/material/t/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p4, p6, :cond_0

    .line 94
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 96
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 99
    :goto_0
    sget p2, Lcom/google/android/material/datepicker/n;->b:I

    .line 100
    invoke-static {p1, p5, p2}, Lcom/google/android/material/i/c;->a(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->d:Landroid/graphics/Rect;

    .line 101
    iget-object p1, p0, Lcom/google/android/material/datepicker/n;->d:Landroid/graphics/Rect;

    invoke-static {p3, p1}, Lcom/google/android/material/i/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/n;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Landroid/app/DatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/i/a;

    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->d:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/i/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
