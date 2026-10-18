.class public Landroidx/core/app/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field b:Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/app/v;)V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iget-object v0, p1, Landroidx/core/app/v;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/v$a;->a:Ljava/lang/CharSequence;

    .line 257
    iget-object v0, p1, Landroidx/core/app/v;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/v$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 258
    iget-object v0, p1, Landroidx/core/app/v;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/v$a;->c:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Landroidx/core/app/v;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/v$a;->d:Ljava/lang/String;

    .line 260
    iget-boolean v0, p1, Landroidx/core/app/v;->e:Z

    iput-boolean v0, p0, Landroidx/core/app/v$a;->e:Z

    .line 261
    iget-boolean p1, p1, Landroidx/core/app/v;->f:Z

    iput-boolean p1, p0, Landroidx/core/app/v$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/v$a;
    .locals 0
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 282
    iput-object p1, p0, Landroidx/core/app/v$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/v$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 270
    iput-object p1, p0, Landroidx/core/app/v$a;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/v$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 300
    iput-object p1, p0, Landroidx/core/app/v$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/v$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 321
    iput-boolean p1, p0, Landroidx/core/app/v$a;->e:Z

    return-object p0
.end method

.method public a()Landroidx/core/app/v;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 340
    new-instance v0, Landroidx/core/app/v;

    invoke-direct {v0, p0}, Landroidx/core/app/v;-><init>(Landroidx/core/app/v$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroidx/core/app/v$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 311
    iput-object p1, p0, Landroidx/core/app/v$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/v$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 333
    iput-boolean p1, p0, Landroidx/core/app/v$a;->f:Z

    return-object p0
.end method
