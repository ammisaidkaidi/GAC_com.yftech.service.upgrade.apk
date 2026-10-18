.class final Lcom/google/android/material/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/p$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "android.text.TextDirectionHeuristic"

.field private static final b:Ljava/lang/String; = "android.text.TextDirectionHeuristics"

.field private static final c:Ljava/lang/String; = "LTR"

.field private static final d:Ljava/lang/String; = "RTL"

.field private static e:Z

.field private static f:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# instance fields
.field private h:Ljava/lang/CharSequence;

.field private final i:Landroid/text/TextPaint;

.field private final j:I

.field private k:I

.field private l:I

.field private m:Landroid/text/Layout$Alignment;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Landroid/text/TextUtils$TruncateAt;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/material/internal/p;->h:Ljava/lang/CharSequence;

    .line 79
    iput-object p2, p0, Lcom/google/android/material/internal/p;->i:Landroid/text/TextPaint;

    .line 80
    iput p3, p0, Lcom/google/android/material/internal/p;->j:I

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/google/android/material/internal/p;->k:I

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/p;->l:I

    .line 83
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcom/google/android/material/internal/p;->m:Landroid/text/Layout$Alignment;

    const p1, 0x7fffffff

    .line 84
    iput p1, p0, Lcom/google/android/material/internal/p;->n:I

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/internal/p;->o:Z

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/google/android/material/internal/p;->q:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/p;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 100
    new-instance v0, Lcom/google/android/material/internal/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/p;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 260
    sget-boolean v0, Lcom/google/android/material/internal/p;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/p;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 267
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_3

    .line 268
    const-class p0, Landroid/text/TextDirectionHeuristic;

    if-eqz v0, :cond_2

    .line 269
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_1
    sput-object v0, Lcom/google/android/material/internal/p;->g:Ljava/lang/Object;

    goto :goto_3

    .line 271
    :cond_3
    const-class v0, Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 272
    iget-boolean p0, p0, Lcom/google/android/material/internal/p;->p:Z

    if-eqz p0, :cond_4

    const-string p0, "RTL"

    goto :goto_2

    :cond_4
    const-string p0, "LTR"

    :goto_2
    const-string v3, "android.text.TextDirectionHeuristic"

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.text.TextDirectionHeuristics"

    .line 274
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/google/android/material/internal/p;->g:Ljava/lang/Object;

    move-object p0, v3

    :goto_3
    const/16 v0, 0xd

    .line 278
    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/CharSequence;

    aput-object v3, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-class v3, Landroid/text/TextPaint;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-class v3, Landroid/text/Layout$Alignment;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object p0, v0, v1

    const/4 p0, 0x7

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p0

    const/16 p0, 0x8

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p0

    const/16 p0, 0x9

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p0

    const/16 p0, 0xa

    const-class v1, Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, p0

    const/16 p0, 0xb

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p0

    const/16 p0, 0xc

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p0

    .line 295
    const-class p0, Landroid/text/StaticLayout;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lcom/google/android/material/internal/p;->f:Ljava/lang/reflect/Constructor;

    .line 296
    sget-object p0, Lcom/google/android/material/internal/p;->f:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 297
    sput-boolean v2, Lcom/google/android/material/internal/p;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 299
    new-instance v0, Lcom/google/android/material/internal/p$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/p$a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()Landroid/text/StaticLayout;
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/google/android/material/internal/p;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 183
    iput-object v0, p0, Lcom/google/android/material/internal/p;->h:Ljava/lang/CharSequence;

    .line 187
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/p;->j:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    iget-object v2, p0, Lcom/google/android/material/internal/p;->h:Ljava/lang/CharSequence;

    .line 189
    iget v3, p0, Lcom/google/android/material/internal/p;->n:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 190
    iget-object v2, p0, Lcom/google/android/material/internal/p;->h:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/material/internal/p;->i:Landroid/text/TextPaint;

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/material/internal/p;->q:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 193
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v5, p0, Lcom/google/android/material/internal/p;->l:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/internal/p;->l:I

    .line 194
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_5

    .line 195
    iget-boolean v1, p0, Lcom/google/android/material/internal/p;->p:Z

    if-eqz v1, :cond_2

    .line 196
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Lcom/google/android/material/internal/p;->m:Landroid/text/Layout$Alignment;

    .line 200
    :cond_2
    iget v1, p0, Lcom/google/android/material/internal/p;->k:I

    iget v3, p0, Lcom/google/android/material/internal/p;->l:I

    iget-object v4, p0, Lcom/google/android/material/internal/p;->i:Landroid/text/TextPaint;

    .line 201
    invoke-static {v2, v1, v3, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/android/material/internal/p;->m:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 204
    iget-boolean v1, p0, Lcom/google/android/material/internal/p;->o:Z

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 205
    iget-boolean v1, p0, Lcom/google/android/material/internal/p;->p:Z

    if-eqz v1, :cond_3

    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 208
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 209
    iget-object v1, p0, Lcom/google/android/material/internal/p;->q:Landroid/text/TextUtils$TruncateAt;

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/google/android/material/internal/p;->q:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 212
    :cond_4
    iget p0, p0, Lcom/google/android/material/internal/p;->n:I

    invoke-virtual {v0, p0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0

    .line 216
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/internal/p;->b()V

    .line 219
    :try_start_0
    sget-object v3, Lcom/google/android/material/internal/p;->f:Ljava/lang/reflect/Constructor;

    invoke-static {v3}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    iget v1, p0, Lcom/google/android/material/internal/p;->k:I

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/material/internal/p;->l:I

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/material/internal/p;->i:Landroid/text/TextPaint;

    aput-object v2, v5, v1

    const/4 v1, 0x4

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/material/internal/p;->m:Landroid/text/Layout$Alignment;

    aput-object v2, v5, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/material/internal/p;->g:Ljava/lang/Object;

    .line 227
    invoke-static {v2}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    .line 228
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 229
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/material/internal/p;->o:Z

    .line 230
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-object v2, v5, v1

    const/16 v1, 0xb

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/16 v0, 0xc

    iget p0, p0, Lcom/google/android/material/internal/p;->n:I

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v0

    .line 220
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 235
    new-instance v0, Lcom/google/android/material/internal/p$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/p$a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(I)Lcom/google/android/material/internal/p;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 136
    iput p1, p0, Lcom/google/android/material/internal/p;->k:I

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/p;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/google/android/material/internal/p;->m:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/p;
    .locals 0
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/google/android/material/internal/p;->q:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/material/internal/p;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 125
    iput-boolean p1, p0, Lcom/google/android/material/internal/p;->o:Z

    return-object p0
.end method

.method public b(I)Lcom/google/android/material/internal/p;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 148
    iput p1, p0, Lcom/google/android/material/internal/p;->l:I

    return-object p0
.end method

.method public b(Z)Lcom/google/android/material/internal/p;
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/google/android/material/internal/p;->p:Z

    return-object p0
.end method

.method public c(I)Lcom/google/android/material/internal/p;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 162
    iput p1, p0, Lcom/google/android/material/internal/p;->n:I

    return-object p0
.end method
