.class public final Landroidx/core/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroidx/core/i/f;


# instance fields
.field private b:Landroidx/core/i/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Landroidx/core/i/f;->a([Ljava/util/Locale;)Landroidx/core/i/f;

    move-result-object v0

    sput-object v0, Landroidx/core/i/f;->a:Landroidx/core/i/f;

    return-void
.end method

.method private constructor <init>(Landroidx/core/i/h;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    return-void
.end method

.method public static a(Landroid/os/LocaleList;)Landroidx/core/i/f;
    .locals 2
    .param p0    # Landroid/os/LocaleList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x18
    .end annotation

    .line 55
    new-instance v0, Landroidx/core/i/f;

    new-instance v1, Landroidx/core/i/i;

    invoke-direct {v1, p0}, Landroidx/core/i/i;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v0, v1}, Landroidx/core/i/f;-><init>(Landroidx/core/i/h;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Landroidx/core/i/f;
    .locals 0
    .annotation build Landroidx/annotation/am;
        a = 0x18
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    check-cast p0, Landroid/os/LocaleList;

    invoke-static {p0}, Landroidx/core/i/f;->a(Landroid/os/LocaleList;)Landroidx/core/i/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroidx/core/i/f;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p0, :cond_3

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ","

    const/4 v1, -0x1

    .line 161
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 162
    array-length v0, p0

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 163
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 164
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 165
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    goto :goto_1

    .line 166
    :cond_1
    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/i/f;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {v0}, Landroidx/core/i/f;->a([Ljava/util/Locale;)Landroidx/core/i/f;

    move-result-object p0

    return-object p0

    .line 159
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/core/i/f;->e()Landroidx/core/i/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/util/Locale;)Landroidx/core/i/f;
    .locals 2
    .param p0    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 74
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-static {v0}, Landroidx/core/i/f;->a(Landroid/os/LocaleList;)Landroidx/core/i/f;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Landroidx/core/i/f;

    new-instance v1, Landroidx/core/i/g;

    invoke-direct {v1, p0}, Landroidx/core/i/g;-><init>([Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Landroidx/core/i/f;-><init>(Landroidx/core/i/h;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    const-string v0, "-"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string v0, "-"

    .line 175
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 176
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 177
    new-instance p0, Ljava/util/Locale;

    aget-object v1, v0, v3

    aget-object v3, v0, v4

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 178
    :cond_0
    array-length v1, v0

    if-le v1, v4, :cond_1

    .line 179
    new-instance p0, Ljava/util/Locale;

    aget-object v1, v0, v3

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 180
    :cond_1
    array-length v1, v0

    if-ne v1, v4, :cond_5

    .line 181
    new-instance p0, Ljava/util/Locale;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string v0, "_"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_"

    .line 184
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 185
    array-length v1, v0

    if-le v1, v2, :cond_3

    .line 186
    new-instance p0, Ljava/util/Locale;

    aget-object v1, v0, v3

    aget-object v3, v0, v4

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 187
    :cond_3
    array-length v1, v0

    if-le v1, v4, :cond_4

    .line 188
    new-instance p0, Ljava/util/Locale;

    aget-object v1, v0, v3

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 189
    :cond_4
    array-length v1, v0

    if-ne v1, v4, :cond_5

    .line 190
    new-instance p0, Ljava/util/Locale;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 196
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not parse language tag: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_6
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Landroidx/core/i/f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 145
    sget-object v0, Landroidx/core/i/f;->a:Landroidx/core/i/f;

    return-object v0
.end method

.method public static f()Landroidx/core/i/f;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/aq;
        b = 0x1L
    .end annotation

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 206
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/i/f;->a(Landroid/os/LocaleList;)Landroidx/core/i/f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 208
    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/i/f;->a([Ljava/util/Locale;)Landroidx/core/i/f;

    move-result-object v0

    return-object v0
.end method

.method public static g()Landroidx/core/i/f;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/aq;
        b = 0x1L
    .end annotation

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 226
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/i/f;->a(Landroid/os/LocaleList;)Landroidx/core/i/f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 228
    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/i/f;->a([Ljava/util/Locale;)Landroidx/core/i/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Locale;)I
    .locals 0
    .annotation build Landroidx/annotation/z;
        a = -0x1L
    .end annotation

    .line 117
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0, p1}, Landroidx/core/i/h;->a(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public a()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 65
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0}, Landroidx/core/i/h;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Ljava/util/Locale;
    .locals 0

    .line 86
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0, p1}, Landroidx/core/i/h;->a(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public a([Ljava/lang/String;)Ljava/util/Locale;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 137
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0, p1}, Landroidx/core/i/h;->a([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0}, Landroidx/core/i/h;->b()Z

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/z;
        a = 0x0L
    .end annotation

    .line 104
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0}, Landroidx/core/i/h;->c()I

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 125
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-interface {p0}, Landroidx/core/i/h;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 234
    instance-of v0, p1, Landroidx/core/i/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    check-cast p1, Landroidx/core/i/f;

    iget-object p1, p1, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 239
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/core/i/f;->b:Landroidx/core/i/h;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
