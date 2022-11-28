.class public Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "ScreenCaptureEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/model/f;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->INSTANCE:Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    invoke-direct {v0}, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;-><init>()V

    sput-object v0, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->INSTANCE:Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->INSTANCE:Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    return-object v0
.end method
