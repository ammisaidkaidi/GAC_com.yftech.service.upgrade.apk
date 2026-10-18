.class public final Landroidx/core/b/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/b/h$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Landroidx/core/b/h$a;


# instance fields
.field private final b:Landroidx/core/b/h$a$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroidx/core/b/h$a$a;

    invoke-direct {v0}, Landroidx/core/b/h$a$a;-><init>()V

    iput-object v0, p0, Landroidx/core/b/h$a;->b:Landroidx/core/b/h$a$a;

    return-void
.end method

.method public static a()Landroidx/core/b/h$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    sget-object v0, Landroidx/core/b/h$a;->a:Landroidx/core/b/h$a;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroidx/core/b/h$a;

    invoke-direct {v0}, Landroidx/core/b/h$a;-><init>()V

    sput-object v0, Landroidx/core/b/h$a;->a:Landroidx/core/b/h$a;

    .line 69
    :cond_0
    sget-object v0, Landroidx/core/b/h$a;->a:Landroidx/core/b/h$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    iget-object p0, p0, Landroidx/core/b/h$a;->b:Landroidx/core/b/h$a$a;

    invoke-virtual {p0, p1}, Landroidx/core/b/h$a$a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
