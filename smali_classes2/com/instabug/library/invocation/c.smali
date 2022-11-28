.class public final Lcom/instabug/library/invocation/c;
.super Ljava/lang/Object;
.source "InvocationUtils.java"


# direct methods
.method public static a(II)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvokers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 4
    instance-of v2, v1, Lcom/instabug/library/invocation/d/b;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/instabug/library/invocation/d/b;

    .line 6
    invoke-virtual {v1}, Lcom/instabug/library/invocation/d/b;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
