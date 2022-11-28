.class Lcom/instabug/library/Instabug$Builder$a;
.super Landroid/os/HandlerThread;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/Instabug$Builder;->build(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c;

.field final synthetic b:Z

.field final synthetic c:Lcom/instabug/library/Instabug$Builder;


# direct methods
.method constructor <init>(Lcom/instabug/library/Instabug$Builder;Ljava/lang/String;Lcom/instabug/library/c;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    iput-object p3, p0, Lcom/instabug/library/Instabug$Builder$a;->a:Lcom/instabug/library/c;

    iput-boolean p4, p0, Lcom/instabug/library/Instabug$Builder$a;->b:Z

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "STRICT_MODE_VIOLATION"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder$a;->a:Lcom/instabug/library/c;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    invoke-static {v1}, Lcom/instabug/library/Instabug$Builder;->access$200(Lcom/instabug/library/Instabug$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/c;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder$a;->a:Lcom/instabug/library/c;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    invoke-static {v1}, Lcom/instabug/library/Instabug$Builder;->access$200(Lcom/instabug/library/Instabug$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/c;->b(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder$a;->a:Lcom/instabug/library/c;

    invoke-virtual {v0}, Lcom/instabug/library/c;->h()V

    .line 5
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    invoke-static {v1}, Lcom/instabug/library/Instabug$Builder;->access$300(Lcom/instabug/library/Instabug$Builder;)Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/InvocationSettings;->setFloatingButtonEdge(Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->notifyPrimaryColorChanged()V

    .line 7
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    invoke-static {v1}, Lcom/instabug/library/Instabug$Builder;->access$400(Lcom/instabug/library/Instabug$Builder;)[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/InvocationManager;->setInstabugInvocationEvent([Lcom/instabug/library/invocation/InstabugInvocationEvent;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    invoke-static {v0}, Lcom/instabug/library/Instabug$Builder;->access$500(Lcom/instabug/library/Instabug$Builder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    .line 10
    invoke-static {v1}, Lcom/instabug/library/Instabug$Builder;->access$500(Lcom/instabug/library/Instabug$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/InvocationSettings;->setFloatingButtonOffsetFromTop(I)V

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/instabug/library/Instabug$Builder$a;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/instabug/library/InstabugState;->DISABLED:Lcom/instabug/library/InstabugState;

    :goto_0
    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    .line 14
    new-instance v0, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    const-string v1, "sdk_state"

    const-string v2, "built"

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventPublisher;->post(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    .line 16
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder$a;->c:Lcom/instabug/library/Instabug$Builder;

    iget-boolean v1, p0, Lcom/instabug/library/Instabug$Builder$a;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/Instabug$Builder;->access$600(Lcom/instabug/library/Instabug$Builder;Ljava/lang/Boolean;)V

    const-string v0, "Instabug"

    const-string v1, "Built"

    .line 17
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
