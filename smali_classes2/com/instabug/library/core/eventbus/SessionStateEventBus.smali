.class public Lcom/instabug/library/core/eventbus/SessionStateEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "SessionStateEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/model/session/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/library/core/eventbus/SessionStateEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->instance:Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    invoke-direct {v0}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;-><init>()V

    sput-object v0, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->instance:Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->instance:Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    return-object v0
.end method
