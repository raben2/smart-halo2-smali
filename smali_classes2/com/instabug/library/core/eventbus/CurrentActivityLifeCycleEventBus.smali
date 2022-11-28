.class public Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "CurrentActivityLifeCycleEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/tracking/ActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->instance:Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    invoke-direct {v0}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;-><init>()V

    sput-object v0, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->instance:Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->instance:Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    return-object v0
.end method
