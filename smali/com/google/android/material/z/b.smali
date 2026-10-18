.class Lcom/google/android/material/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/material/z/a;

.field private static final b:Lcom/google/android/material/z/a;

.field private static final c:Lcom/google/android/material/z/a;

.field private static final d:Lcom/google/android/material/z/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/material/z/b$1;

    invoke-direct {v0}, Lcom/google/android/material/z/b$1;-><init>()V

    sput-object v0, Lcom/google/android/material/z/b;->a:Lcom/google/android/material/z/a;

    .line 40
    new-instance v0, Lcom/google/android/material/z/b$2;

    invoke-direct {v0}, Lcom/google/android/material/z/b$2;-><init>()V

    sput-object v0, Lcom/google/android/material/z/b;->b:Lcom/google/android/material/z/a;

    .line 51
    new-instance v0, Lcom/google/android/material/z/b$3;

    invoke-direct {v0}, Lcom/google/android/material/z/b$3;-><init>()V

    sput-object v0, Lcom/google/android/material/z/b;->c:Lcom/google/android/material/z/a;

    .line 62
    new-instance v0, Lcom/google/android/material/z/b$4;

    invoke-direct {v0}, Lcom/google/android/material/z/b$4;-><init>()V

    sput-object v0, Lcom/google/android/material/z/b;->d:Lcom/google/android/material/z/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IZ)Lcom/google/android/material/z/a;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid fade mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :pswitch_0
    sget-object p0, Lcom/google/android/material/z/b;->d:Lcom/google/android/material/z/a;

    return-object p0

    .line 83
    :pswitch_1
    sget-object p0, Lcom/google/android/material/z/b;->c:Lcom/google/android/material/z/a;

    return-object p0

    :pswitch_2
    if-eqz p1, :cond_0

    .line 81
    sget-object p0, Lcom/google/android/material/z/b;->b:Lcom/google/android/material/z/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/material/z/b;->a:Lcom/google/android/material/z/a;

    :goto_0
    return-object p0

    :pswitch_3
    if-eqz p1, :cond_1

    .line 79
    sget-object p0, Lcom/google/android/material/z/b;->a:Lcom/google/android/material/z/a;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/google/android/material/z/b;->b:Lcom/google/android/material/z/a;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
