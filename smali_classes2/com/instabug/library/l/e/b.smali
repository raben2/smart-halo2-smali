.class public abstract Lcom/instabug/library/l/e/b;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/instabug/library/l/e/a;Lcom/instabug/library/l/e/d;)Lcom/instabug/library/l/e/b;
    .locals 1
    .param p0    # Lcom/instabug/library/l/e/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/library/l/e/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/l/e/c;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/l/e/c;-><init>(Lcom/instabug/library/l/e/a;Lcom/instabug/library/l/e/d;)V

    return-object v0
.end method
