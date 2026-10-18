.class public final Landroidx/core/graphics/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/core/graphics/f;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroidx/core/graphics/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/core/graphics/f;-><init>(IIII)V

    sput-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroidx/core/graphics/f;->b:I

    .line 45
    iput p2, p0, Landroidx/core/graphics/f;->c:I

    .line 46
    iput p3, p0, Landroidx/core/graphics/f;->d:I

    .line 47
    iput p4, p0, Landroidx/core/graphics/f;->e:I

    return-void
.end method

.method public static a(IIII)Landroidx/core/graphics/f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 64
    sget-object p0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Landroidx/core/graphics/f;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/graphics/f;-><init>(IIII)V

    return-object v0
.end method

.method public static a(Landroid/graphics/Insets;)Landroidx/core/graphics/f;
    .locals 0
    .param p0    # Landroid/graphics/Insets;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        b = 0x1d
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-static {p0}, Landroidx/core/graphics/f;->b(Landroid/graphics/Insets;)Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Rect;)Landroidx/core/graphics/f;
    .locals 3
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 77
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/f;->a(IIII)Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Insets;)Landroidx/core/graphics/f;
    .locals 3
    .param p0    # Landroid/graphics/Insets;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        b = 0x1d
    .end annotation

    .line 136
    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/f;->a(IIII)Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Insets;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        b = 0x1d
    .end annotation

    .line 146
    iget v0, p0, Landroidx/core/graphics/f;->b:I

    iget v1, p0, Landroidx/core/graphics/f;->c:I

    iget v2, p0, Landroidx/core/graphics/f;->d:I

    iget p0, p0, Landroidx/core/graphics/f;->e:I

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Landroidx/core/graphics/f;

    .line 94
    iget v2, p0, Landroidx/core/graphics/f;->e:I

    iget v3, p1, Landroidx/core/graphics/f;->e:I

    if-eq v2, v3, :cond_2

    return v1

    .line 95
    :cond_2
    iget v2, p0, Landroidx/core/graphics/f;->b:I

    iget v3, p1, Landroidx/core/graphics/f;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 96
    :cond_3
    iget v2, p0, Landroidx/core/graphics/f;->d:I

    iget v3, p1, Landroidx/core/graphics/f;->d:I

    if-eq v2, v3, :cond_4

    return v1

    .line 97
    :cond_4
    iget p0, p0, Landroidx/core/graphics/f;->c:I

    iget p1, p1, Landroidx/core/graphics/f;->c:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget v0, p0, Landroidx/core/graphics/f;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v1, p0, Landroidx/core/graphics/f;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Landroidx/core/graphics/f;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget p0, p0, Landroidx/core/graphics/f;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/graphics/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/graphics/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/graphics/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/core/graphics/f;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
