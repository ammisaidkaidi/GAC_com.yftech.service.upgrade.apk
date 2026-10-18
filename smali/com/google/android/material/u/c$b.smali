.class Lcom/google/android/material/u/c$b;
.super Landroidx/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field e:Landroid/graphics/Rect;

.field private final f:Lcom/google/android/material/u/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/u/c<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/u/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/u/c<",
            "***>;)V"
        }
    .end annotation

    .line 2206
    invoke-direct {p0, p1}, Landroidx/f/b/a;-><init>(Landroid/view/View;)V

    .line 2203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/u/c$b;->e:Landroid/graphics/Rect;

    .line 2207
    iput-object p1, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    return-void
.end method

.method private e(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2269
    iget-object v0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v0}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v0

    .line 2270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2271
    iget-object p0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/google/android/material/a$m;->material_slider_range_end:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2275
    iget-object p0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/google/android/material/a$m;->material_slider_range_start:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected a(FF)I
    .locals 4

    const/4 v0, 0x0

    .line 2212
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v1}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2213
    iget-object v1, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    iget-object v2, p0, Lcom/google/android/material/u/c$b;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/u/c;->a(ILandroid/graphics/Rect;)V

    .line 2214
    iget-object v1, p0, Lcom/google/android/material/u/c$b;->e:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected a(ILandroidx/core/n/a/d;)V
    .locals 5

    .line 2233
    sget-object v0, Landroidx/core/n/a/d$a;->H:Landroidx/core/n/a/d$a;

    invoke-virtual {p2, v0}, Landroidx/core/n/a/d;->a(Landroidx/core/n/a/d$a;)V

    .line 2235
    iget-object v0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v0}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v0

    .line 2236
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2237
    iget-object v2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v2}, Lcom/google/android/material/u/c;->getValueFrom()F

    move-result v2

    .line 2238
    iget-object v3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v3}, Lcom/google/android/material/u/c;->getValueTo()F

    move-result v3

    .line 2240
    iget-object v4, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v4}, Lcom/google/android/material/u/c;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    const/16 v4, 0x2000

    .line 2242
    invoke-virtual {p2, v4}, Landroidx/core/n/a/d;->d(I)V

    :cond_0
    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    const/16 v4, 0x1000

    .line 2245
    invoke-virtual {p2, v4}, Landroidx/core/n/a/d;->d(I)V

    :cond_1
    const/4 v4, 0x1

    .line 2249
    invoke-static {v4, v2, v3, v1}, Landroidx/core/n/a/d$d;->a(IFFF)Landroidx/core/n/a/d$d;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/n/a/d;->a(Landroidx/core/n/a/d$d;)V

    .line 2250
    const-class v2, Landroid/widget/SeekBar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/n/a/d;->b(Ljava/lang/CharSequence;)V

    .line 2251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2253
    iget-object v3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v3}, Lcom/google/android/material/u/c;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2254
    iget-object v3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v3}, Lcom/google/android/material/u/c;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 2258
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c$b;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    iget-object v0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-static {v0, v1}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/u/c;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/n/a/d;->e(Ljava/lang/CharSequence;)V

    .line 2263
    iget-object v0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    iget-object v1, p0, Lcom/google/android/material/u/c$b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/u/c;->a(ILandroid/graphics/Rect;)V

    .line 2264
    iget-object p0, p0, Lcom/google/android/material/u/c$b;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2224
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v1}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 4

    .line 2284
    iget-object v0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {v0}, Lcom/google/android/material/u/c;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x1

    const/16 v3, 0x2000

    if-eq p2, v0, :cond_5

    if-eq p2, v3, :cond_5

    const v0, 0x102003d

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_4

    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 2292
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 2297
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 2298
    iget-object p3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-static {p3, p1, p2}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/u/c;IF)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2299
    iget-object p2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-static {p2}, Lcom/google/android/material/u/c;->b(Lcom/google/android/material/u/c;)V

    .line 2300
    iget-object p2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {p2}, Lcom/google/android/material/u/c;->postInvalidate()V

    .line 2301
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c$b;->a(I)V

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1

    .line 2309
    :cond_5
    iget-object p3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    const/16 v0, 0x14

    invoke-static {p3, v0}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/u/c;I)F

    move-result p3

    if-ne p2, v3, :cond_6

    neg-float p3, p3

    .line 2315
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {p2}, Lcom/google/android/material/u/c;->e()Z

    move-result p2

    if-eqz p2, :cond_7

    neg-float p3, p3

    .line 2319
    :cond_7
    iget-object p2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {p2}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object p2

    .line 2322
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    .line 2323
    invoke-virtual {p3}, Lcom/google/android/material/u/c;->getValueFrom()F

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    .line 2324
    invoke-virtual {v0}, Lcom/google/android/material/u/c;->getValueTo()F

    move-result v0

    .line 2321
    invoke-static {p2, p3, v0}, Landroidx/core/g/a;->a(FFF)F

    move-result p2

    .line 2325
    iget-object p3, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-static {p3, p1, p2}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/u/c;IF)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2326
    iget-object p2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-static {p2}, Lcom/google/android/material/u/c;->b(Lcom/google/android/material/u/c;)V

    .line 2327
    iget-object p2, p0, Lcom/google/android/material/u/c$b;->f:Lcom/google/android/material/u/c;

    invoke-virtual {p2}, Lcom/google/android/material/u/c;->postInvalidate()V

    .line 2328
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c$b;->a(I)V

    return v2

    :cond_8
    return v1
.end method
