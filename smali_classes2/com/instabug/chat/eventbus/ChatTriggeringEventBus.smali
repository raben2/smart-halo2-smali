.class public Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "ChatTriggeringEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/chat/eventbus/a;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;->instance:Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    invoke-direct {v0}, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;-><init>()V

    sput-object v0, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;->instance:Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;->instance:Lcom/instabug/chat/eventbus/ChatTriggeringEventBus;

    return-object v0
.end method
