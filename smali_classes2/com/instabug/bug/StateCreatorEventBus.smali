.class public Lcom/instabug/bug/StateCreatorEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "StateCreatorEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/model/State$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/bug/StateCreatorEventBus;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/bug/StateCreatorEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/StateCreatorEventBus;->instance:Lcom/instabug/bug/StateCreatorEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/bug/StateCreatorEventBus;

    invoke-direct {v0}, Lcom/instabug/bug/StateCreatorEventBus;-><init>()V

    sput-object v0, Lcom/instabug/bug/StateCreatorEventBus;->instance:Lcom/instabug/bug/StateCreatorEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/bug/StateCreatorEventBus;->instance:Lcom/instabug/bug/StateCreatorEventBus;

    return-object v0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/bug/StateCreatorEventBus;->instance:Lcom/instabug/bug/StateCreatorEventBus;

    return-void
.end method
