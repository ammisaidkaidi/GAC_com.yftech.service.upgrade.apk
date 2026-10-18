.class public Lcom/google/android/material/internal/j;
.super Landroidx/appcompat/view/menu/s;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/h;Landroidx/appcompat/view/menu/j;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/j;)V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s;->c(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/internal/j;->u()Landroid/view/Menu;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-void
.end method
