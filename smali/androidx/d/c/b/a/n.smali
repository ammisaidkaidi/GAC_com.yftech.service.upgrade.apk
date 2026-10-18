.class public Landroidx/d/c/b/a/n;
.super Landroidx/d/c/b/a/p;
.source "SourceFile"


# instance fields
.field public a:Landroidx/d/c/b/a/f;

.field b:Landroidx/d/c/b/a/g;


# direct methods
.method public constructor <init>(Landroidx/d/c/b/e;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroidx/d/c/b/a/p;-><init>(Landroidx/d/c/b/e;)V

    .line 34
    new-instance p1, Landroidx/d/c/b/a/f;

    invoke-direct {p1, p0}, Landroidx/d/c/b/a/f;-><init>(Landroidx/d/c/b/a/p;)V

    iput-object p1, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    .line 39
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    sget-object v0, Landroidx/d/c/b/a/f$a;->f:Landroidx/d/c/b/a/f$a;

    iput-object v0, p1, Landroidx/d/c/b/a/f;->e:Landroidx/d/c/b/a/f$a;

    .line 40
    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    sget-object v0, Landroidx/d/c/b/a/f$a;->g:Landroidx/d/c/b/a/f$a;

    iput-object v0, p1, Landroidx/d/c/b/a/f;->e:Landroidx/d/c/b/a/f$a;

    .line 41
    iget-object p1, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    sget-object v0, Landroidx/d/c/b/a/f$a;->h:Landroidx/d/c/b/a/f$a;

    iput-object v0, p1, Landroidx/d/c/b/a/f;->e:Landroidx/d/c/b/a/f$a;

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Landroidx/d/c/b/a/n;->h:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/c/b/a/d;)V
    .locals 5

    .line 85
    sget-object v0, Landroidx/d/c/b/a/n$1;->a:[I

    iget-object v1, p0, Landroidx/d/c/b/a/n;->l:Landroidx/d/c/b/a/p$a;

    invoke-virtual {v1}, Landroidx/d/c/b/a/p$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    return-void

    .line 90
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/n;->c(Landroidx/d/c/b/a/d;)V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/n;->b(Landroidx/d/c/b/a/d;)V

    .line 98
    :goto_0
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->c:Z

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->j:Z

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne p1, v3, :cond_0

    .line 100
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget p1, p1, Landroidx/d/c/b/e;->H:I

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 102
    :pswitch_3
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object p1, p1, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object p1, p1, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->j:Z

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {p1}, Landroidx/d/c/b/e;->ad()I

    move-result p1

    packed-switch p1, :pswitch_data_2

    move p1, v2

    goto :goto_1

    .line 110
    :pswitch_4
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object p1, p1, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object p1, p1, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->ac()F

    move-result v3

    div-float/2addr p1, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    .line 107
    :pswitch_5
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object p1, p1, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object p1, p1, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->ac()F

    move-result v3

    mul-float/2addr p1, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    .line 113
    :pswitch_6
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object p1, p1, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object p1, p1, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->ac()F

    move-result v3

    div-float/2addr p1, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 116
    :goto_1
    iget-object v3, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {v3, p1}, Landroidx/d/c/b/a/g;->a(I)V

    goto :goto_2

    .line 120
    :pswitch_7
    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {p1}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object v3, p1, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v3, v3, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean v3, v3, Landroidx/d/c/b/a/g;->j:Z

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget v3, v3, Landroidx/d/c/b/e;->O:F

    .line 124
    iget-object p1, p1, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object p1, p1, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 126
    iget-object v3, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {v3, p1}, Landroidx/d/c/b/a/g;->a(I)V

    .line 134
    :cond_0
    :goto_2
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-boolean p1, p1, Landroidx/d/c/b/a/f;->c:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-boolean p1, p1, Landroidx/d/c/b/a/f;->c:Z

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 137
    :cond_1
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-boolean p1, p1, Landroidx/d/c/b/a/f;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-boolean p1, p1, Landroidx/d/c/b/a/f;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->j:Z

    if-eqz p1, :cond_2

    return-void

    .line 141
    :cond_2
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->j:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget p1, p1, Landroidx/d/c/b/e;->G:I

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    .line 144
    invoke-virtual {p1}, Landroidx/d/c/b/e;->an()Z

    move-result p1

    if-nez p1, :cond_3

    .line 146
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/d/c/b/a/f;

    .line 147
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v0, v0, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/a/f;

    .line 148
    iget p1, p1, Landroidx/d/c/b/a/f;->g:I

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget v1, v1, Landroidx/d/c/b/a/f;->f:I

    add-int/2addr p1, v1

    .line 149
    iget v0, v0, Landroidx/d/c/b/a/f;->g:I

    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget v1, v1, Landroidx/d/c/b/a/f;->f:I

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    .line 152
    iget-object v2, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    invoke-virtual {v2, p1}, Landroidx/d/c/b/a/f;->a(I)V

    .line 153
    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    invoke-virtual {p1, v0}, Landroidx/d/c/b/a/f;->a(I)V

    .line 154
    iget-object p0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v1}, Landroidx/d/c/b/a/g;->a(I)V

    return-void

    .line 158
    :cond_3
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->j:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne p1, v3, :cond_5

    iget p1, p0, Landroidx/d/c/b/a/n;->c:I

    if-ne p1, v1, :cond_5

    .line 161
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 162
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/d/c/b/a/f;

    .line 163
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, v1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/a/f;

    .line 164
    iget p1, p1, Landroidx/d/c/b/a/f;->g:I

    iget-object v3, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget v3, v3, Landroidx/d/c/b/a/f;->f:I

    add-int/2addr p1, v3

    .line 165
    iget v1, v1, Landroidx/d/c/b/a/f;->g:I

    iget-object v3, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget v3, v3, Landroidx/d/c/b/a/f;->f:I

    add-int/2addr v1, v3

    sub-int/2addr v1, p1

    .line 167
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->m:I

    if-ge v1, p1, :cond_4

    .line 168
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p1, v1}, Landroidx/d/c/b/a/g;->a(I)V

    goto :goto_3

    .line 170
    :cond_4
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget v1, v1, Landroidx/d/c/b/a/g;->m:I

    invoke-virtual {p1, v1}, Landroidx/d/c/b/a/g;->a(I)V

    .line 175
    :cond_5
    :goto_3
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean p1, p1, Landroidx/d/c/b/a/g;->j:Z

    if-nez p1, :cond_6

    return-void

    .line 179
    :cond_6
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 180
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object p1, p1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/d/c/b/a/f;

    .line 181
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, v1, Landroidx/d/c/b/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/a/f;

    .line 182
    iget v2, p1, Landroidx/d/c/b/a/f;->g:I

    iget-object v3, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget v3, v3, Landroidx/d/c/b/a/f;->f:I

    add-int/2addr v2, v3

    .line 183
    iget v3, v1, Landroidx/d/c/b/a/f;->g:I

    iget-object v4, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget v4, v4, Landroidx/d/c/b/a/f;->f:I

    add-int/2addr v3, v4

    .line 184
    iget-object v4, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v4}, Landroidx/d/c/b/e;->X()F

    move-result v4

    if-ne p1, v1, :cond_7

    .line 186
    iget v2, p1, Landroidx/d/c/b/a/f;->g:I

    .line 187
    iget v3, v1, Landroidx/d/c/b/a/f;->g:I

    move v4, v0

    :cond_7
    sub-int/2addr v3, v2

    .line 192
    iget-object p1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget p1, p1, Landroidx/d/c/b/a/g;->g:I

    sub-int/2addr v3, p1

    .line 193
    iget-object p1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    int-to-float v1, v2

    add-float/2addr v1, v0

    int-to-float v0, v3

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroidx/d/c/b/a/f;->a(I)V

    .line 194
    iget-object p1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget v0, v0, Landroidx/d/c/b/a/f;->g:I

    iget-object p0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget p0, p0, Landroidx/d/c/b/a/g;->g:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroidx/d/c/b/a/f;->a(I)V

    :cond_8
    return-void

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method a()Z
    .locals 3

    .line 74
    iget-object v0, p0, Landroidx/d/c/b/a/p;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object p0, p0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    iget p0, p0, Landroidx/d/c/b/e;->H:I

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Landroidx/d/c/b/a/n;->e:Landroidx/d/c/b/a/m;

    .line 53
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    invoke-virtual {v0}, Landroidx/d/c/b/a/f;->b()V

    .line 54
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    invoke-virtual {v0}, Landroidx/d/c/b/a/f;->b()V

    .line 55
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    invoke-virtual {v0}, Landroidx/d/c/b/a/f;->b()V

    .line 56
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {v0}, Landroidx/d/c/b/a/g;->b()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroidx/d/c/b/a/n;->i:Z

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/d/c/b/a/n;->i:Z

    .line 63
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    invoke-virtual {v1}, Landroidx/d/c/b/a/f;->b()V

    .line 64
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iput-boolean v0, v1, Landroidx/d/c/b/a/f;->j:Z

    .line 65
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    invoke-virtual {v1}, Landroidx/d/c/b/a/f;->b()V

    .line 66
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iput-boolean v0, v1, Landroidx/d/c/b/a/f;->j:Z

    .line 67
    iget-object v1, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    invoke-virtual {v1}, Landroidx/d/c/b/a/f;->b()V

    .line 68
    iget-object v1, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iput-boolean v0, v1, Landroidx/d/c/b/a/f;->j:Z

    .line 69
    iget-object p0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iput-boolean v0, p0, Landroidx/d/c/b/a/g;->j:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-boolean v0, v0, Landroidx/d/c/b/a/f;->j:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object p0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget p0, p0, Landroidx/d/c/b/a/f;->g:I

    invoke-virtual {v0, p0}, Landroidx/d/c/b/e;->o(I)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 7

    .line 200
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-boolean v0, v0, Landroidx/d/c/b/e;->h:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v1}, Landroidx/d/c/b/e;->L()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/d/c/b/a/g;->a(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/d/c/b/a/p;->f:Landroidx/d/c/b/e$a;

    .line 205
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Landroidx/d/c/b/a/a;

    invoke-direct {v0, p0}, Landroidx/d/c/b/a/a;-><init>(Landroidx/d/c/b/a/p;)V

    iput-object v0, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    .line 208
    :cond_1
    iget-object v0, p0, Landroidx/d/c/b/a/p;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-eq v0, v1, :cond_4

    .line 209
    iget-object v0, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v1

    sget-object v2, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    if-ne v1, v2, :cond_2

    .line 212
    invoke-virtual {v0}, Landroidx/d/c/b/e;->L()I

    move-result v1

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    .line 213
    iget-object v2, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v3, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v3, v3, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v4, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v4, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v4}, Landroidx/d/c/b/d;->j()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 214
    iget-object v2, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v0, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v0, v0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v3, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v3, v3, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {v3}, Landroidx/d/c/b/d;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 215
    iget-object p0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v1}, Landroidx/d/c/b/a/g;->a(I)V

    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_4

    .line 220
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v1}, Landroidx/d/c/b/e;->L()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/d/c/b/a/g;->a(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_4

    .line 225
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {v0}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v1

    sget-object v2, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    if-ne v1, v2, :cond_4

    .line 227
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v2, v2, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v3, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v3, v3, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v3}, Landroidx/d/c/b/d;->j()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 228
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v0, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v0, v0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    return-void

    .line 242
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-boolean v0, v0, Landroidx/d/c/b/e;->h:Z

    if-eqz v0, :cond_d

    .line 243
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_8

    .line 244
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->an()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/d/c/b/d;->j()I

    move-result v1

    iput v1, v0, Landroidx/d/c/b/a/f;->f:I

    .line 246
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/d/c/b/d;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/d/c/b/a/f;->f:I

    goto :goto_1

    .line 248
    :cond_5
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 250
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 252
    :cond_6
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 256
    :cond_7
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iput-boolean v3, v0, Landroidx/d/c/b/a/f;->b:Z

    .line 257
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iput-boolean v3, v0, Landroidx/d/c/b/a/f;->b:Z

    .line 259
    :goto_1
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 260
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->Z()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    goto/16 :goto_5

    .line 262
    :cond_8
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 265
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 266
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget v2, v2, Landroidx/d/c/b/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 267
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 268
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->Z()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    goto/16 :goto_5

    .line 271
    :cond_9
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_b

    .line 272
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 274
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 275
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget v2, v2, Landroidx/d/c/b/a/g;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 277
    :cond_a
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 278
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->Z()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    goto/16 :goto_5

    .line 280
    :cond_b
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_c

    .line 281
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 283
    iget-object v2, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 284
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->Z()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 285
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget v2, v2, Landroidx/d/c/b/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    goto/16 :goto_5

    .line 289
    :cond_c
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    instance-of v0, v0, Landroidx/d/c/b/i;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    sget-object v1, Landroidx/d/c/b/d$a;->g:Landroidx/d/c/b/d$a;

    .line 290
    invoke-virtual {v0, v1}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v0

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-nez v0, :cond_1a

    .line 291
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    iget-object v0, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v0, v0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    .line 292
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->H()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 293
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget v2, v2, Landroidx/d/c/b/a/g;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 294
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 295
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->Z()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    goto/16 :goto_5

    .line 300
    :cond_d
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-boolean v0, v0, Landroidx/d/c/b/a/g;->j:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v6, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v0, v6, :cond_10

    .line 301
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget v0, v0, Landroidx/d/c/b/e;->H:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 303
    :pswitch_0
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->an()Z

    move-result v0

    if-nez v0, :cond_11

    .line 304
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget v0, v0, Landroidx/d/c/b/e;->G:I

    if-ne v0, v5, :cond_e

    goto :goto_2

    .line 310
    :cond_e
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v0, v0, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    .line 311
    iget-object v6, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v6, v6, Landroidx/d/c/b/a/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, v0, Landroidx/d/c/b/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iput-boolean v3, v0, Landroidx/d/c/b/a/g;->b:Z

    .line 314
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 320
    :pswitch_1
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_2

    .line 324
    :cond_f
    iget-object v0, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v0, v0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    .line 325
    iget-object v6, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v6, v6, Landroidx/d/c/b/a/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, v0, Landroidx/d/c/b/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iput-boolean v3, v0, Landroidx/d/c/b/a/g;->b:Z

    .line 328
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_10
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {v0, p0}, Landroidx/d/c/b/a/g;->b(Landroidx/d/c/b/a/d;)V

    .line 338
    :cond_11
    :goto_2
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_13

    .line 339
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->an()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 340
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/d/c/b/d;->j()I

    move-result v1

    iput v1, v0, Landroidx/d/c/b/a/f;->f:I

    .line 341
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/d/c/b/d;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/d/c/b/a/f;->f:I

    goto :goto_3

    .line 343
    :cond_12
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    .line 344
    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v1

    .line 353
    invoke-virtual {v0, p0}, Landroidx/d/c/b/a/f;->b(Landroidx/d/c/b/a/d;)V

    .line 354
    invoke-virtual {v1, p0}, Landroidx/d/c/b/a/f;->b(Landroidx/d/c/b/a/d;)V

    .line 356
    sget-object v0, Landroidx/d/c/b/a/p$a;->d:Landroidx/d/c/b/a/p$a;

    iput-object v0, p0, Landroidx/d/c/b/a/n;->l:Landroidx/d/c/b/a/p$a;

    .line 358
    :goto_3
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 359
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    goto/16 :goto_4

    .line 361
    :cond_13
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    const/4 v6, 0x0

    if-eqz v0, :cond_15

    .line 362
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 364
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 365
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    .line 366
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 367
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    .line 369
    :cond_14
    iget-object v0, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_19

    .line 370
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->ac()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_19

    .line 371
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v0, v0, Landroidx/d/c/b/a/l;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_19

    .line 372
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v0, v0, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v1, v1, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iput-object p0, v0, Landroidx/d/c/b/a/g;->a:Landroidx/d/c/b/a/d;

    goto/16 :goto_4

    .line 379
    :cond_15
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    const/4 v4, -0x1

    if-eqz v0, :cond_16

    .line 380
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 382
    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 383
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v4, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    .line 384
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 385
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    goto/16 :goto_4

    .line 388
    :cond_16
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_17

    .line 389
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/d;)Landroidx/d/c/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 391
    iget-object v2, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 392
    iget-object v0, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v4, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    .line 393
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    goto :goto_4

    .line 397
    :cond_17
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    instance-of v0, v0, Landroidx/d/c/b/i;

    if-nez v0, :cond_19

    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 398
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    iget-object v0, v0, Landroidx/d/c/b/e;->m:Landroidx/d/c/b/a/n;

    iget-object v0, v0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    .line 399
    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v2}, Landroidx/d/c/b/e;->H()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;I)V

    .line 400
    iget-object v0, p0, Landroidx/d/c/b/a/n;->k:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    .line 401
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Y()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 402
    iget-object v0, p0, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->j:Landroidx/d/c/b/a/f;

    iget-object v2, p0, Landroidx/d/c/b/a/n;->b:Landroidx/d/c/b/a/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/d/c/b/a/n;->a(Landroidx/d/c/b/a/f;Landroidx/d/c/b/a/f;ILandroidx/d/c/b/a/g;)V

    .line 404
    :cond_18
    iget-object v0, p0, Landroidx/d/c/b/a/n;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_19

    .line 405
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->ac()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_19

    .line 406
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v0, v0, Landroidx/d/c/b/a/l;->f:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_19

    .line 407
    iget-object v0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v0, v0, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v0, v0, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->l:Landroidx/d/c/b/a/l;

    iget-object v1, v1, Landroidx/d/c/b/a/l;->g:Landroidx/d/c/b/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iput-object p0, v0, Landroidx/d/c/b/a/g;->a:Landroidx/d/c/b/a/d;

    .line 417
    :cond_19
    :goto_4
    iget-object v0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iget-object v0, v0, Landroidx/d/c/b/a/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 418
    iget-object p0, p0, Landroidx/d/c/b/a/n;->g:Landroidx/d/c/b/a/g;

    iput-boolean v3, p0, Landroidx/d/c/b/a/g;->c:Z

    :cond_1a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/c/b/a/n;->d:Landroidx/d/c/b/e;

    invoke-virtual {p0}, Landroidx/d/c/b/e;->F()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
