.class public Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "ChatTimeUpdatedEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;->instance:Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    invoke-direct {v0}, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;-><init>()V

    sput-object v0, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;->instance:Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;->instance:Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    return-object v0
.end method
