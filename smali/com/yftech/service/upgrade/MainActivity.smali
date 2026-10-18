.class public Lcom/yftech/service/upgrade/MainActivity;
.super Landroidx/appcompat/app/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/service/upgrade/MainActivity$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "/sdcard"


# instance fields
.field private A:Lcom/yftech/service/upgrade/MainActivity$a;

.field private B:Landroid/os/Handler;

.field private C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private q:Landroid/widget/CheckBox;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/CheckBox;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/CheckBox;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/CheckBox;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/e;-><init>()V

    .line 34
    new-instance v0, Lcom/yftech/service/upgrade/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/yftech/service/upgrade/MainActivity$a;-><init>(Lcom/yftech/service/upgrade/MainActivity;)V

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->B:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/yftech/service/upgrade/MainActivity;->D:Z

    return-void
.end method

.method private a(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/service/upgrade/MainActivity;->i(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/service/upgrade/MainActivity;->h(I)V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/service/upgrade/MainActivity;->f(I)V

    goto :goto_0

    .line 172
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/service/upgrade/MainActivity;->g(I)V

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->d(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/MainActivity;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/MainActivity;->b(II)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateUpgradeProgress, unknown module:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->x:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->v:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->r:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->t:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/yftech/service/upgrade/MainActivity;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/MainActivity;->a(II)V

    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 163
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->y:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private f(I)V
    .locals 1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    const-string p1, "mcu unknown state\n"

    .line 213
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "mcu upgrading\n"

    .line 210
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "mcu request upgrade\n"

    .line 203
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "mcu checking\n"

    .line 193
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "mcu copying\n"

    .line 196
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "mcu upgrade start\n"

    .line 190
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "mcu upgrade fail\n\n"

    .line 199
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    const-string p1, "mcu upgrade success\n\n"

    .line 206
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p1, "os unknown state\n"

    .line 241
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "os upgrading\n"

    .line 238
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "os checking\n"

    .line 221
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "os copying\n"

    .line 224
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "os upgrade start\n"

    .line 231
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "os upgrade fail\n\n"

    .line 227
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    const-string p1, "os upgrade success\n\n"

    .line 234
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    const-string p1, "screen unkown state\n"

    .line 272
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "screen upgrading\n"

    .line 269
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "screen request upgrade\n"

    .line 259
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "screen checking\n"

    .line 249
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "screen copying\n"

    .line 252
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "screen upgrade start\n"

    .line 262
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "screen upgrade fail\n\n"

    .line 255
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    const-string p1, "screen upgrade success\n\n"

    .line 265
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 266
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(I)V
    .locals 1

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const-string p1, "dsp unknown state\n"

    .line 303
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "dsp upgrading\n"

    .line 300
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "dsp request upgrade\n"

    .line 290
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "dsp checking\n"

    .line 280
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "dsp copying\n"

    .line 283
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "dsp upgrade start\n"

    .line 293
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "dsp upgrade fail\n\n"

    .line 286
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    const-string p1, "dsp upgrade success\n\n"

    .line 296
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->a(Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private s()V
    .locals 1

    const v0, 0x7f08005c

    .line 48
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    const v0, 0x7f080171

    .line 49
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f08005d

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    const v0, 0x7f080172

    .line 51
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f08005e

    .line 52
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    const v0, 0x7f080173

    .line 53
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f08005b

    .line 54
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    const v0, 0x7f080170

    .line 55
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f080057

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->y:Landroid/widget/Button;

    const v0, 0x7f080174

    .line 57
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->z:Landroid/widget/TextView;

    return-void
.end method

.method private t()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private u()V
    .locals 6

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/yftech/service/upgrade/MainActivity;->D:Z

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/MainActivity;->d(Z)V

    .line 71
    invoke-direct {p0}, Lcom/yftech/service/upgrade/MainActivity;->v()V

    .line 72
    iget-object v2, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 74
    iget-object v2, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v2

    const-string v3, "/sdcard"

    invoke-virtual {v2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addMCUUpgradeModule(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpgrade, add mcu fail, error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->B:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarMCUUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    .line 81
    iget-object v2, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    .line 84
    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    const-string v4, "/sdcard"

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addOSUpgradeModule(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpgrade, add os fail, error code:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    iget-object v5, p0, Lcom/yftech/service/upgrade/MainActivity;->B:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarOSUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    .line 91
    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 94
    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    const-string v4, "/sdcard"

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addScreenUpgradeModule(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpgrade, add screen fail, error code:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    move v2, v1

    goto :goto_2

    .line 100
    :cond_4
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    iget-object v5, p0, Lcom/yftech/service/upgrade/MainActivity;->B:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarScreenUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    .line 101
    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    .line 104
    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    const-string v4, "/sdcard"

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addDSPUpgradeModule(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpgrade, add dsp fail, error code:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    move v2, v1

    goto :goto_3

    .line 110
    :cond_6
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    iget-object v5, p0, Lcom/yftech/service/upgrade/MainActivity;->B:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarDSPUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    .line 111
    iget-object v3, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 116
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->startUpgrade()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v2, "startUpgrade, start fail"

    .line 117
    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    move v2, v1

    :cond_8
    if-eqz v2, :cond_9

    .line 123
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->z:Landroid/widget/TextView;

    const-string v0, "start upgrade\n"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 125
    :cond_9
    iget-object v2, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 140
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeDSPUpgradeModule()I

    .line 141
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarDSPUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_4

    .line 136
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeScreenUpgradeModule()I

    .line 137
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarScreenUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_4

    .line 128
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeMCUUpgradeModule()I

    .line 129
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarMCUUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_4

    .line 132
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeOSUpgradeModule()I

    .line 133
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/service/upgrade/MainActivity;->A:Lcom/yftech/service/upgrade/MainActivity$a;

    invoke-virtual {v3, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarOSUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_4

    .line 147
    :cond_a
    iget-object v2, p0, Lcom/yftech/service/upgrade/MainActivity;->C:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 148
    invoke-direct {p0, v0}, Lcom/yftech/service/upgrade/MainActivity;->d(Z)V

    .line 149
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->z:Landroid/widget/TextView;

    const-string v2, "start upgrade fail\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iput-boolean v1, p0, Lcom/yftech/service/upgrade/MainActivity;->D:Z

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/yftech/service/upgrade/MainActivity;->v:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->x:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 348
    iget-boolean v0, p0, Lcom/yftech/service/upgrade/MainActivity;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_9

    .line 354
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 364
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    or-int/2addr p2, v0

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    or-int/2addr p2, v0

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    or-int/2addr p2, v0

    goto :goto_0

    .line 368
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->q:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/yftech/service/upgrade/MainActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    or-int/2addr p2, v0

    .line 376
    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity;->y:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08005b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080057

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/yftech/service/upgrade/MainActivity;->u()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 42
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/MainActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/yftech/service/upgrade/MainActivity;->s()V

    .line 44
    invoke-direct {p0}, Lcom/yftech/service/upgrade/MainActivity;->t()V

    return-void
.end method
