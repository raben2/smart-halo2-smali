.class public Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "ScreenRecordingEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/internal/video/ScreenRecordingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->instance:Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    invoke-direct {v0}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;-><init>()V

    sput-object v0, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->instance:Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->instance:Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    return-object v0
.end method
