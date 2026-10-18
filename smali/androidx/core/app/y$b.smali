.class public Landroidx/core/app/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "IntentReader"


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final c:Landroid/content/Intent;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final e:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    invoke-static {p1}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/core/app/y$b;->b:Landroid/content/Context;

    .line 746
    invoke-static {p2}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    .line 747
    invoke-static {p2}, Landroidx/core/app/y;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/y$b;->d:Ljava/lang/String;

    .line 748
    invoke-static {p2}, Landroidx/core/app/y;->b(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/y$b;->e:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroidx/core/app/y$b;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 728
    invoke-static {p0}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/app/y$b;->a(Landroid/content/Context;Landroid/content/Intent;)Landroidx/core/app/y$b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Landroidx/core/app/y$b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 741
    new-instance v0, Landroidx/core/app/y$b;

    invoke-direct {v0, p0, p1}, Landroidx/core/app/y$b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_7

    .line 842
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const-string v0, "&lt;"

    .line 845
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    const-string v0, "&gt;"

    .line 847
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    const-string v0, "&amp;"

    .line 849
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_6

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_5

    :goto_1
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_4

    .line 853
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_4

    const-string p2, "&nbsp;"

    .line 854
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v0

    goto :goto_1

    .line 858
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 860
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_2
    const-string v1, "&#"

    .line 851
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public a(I)Landroid/net/Uri;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 892
    iget-object v0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/y$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    .line 895
    :cond_0
    iget-object v0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 896
    iget-object p0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 899
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    .line 901
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream items available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/app/y$b;->h()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " index requested: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    .line 760
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.SEND"

    .line 761
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b()Z
    .locals 1

    const-string v0, "android.intent.action.SEND"

    .line 773
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 784
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 795
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 806
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 821
    iget-object v0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 823
    invoke-virtual {p0}, Landroidx/core/app/y$b;->e()Ljava/lang/CharSequence;

    move-result-object p0

    .line 824
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 825
    check-cast p0, Landroid/text/Spanned;

    invoke-static {p0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 828
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 831
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Landroidx/core/app/y$b;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 878
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public h()I
    .locals 2

    .line 913
    iget-object v0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/y$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    .line 916
    :cond_0
    iget-object v0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 917
    iget-object p0, p0, Landroidx/core/app/y$b;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 919
    :cond_1
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public i()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 930
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 941
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 952
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 963
    iget-object p0, p0, Landroidx/core/app/y$b;->c:Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 982
    iget-object p0, p0, Landroidx/core/app/y$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public n()Landroid/content/ComponentName;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1001
    iget-object p0, p0, Landroidx/core/app/y$b;->e:Landroid/content/ComponentName;

    return-object p0
.end method

.method public o()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1016
    iget-object v0, p0, Landroidx/core/app/y$b;->e:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1018
    :cond_0
    iget-object v0, p0, Landroidx/core/app/y$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1020
    :try_start_0
    iget-object p0, p0, Landroidx/core/app/y$b;->e:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IntentReader"

    const-string v2, "Could not retrieve icon for calling activity"

    .line 1022
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public p()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1039
    iget-object v0, p0, Landroidx/core/app/y$b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1041
    :cond_0
    iget-object v0, p0, Landroidx/core/app/y$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1043
    :try_start_0
    iget-object p0, p0, Landroidx/core/app/y$b;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IntentReader"

    const-string v2, "Could not retrieve icon for calling application"

    .line 1045
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1062
    iget-object v0, p0, Landroidx/core/app/y$b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1064
    :cond_0
    iget-object v0, p0, Landroidx/core/app/y$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1066
    :try_start_0
    iget-object p0, p0, Landroidx/core/app/y$b;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IntentReader"

    const-string v2, "Could not retrieve label for calling application"

    .line 1068
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
