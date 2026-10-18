.class public Landroidx/appcompat/app/q$b;
.super Landroidx/appcompat/app/a$f;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/app/q;

.field private c:Landroidx/appcompat/app/a$g;

.field private d:Ljava/lang/Object;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/q;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    invoke-direct {p0}, Landroidx/appcompat/app/a$f;-><init>()V

    const/4 p1, -0x1

    .line 1166
    iput p1, p0, Landroidx/appcompat/app/q$b;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1217
    iget p0, p0, Landroidx/appcompat/app/q$b;->h:I

    return p0
.end method

.method public a(I)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1240
    iget-object v0, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object v0, v0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q$b;->a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$f;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1231
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->e:Landroid/graphics/drawable/Drawable;

    .line 1232
    iget p1, p0, Landroidx/appcompat/app/q$b;->h:I

    if-ltz p1, :cond_0

    .line 1233
    iget-object p1, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    iget v0, p0, Landroidx/appcompat/app/q$b;->h:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ar;->c(I)V

    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1197
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->i:Landroid/view/View;

    .line 1198
    iget p1, p0, Landroidx/appcompat/app/q$b;->h:I

    if-ltz p1, :cond_0

    .line 1199
    iget-object p1, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    iget v0, p0, Landroidx/appcompat/app/q$b;->h:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ar;->c(I)V

    :cond_0
    return-object p0
.end method

.method public a(Landroidx/appcompat/app/a$g;)Landroidx/appcompat/app/a$f;
    .locals 0

    .line 1186
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->c:Landroidx/appcompat/app/a$g;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1245
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->f:Ljava/lang/CharSequence;

    .line 1246
    iget p1, p0, Landroidx/appcompat/app/q$b;->h:I

    if-ltz p1, :cond_0

    .line 1247
    iget-object p1, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    iget v0, p0, Landroidx/appcompat/app/q$b;->h:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ar;->c(I)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Landroidx/appcompat/app/a$f;
    .locals 0

    .line 1176
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1212
    iget-object p0, p0, Landroidx/appcompat/app/q$b;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(I)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1254
    iget-object v0, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object v0, v0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q$b;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$f;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1269
    iput-object p1, p0, Landroidx/appcompat/app/q$b;->g:Ljava/lang/CharSequence;

    .line 1270
    iget p1, p0, Landroidx/appcompat/app/q$b;->h:I

    if-ltz p1, :cond_0

    .line 1271
    iget-object p1, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    iget v0, p0, Landroidx/appcompat/app/q$b;->h:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ar;->c(I)V

    :cond_0
    return-object p0
.end method

.method public c(I)Landroidx/appcompat/app/a$f;
    .locals 2

    .line 1206
    iget-object v0, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    invoke-virtual {v0}, Landroidx/appcompat/app/q;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 1207
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1206
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q$b;->a(Landroid/view/View;)Landroidx/appcompat/app/a$f;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0

    .line 1226
    iget-object p0, p0, Landroidx/appcompat/app/q$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d()Landroid/view/View;
    .locals 0

    .line 1192
    iget-object p0, p0, Landroidx/appcompat/app/q$b;->i:Landroid/view/View;

    return-object p0
.end method

.method public d(I)Landroidx/appcompat/app/a$f;
    .locals 1

    .line 1264
    iget-object v0, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    iget-object v0, v0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q$b;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$f;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    .line 1171
    iget-object p0, p0, Landroidx/appcompat/app/q$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public e(I)V
    .locals 0

    .line 1221
    iput p1, p0, Landroidx/appcompat/app/q$b;->h:I

    return-void
.end method

.method public f()V
    .locals 1

    .line 1259
    iget-object v0, p0, Landroidx/appcompat/app/q$b;->b:Landroidx/appcompat/app/q;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    return-void
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 0

    .line 1278
    iget-object p0, p0, Landroidx/appcompat/app/q$b;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h()Landroidx/appcompat/app/a$g;
    .locals 0

    .line 1181
    iget-object p0, p0, Landroidx/appcompat/app/q$b;->c:Landroidx/appcompat/app/a$g;

    return-object p0
.end method
