.class public Landroidx/d/b/b/n;
.super Landroidx/d/b/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/b/n$a;
    }
.end annotation


# static fields
.field public static final C:I = 0x5

.field private static final D:Ljava/lang/String; = "KeyTrigger"

.field static final y:Ljava/lang/String; = "KeyTrigger"


# instance fields
.field A:Landroid/graphics/RectF;

.field B:Landroid/graphics/RectF;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:Landroid/view/View;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:F

.field private Q:Ljava/lang/reflect/Method;

.field private R:Ljava/lang/reflect/Method;

.field private S:Ljava/lang/reflect/Method;

.field private T:F

.field private U:Z

.field z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroidx/d/b/b/e;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/d/b/b/n;->E:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Landroidx/d/b/b/n;->F:Ljava/lang/String;

    .line 46
    sget v1, Landroidx/d/b/b/n;->a:I

    iput v1, p0, Landroidx/d/b/b/n;->G:I

    .line 47
    iput-object v0, p0, Landroidx/d/b/b/n;->H:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Landroidx/d/b/b/n;->I:Ljava/lang/String;

    .line 49
    sget v1, Landroidx/d/b/b/n;->a:I

    iput v1, p0, Landroidx/d/b/b/n;->J:I

    .line 50
    sget v1, Landroidx/d/b/b/n;->a:I

    iput v1, p0, Landroidx/d/b/b/n;->K:I

    .line 51
    iput-object v0, p0, Landroidx/d/b/b/n;->L:Landroid/view/View;

    const v0, 0x3dcccccd    # 0.1f

    .line 52
    iput v0, p0, Landroidx/d/b/b/n;->z:F

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Landroidx/d/b/b/n;->M:Z

    .line 54
    iput-boolean v0, p0, Landroidx/d/b/b/n;->N:Z

    .line 55
    iput-boolean v0, p0, Landroidx/d/b/b/n;->O:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 56
    iput v0, p0, Landroidx/d/b/b/n;->P:F

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/d/b/b/n;->U:Z

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/n;->A:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/n;->B:Landroid/graphics/RectF;

    const/4 v0, 0x5

    .line 70
    iput v0, p0, Landroidx/d/b/b/n;->e:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/n;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/n;F)F
    .locals 0

    .line 41
    iput p1, p0, Landroidx/d/b/b/n;->P:F

    return p1
.end method

.method static synthetic a(Landroidx/d/b/b/n;)I
    .locals 0

    .line 41
    iget p0, p0, Landroidx/d/b/b/n;->J:I

    return p0
.end method

