.class public Landroidx/core/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/n/f$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/core/n/f$a;

.field private c:I

.field private d:I

.field private e:Z

.field private final f:Landroid/view/View$OnLongClickListener;

.field private final g:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/n/f$a;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroidx/core/n/f$1;

    invoke-direct {v0, p0}, Landroidx/core/n/f$1;-><init>(Landroidx/core/n/f;)V

    iput-object v0, p0, Landroidx/core/n/f;->f:Landroid/view/View$OnLongClickListener;

    .line 188
    new-instance v0, Landroidx/core/n/f$2;

    invoke-direct {v0, p0}, Landroidx/core/n/f$2;-><init>(Landroidx/core/n/f;)V

    iput-object v0, p0, Landroidx/core/n/f;->g:Landroid/view/View$OnTouchListener;

    .line 97
    iput-object p1, p0, Landroidx/core/n/f;->a:Landroid/view/View;

    .line 98
    iput-object p2, p0, Landroidx/core/n/f;->b:Landroidx/core/n/f$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 107
    iget-object v0, p0, Landroidx/core/n/f;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/n/f;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v0, p0, Landroidx/core/n/f;->a:Landroid/view/View;

    iget-object p0, p0, Landroidx/core/n/f;->g:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 1

    .line 178
    iget v0, p0, Landroidx/core/n/f;->c:I

    iget p0, p0, Landroidx/core/n/f;->d:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/core/n/f;->b:Landroidx/core/n/f$a;

    invoke-interface {v0, p1, p0}, Landroidx/core/n/f$a;->a(Landroid/view/View;Landroidx/core/n/f;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x2002

    .line 138
    invoke-static {p2, v2}, Landroidx/core/n/p;->e(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean p2, p0, Landroidx/core/n/f;->e:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget p2, p0, Landroidx/core/n/f;->c:I

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroidx/core/n/f;->d:I

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 151
    :cond_2
    iput v0, p0, Landroidx/core/n/f;->c:I

    .line 152
    iput v1, p0, Landroidx/core/n/f;->d:I

    .line 153
    iget-object p2, p0, Landroidx/core/n/f;->b:Landroidx/core/n/f$a;

    invoke-interface {p2, p1, p0}, Landroidx/core/n/f$a;->a(Landroid/view/View;Landroidx/core/n/f;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/n/f;->e:Z

    .line 154
    iget-boolean p0, p0, Landroidx/core/n/f;->e:Z

    return p0

    .line 158
    :pswitch_1
    iput-boolean v3, p0, Landroidx/core/n/f;->e:Z

    goto :goto_0

    .line 133
    :pswitch_2
    iput v0, p0, Landroidx/core/n/f;->c:I

    .line 134
    iput v1, p0, Landroidx/core/n/f;->d:I

    :cond_3
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/core/n/f;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    iget-object p0, p0, Landroidx/core/n/f;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
