.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;
.super Ljava/lang/Object;
.source "SDKCoreEventPublisher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;->getInstance()Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