.method static synthetic a(Landroidx/d/b/b/n;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroidx/d/b/b/n;->J:I

    return p1
.end method

.method static synthetic a(Landroidx/d/b/b/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/d/b/b/n;->H:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/n;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Landroidx/d/b/b/n;->U:Z

    return p1
.end method

.method static synthetic b(Landroidx/d/b/b/n;)I
    .locals 0

    .line 41
    iget p0, p0, Landroidx/d/b/b/n;->K:I

    return p0
.end method

.method static synthetic b(Landroidx/d/b/b/n;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroidx/d/b/b/n;->K:I

    return p1
.end method

.method static synthetic b(Landroidx/d/b/b/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/d/b/b/n;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Landroidx/d/b/b/n;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroidx/d/b/b/n;->G:I

    return p1
.end method

.method static synthetic c(Landroidx/d/b/b/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/d/b/b/n;->F:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Landroidx/d/b/b/n;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Landroidx/d/b/b/n;->U:Z

    return p0
.end method

.method static synthetic d(Landroidx/d/b/b/n;)I
    .locals 0

    .line 41
    iget p0, p0, Landroidx/d/b/b/n;->G:I

    return p0
.end method


# virtual methods
.method a()I
    .locals 0

    .line 86
    iget p0, p0, Landroidx/d/b/b/n;->E:I

    return p0
.end method

.method public a(FLandroid/view/View;)V
    .locals 8

    .line 116
    iget v0, p0, Landroidx/d/b/b/n;->K:I

    sget v1, Landroidx/d/b/b/n;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    .line 117
    iget-object v0, p0, Landroidx/d/b/b/n;->L:Landroid/view/View;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Landroidx/d/b/b/n;->K:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/d/b/b/n;->L:Landroid/view/View;

    .line 121
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/n;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/d/b/b/n;->L:Landroid/view/View;

    iget-boolean v4, p0, Landroidx/d/b/b/n;->U:Z

    invoke-direct {p0, v0, v1, v4}, Landroidx/d/b/b/n;->a(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 122
    iget-object v0, p0, Landroidx/d/b/b/n;->B:Landroid/graphics/RectF;

    iget-boolean v1, p0, Landroidx/d/b/b/n;->U:Z

    invoke-direct {p0, v0, p2, v1}, Landroidx/d/b/b/n;->a(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 123
    iget-object v0, p0, Landroidx/d/b/b/n;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/d/b/b/n;->B:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-boolean v0, p0, Landroidx/d/b/b/n;->M:Z

    if-eqz v0, :cond_1

    .line 128
    iput-boolean v3, p0, Landroidx/d/b/b/n;->M:Z

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 130
    :goto_0
    iget-boolean v1, p0, Landroidx/d/b/b/n;->O:Z

    if-eqz v1, :cond_2

    .line 132
    iput-boolean v3, p0, Landroidx/d/b/b/n;->O:Z

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 134
    :goto_1
    iput-boolean v2, p0, Landroidx/d/b/b/n;->N:Z

    move v2, v1

    move v1, v3

    goto :goto_4

    .line 136
    :cond_3
    iget-boolean v0, p0, Landroidx/d/b/b/n;->M:Z

    if-nez v0, :cond_4

    .line 138
    iput-boolean v2, p0, Landroidx/d/b/b/n;->M:Z

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    .line 140
    :goto_2
    iget-boolean v1, p0, Landroidx/d/b/b/n;->N:Z

    if-eqz v1, :cond_5

    .line 142
    iput-boolean v3, p0, Landroidx/d/b/b/n;->N:Z

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    .line 144
    :goto_3
    iput-boolean v2, p0, Landroidx/d/b/b/n;->O:Z

    move v2, v3

    :goto_4
    move v4, v1

    goto/16 :goto_7

    .line 150
    :cond_6
    iget-boolean v0, p0, Landroidx/d/b/b/n;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 152
    iget v0, p0, Landroidx/d/b/b/n;->P:F

    sub-float v0, p1, v0

    .line 153
    iget v4, p0, Landroidx/d/b/b/n;->T:F

    iget v5, p0, Landroidx/d/b/b/n;->P:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 157
    iput-boolean v3, p0, Landroidx/d/b/b/n;->M:Z

    move v0, v2

    goto :goto_5

    .line 160
    :cond_7
    iget v0, p0, Landroidx/d/b/b/n;->P:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/d/b/b/n;->z:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    .line 161
    iput-boolean v2, p0, Landroidx/d/b/b/n;->M:Z

    :cond_8
    move v0, v3

    .line 166
    :goto_5
    iget-boolean v4, p0, Landroidx/d/b/b/n;->N:Z

    if-eqz v4, :cond_9

    .line 167
    iget v4, p0, Landroidx/d/b/b/n;->P:F

    sub-float v4, p1, v4

    .line 168
    iget v5, p0, Landroidx/d/b/b/n;->T:F

    iget v6, p0, Landroidx/d/b/b/n;->P:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    cmpg-float v5, v5, v1

    if-gez v5, :cond_a

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a

    .line 171
    iput-boolean v3, p0, Landroidx/d/b/b/n;->N:Z

    move v4, v2

    goto :goto_6

    .line 174
    :cond_9
    iget v4, p0, Landroidx/d/b/b/n;->P:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/d/b/b/n;->z:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 175
    iput-boolean v2, p0, Landroidx/d/b/b/n;->N:Z

    :cond_a
    move v4, v3

    .line 179
    :goto_6
    iget-boolean v5, p0, Landroidx/d/b/b/n;->O:Z

    if-eqz v5, :cond_b

    .line 180
    iget v5, p0, Landroidx/d/b/b/n;->P:F

    sub-float v5, p1, v5

    .line 181
    iget v6, p0, Landroidx/d/b/b/n;->T:F

    iget v7, p0, Landroidx/d/b/b/n;->P:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v5

    cmpg-float v6, v6, v1

    if-gez v6, :cond_c

    cmpl-float v1, v5, v1

    if-lez v1, :cond_c

    .line 184
    iput-boolean v3, p0, Landroidx/d/b/b/n;->O:Z

    goto :goto_7

    .line 187
    :cond_b
    iget v1, p0, Landroidx/d/b/b/n;->P:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroidx/d/b/b/n;->z:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_c

    .line 188
    iput-boolean v2, p0, Landroidx/d/b/b/n;->O:Z

    :cond_c
    move v2, v3

    .line 192
    :goto_7
    iput p1, p0, Landroidx/d/b/b/n;->T:F

    if-nez v4, :cond_d

    if-nez v0, :cond_d

    if-eqz v2, :cond_e

    .line 195
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/s;

    iget v5, p0, Landroidx/d/b/b/n;->J:I

    invoke-virtual {v1, v5, v2, p1}, Landroidx/d/b/b/s;->a(IZF)V

    .line 197
    :cond_e
    iget p1, p0, Landroidx/d/b/b/n;->G:I

    sget v1, Landroidx/d/b/b/n;->a:I

    if-ne p1, v1, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/d/b/b/s;

    iget p2, p0, Landroidx/d/b/b/n;->G:I

    invoke-virtual {p1, p2}, Landroidx/d/b/b/s;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_8
    if-eqz v4, :cond_11

    .line 199
    iget-object p1, p0, Landroidx/d/b/b/n;->H:Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 200
    iget-object p1, p0, Landroidx/d/b/b/n;->R:Ljava/lang/reflect/Method;

    if-nez p1, :cond_10

    .line 202
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Landroidx/d/b/b/n;->H:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/n;->R:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    const-string p1, "KeyTrigger"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find method \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/d/b/b/n;->H:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_10
    :goto_9
    :try_start_1
    iget-object p1, p0, Landroidx/d/b/b/n;->R:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    const-string p1, "KeyTrigger"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in call \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/d/b/b/n;->H:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_a
    if-eqz v2, :cond_13

    .line 215
    iget-object p1, p0, Landroidx/d/b/b/n;->I:Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 216
    iget-object p1, p0, Landroidx/d/b/b/n;->S:Ljava/lang/reflect/Method;

    if-nez p1, :cond_12

    .line 218
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Landroidx/d/b/b/n;->I:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/n;->S:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    const-string p1, "KeyTrigger"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find method \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/d/b/b/n;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_12
    :goto_b
    :try_start_3
    iget-object p1, p0, Landroidx/d/b/b/n;->S:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    const-string p1, "KeyTrigger"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in call \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/d/b/b/n;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_c
    if-eqz v0, :cond_15

    .line 231
    iget-object p1, p0, Landroidx/d/b/b/n;->F:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 232
    iget-object p1, p0, Landroidx/d/b/b/n;->Q:Ljava/lang/reflect/Method;

    if-nez p1, :cond_14

    .line 234
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Landroidx/d/b/b/n;->F:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/n;->Q:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    const-string p1, "KeyTrigger"

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/d/b/b/n;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_14
    :goto_d
    :try_start_5
    iget-object p1, p0, Landroidx/d/b/b/n;->Q:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_e

    :catch_5
    const-string p1, "KeyTrigger"

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in call \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/b/b/n;->F:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"on class "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_e
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    sget-object v0, Landroidx/d/e/m$m;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    invoke-static {p0, p2, p1}, Landroidx/d/b/b/n$a;->a(Landroidx/d/b/b/n;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/b/b/w;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
