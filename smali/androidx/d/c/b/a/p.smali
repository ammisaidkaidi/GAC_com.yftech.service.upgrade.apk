.class public abstract Landroidx/d/c/b/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/d/c/b/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/b/a/p$a;
    }
.end annotation


# instance fields
.field public c:I

.field d:Landroidx/d/c/b/e;

.field e:Landroidx/d/c/b/a/m;

.field protected f:Landroidx/d/c/b/e$a;

.field g:Landroidx/d/c/b/a/g;

.field public h:I

.field i:Z

.field public j:Landroidx/d/c/b/a/f;

.field public k:Landroidx/d/c/b/a/f;

.field protected l:Landroidx/d/c/b/a/p$a;


# direct methods
.method public constructor <init>(Landroidx/d/c/b/e;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/d/c/b/a/g;

    invoke-direct {v0, p0}, Landroidx/d/c/b/a/g;-><init>(Landroidx/d/c/b/a/p;)V

    iput-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/d/c/b/a/p;->h:I

    .line 37
    iput-boolean v0, p0, Landroidx/d/c/b/a/p;->i:Z

    .line 38
    new-instance v0, Landroidx/d/c/b/a/f;

    invoke-direct {v0, p0}, Landroidx/d/c/b/a/f;-><init>(Landroidx/d/c/b/a/p;)V

    iput-object v0, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    .line 39
    new-instance v0, Landroidx/d/c/b/a/f;

    invoke-direct {v0, p0}, Landroidx/d/c/b/a/f;-><init>(Landroidx/d/c/b/a/p;)V

    iput-object v0, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    .line 41
    sget-object v0, Landroidx/d/c/b/a/p$a;->a:Landroidx/d/c/b/a/p$a;

    iput-object v0, p0, Landroidx/d/c/b/a/p;->l:Landroidx/d/c/b/a/p$a;

    .line 44
    iput-object p1, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    return-void
.end method

.method private b(II)V
    .locals 3

    .line 171
    iget v0, p0, Landroidx/d/c/b/a/p;->c:I

    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 199
    :pswitch_0
    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object p2, p2, Landroidx/d/c/b/a/l;->f:Landroidx/d/c/b/e$a;

    sget-object v0, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget p2, p2, Landroidx/d/c/b/a/l;->c:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object p2, p2, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v2, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget p2, p2, Landroidx/d/c/b/a/n;->c:I

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    .line 205
    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    .line 206
    :goto_0
    iget-object v0, p2, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->ac()F

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 210
    iget-object p1, p2, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_1

    .line 212
    :cond_2
    iget-object p1, p2, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 214
    :goto_1
    iget-object p0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/g;->a(I)V

    goto :goto_4

    .line 177
    :pswitch_1
    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    invoke-virtual {p2}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object p2

    if-eqz p2, :cond_5

    if-nez p1, :cond_3

    .line 179
    iget-object p2, p2, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    goto :goto_2

    :cond_3
    iget-object p2, p2, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    .line 182
    :goto_2
    iget-object v0, p2, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    .line 183
    iget-object v0, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget v0, v0, Landroidx/d/c/b/e;->L:F

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget v0, v0, Landroidx/d/c/b/e;->O:F

    .line 186
    :goto_3
    iget-object p2, p2, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget p2, p2, Landroidx/d/c/b/a/g;->g:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 188
    iget-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, p2, p1}, Landroidx/d/c/b/a/p;->a(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/d/c/b/a/g;->a(I)V

    goto :goto_4

    .line 194
    :pswitch_2
    iget-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget v0, v0, Landroidx/d/c/b/a/g;->m:I

    invoke-virtual {p0, v0, p1}, Landroidx/d/c/b/a/p;->a(II)I

    move-result p1

    .line 195
    iget-object p0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/g;->a(I)V

    goto :goto_4

    .line 173
    :pswitch_3
    iget-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, p2, p1}, Landroidx/d/c/b/a/p;->a(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/d/c/b/a/g;->a(I)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(II)I
    .locals 0

    if-nez p2, :cond_1

    .line 234
    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget p2, p2, Landroidx/d/c/b/e;->K:I

    .line 235
    iget-object p0, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget p0, p0, Landroidx/d/c/b/e;->J:I

    .line 236
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_0

    .line 238
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    if-eq p0, p1, :cond_3

    goto :goto_0

    .line 244
    :cond_1
    iget-object p2, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget p2, p2, Landroidx/d/c/b/e;->N:I

    .line 245
    iget-object p0, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget p0, p0, Landroidx/d/c/b/e;->M:I

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_2

    .line 248
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    if-eq p0, p1, :cond_3

    :goto_0
    move p1, p0

    :cond_3
    return p1
.end method

.method public a(I)J
    .locals 3

    .line 78
    iget-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget v0, v0, Landroidx/d/c/b/a/g;->g:I

    int-to-long v0, v0

    .line 80
    invoke-virtual {p0}, Landroidx/d/c/b/a/p;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object p1, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    iget p1, p1, Landroidx/d/c/b/a/f;->f:I

    iget-object p0, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    iget p0, p0, Landroidx/d/c/b/a/f;->f:I

    sub-int/2addr p1, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 84
    iget-object p0, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    iget p0, p0, Landroidx/d/c/b/a/f;->f:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    iget p0, p0, Landroidx/d/c/b/a/f;->f:I

    int-to-long p0, p0

    sub-long/2addr v0, p0

    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected final a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;
    .locals 2

    .line 95
    iget-object p0, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 99
    :cond_0
    iget-object p0, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    .line 100
    iget-object p1, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p1, p1, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    .line 101
    sget-object v1, Landroidx/d/c/b/a/p$1;->a:[I

    invoke-virtual {p1}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object p0, p0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    .line 120
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object p0, p0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    .line 116
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object p0, p0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    .line 112
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object p0, p0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    .line 108
    iget-object v0, p0, Landroidx/d/c/b/a/l;->k:Landroidx/d/c/b/a/f;

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object p0, p0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    .line 104
    iget-object v0, p0, Landroidx/d/c/b/a/l;->j:Landroidx/d/c/b/a/f;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Landroidx/d/c/b/d;I)Landroidx/d/c/b/a/f;
    .locals 1

    .line 258
    iget-object p0, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 262
    :cond_0
    iget-object p0, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    if-nez p2, :cond_1

    .line 263
    iget-object p0, p0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    .line 265
    :goto_0
    iget-object p1, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p1, p1, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    .line 266
    sget-object p2, Landroidx/d/c/b/a/p$1;->a:[I

    invoke-virtual {p1}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 269
    :pswitch_0
    iget-object v0, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    goto :goto_1

    .line 273
    :cond_2
    :pswitch_1
    iget-object v0, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/d/c/b/a/d;)V
    .locals 0

    return-void
.end method

.method protected a(Landroidx/d/c/b/a/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V
    .locals 4

    .line 127
    invoke-virtual {p0, p2}, Landroidx/d/c/b/a/p;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p3}, Landroidx/d/c/b/a/p;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    .line 130
    iget-boolean v1, p1, Landroidx/d/c/b/a/f;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Landroidx/d/c/b/a/f;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget v1, p1, Landroidx/d/c/b/a/f;->g:I

    invoke-virtual {p2}, Landroidx/d/c/b/d;->j()I

    move-result p2

    add-int/2addr v1, p2

    .line 135
    iget p2, v0, Landroidx/d/c/b/a/f;->g:I

    invoke-virtual {p3}, Landroidx/d/c/b/d;->j()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    .line 138
    iget-object v2, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean v2, v2, Landroidx/d/c/b/a/g;->j:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/d/c/b/a/p;->f:Landroidx/d/c/b/e$a;

    sget-object v3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v2, v3, :cond_1

    .line 140
    invoke-direct {p0, p4, p3}, Landroidx/d/c/b/a/p;->b(II)V

    .line 143
    :cond_1
    iget-object v2, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean v2, v2, Landroidx/d/c/b/a/g;->j:Z

    if-nez v2, :cond_2

    return-void

    .line 147
    :cond_2
    iget-object v2, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget v2, v2, Landroidx/d/c/b/a/g;->g:I

    if-ne v2, p3, :cond_3

    .line 148
    iget-object p1, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    invoke-virtual {p1, v1}, Landroidx/d/c/b/a/f;->a(I)V

    .line 149
    iget-object p0, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    invoke-virtual {p0, p2}, Landroidx/d/c/b/a/f;->a(I)V

    return-void

    :cond_3
    if-nez p4, :cond_4

    .line 154
    iget-object p3, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    invoke-virtual {p3}, Landroidx/d/c/b/e;->W()F

    move-result p3

    goto :goto_0

    :cond_4
    iget-object p3, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    .line 155
    invoke-virtual {p3}, Landroidx/d/c/b/e;->X()F

    move-result p3

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    .line 158
    iget v1, p1, Landroidx/d/c/b/a/f;->g:I

    .line 159
    iget p2, v0, Landroidx/d/c/b/a/f;->g:I

    move p3, p4

    :cond_5
    sub-int/2addr p2, v1

    .line 165
    iget-object p1, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    sub-int/2addr p2, p1

    .line 166
    iget-object p1, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroidx/d/c/b/a/f;->a(I)V

    .line 167
    iget-object p1, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    iget-object p2, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    iget p2, p2, Landroidx/d/c/b/a/f;->g:I

    iget-object p0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget p0, p0, Landroidx/d/c/b/a/g;->g:I

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroidx/d/c/b/a/f;->a(I)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method protected final a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V
    .locals 0

    .line 280
    iget-object p0, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iput p3, p1, Landroidx/d/c/b/a/f;->f:I

    .line 282
    iget-object p0, p2, Landroidx/d/c/b/a/f;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V
    .locals 1

    .line 286
    iget-object v0, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    iget-object p0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iput p3, p1, Landroidx/d/c/b/a/f;->h:I

    .line 289
    iput-object p4, p1, Landroidx/d/c/b/a/f;->i:Landroidx/d/c/b/a/g;

    .line 290
    iget-object p0, p2, Landroidx/d/c/b/a/f;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p0, p4, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract a()Z
.end method

.method public b()J
    .locals 2

    .line 295
    iget-object v0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object p0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget p0, p0, Landroidx/d/c/b/a/g;->g:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected b(Landroidx/d/c/b/a/d;)V
    .locals 0

    return-void
.end method

.method abstract c()V
.end method

.method protected c(Landroidx/d/c/b/a/d;)V
    .locals 0

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method public g()Z
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/d/c/b/a/p;->g:Landroidx/d/c/b/a/g;

    iget-boolean p0, p0, Landroidx/d/c/b/a/g;->j:Z

    return p0
.end method

.method public h()Z
    .locals 5

    .line 60
    iget-object v0, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    iget-object v0, v0, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    iget-object v4, p0, Landroidx/d/c/b/a/p;->j:Landroidx/d/c/b/a/f;

    iget-object v4, v4, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/c/b/a/f;

    .line 63
    iget-object v4, v4, Landroidx/d/c/b/a/f;->d:Landroidx/d/c/b/a/p;

    if-eq v4, p0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    iget-object v0, v0, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 69
    iget-object v4, p0, Landroidx/d/c/b/a/p;->k:Landroidx/d/c/b/a/f;

    iget-object v4, v4, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/c/b/a/f;

    .line 70
    iget-object v4, v4, Landroidx/d/c/b/a/f;->d:Landroidx/d/c/b/a/p;

    if-eq v4, p0, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    if-lt v3, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public i()Z
    .locals 0

    .line 301
    iget-boolean p0, p0, Landroidx/d/c/b/a/p;->i:Z

    return p0
.end method
