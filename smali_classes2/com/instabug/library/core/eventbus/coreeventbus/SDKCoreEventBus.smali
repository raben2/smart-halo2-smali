.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "SDKCoreEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;->instance:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    invoke-direct {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;-><init>()V

    sput-object v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;->instance:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;->instance:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    return-object v0
.end method
