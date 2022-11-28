.class public Lcom/instabug/library/invocation/InvocationSettings;
.super Ljava/lang/Object;
.source "InvocationSettings.java"


# static fields
.field public static final SHAKE_DEFAULT_THRESHOLD:I = 0x28a


# instance fields
.field private floatingButtonParams:Lcom/instabug/library/invocation/d/b$g;

.field private shakeThreshold:I

.field private videoRecordingButtonPosition:Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;->BOTTOM_RIGHT:Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->videoRecordingButtonPosition:Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;

    const/16 v0, 0x28a

    .line 5
    iput v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->shakeThreshold:I

    .line 8
    new-instance v0, Lcom/instabug/library/invocation/d/b$g;

    invoke-direct {v0}, Lcom/instabug/library/invocation/d/b$g;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->floatingButtonParams:Lcom/instabug/library/invocation/d/b$g;

    return-void
.end method

.method private refreshButton()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvokers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvokers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 3
    instance-of v2, v1, Lcom/instabug/library/invocation/d/b;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/instabug/library/invocation/d/b;

    invoke-virtual {v1}, Lcom/instabug/library/invocation/d/b;->e()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFloatingButtonParams()Lcom/instabug/library/invocation/d/b$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->floatingButtonParams:Lcom/instabug/library/invocation/d/b$g;

    return-object v0
.end method

.method getShakeThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->shakeThreshold:I

    return v0
.end method

.method public getVideoRecordingButtonPosition()Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->videoRecordingButtonPosition:Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;

    return-object v0
.end method

.method public setFloatingButtonEdge(Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->floatingButtonParams:Lcom/instabug/library/invocation/d/b$g;

    iput-object p1, v0, Lcom/instabug/library/invocation/d/b$g;->a:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    .line 4
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/instabug/library/invocation/InvocationSettings;->refreshButton()V

    :cond_0
    return-void
.end method

.method public setFloatingButtonOffsetFromTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationSettings;->floatingButtonParams:Lcom/instabug/library/invocation/d/b$g;

    iput p1, v0, Lcom/instabug/library/invocation/d/b$g;->b:I

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/InvocationSettings;->refreshButton()V

    return-void
.end method

.method public setShakingThreshold(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 1
    iput p1, p0, Lcom/instabug/library/invocation/InvocationSettings;->shakeThreshold:I

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvokers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 5
    instance-of v2, v1, Lcom/instabug/library/invocation/d/f;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/instabug/library/invocation/d/f;

    invoke-virtual {v1, p1}, Lcom/instabug/library/invocation/d/f;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoRecordingButtonPosition(Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/InvocationSettings;->videoRecordingButtonPosition:Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;

    return-void
.end method
