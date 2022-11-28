.class public Lcom/instabug/library/core/eventbus/UserEventsEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "UserEventsEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/user/UserEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/library/core/eventbus/UserEventsEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/instabug/library/core/eventbus/UserEventsEventBus;
    .locals 2

    const-class v0, Lcom/instabug/library/core/eventbus/UserEventsEventBus;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->instance:Lcom/instabug/library/core/eventbus/UserEventsEventBus;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/core/eventbus/UserEventsEventBus;

    invoke-direct {v1}, Lcom/instabug/library/core/eventbus/UserEventsEventBus;-><init>()V

    sput-object v1, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->instance:Lcom/instabug/library/core/eventbus/UserEventsEventBus;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/core/eventbus/UserEventsEventBus;->instance:Lcom/instabug/library/core/eventbus/UserEventsEventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
