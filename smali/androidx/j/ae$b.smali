.class abstract Landroidx/j/ae$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/j/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/j/ae$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/j/ae$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method
