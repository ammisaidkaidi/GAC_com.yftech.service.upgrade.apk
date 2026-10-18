.class public interface abstract annotation Landroidx/annotation/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/x;
        a = ""
        b = 0x0
        c = true
        d = .enum Landroidx/annotation/x$c;->INFERRED:Landroidx/annotation/x$c;
        e = {}
        f = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/annotation/x$c;,
        Landroidx/annotation/x$b;,
        Landroidx/annotation/x$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract c()Z
.end method

.method public abstract d()Landroidx/annotation/x$c;
.end method

.method public abstract e()[Landroidx/annotation/x$a;
.end method

.method public abstract f()[Landroidx/annotation/x$b;
.end method
