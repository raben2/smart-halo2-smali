.class Lcom/instabug/library/invocation/InvocationManager$a;
.super Ljava/lang/Object;
.source "InvocationManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/InvocationManager;->subscribeToCarenActivityLifeCycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/tracking/ActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/InvocationManager;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/InvocationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/InvocationManager$a;->a:Lcom/instabug/library/invocation/InvocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/invocation/InvocationManager$c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "InvocationManager"

    const-string v0, "current activity paused"

    .line 7
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/library/invocation/InvocationManager$a;->a:Lcom/instabug/library/invocation/InvocationManager;

    invoke-virtual {p1}, Lcom/instabug/library/invocation/InvocationManager;->sleep()V

    goto :goto_0

    :cond_1
    const-string p1, "InvocationManager"

    const-string v0, "current activity resumed"

    .line 9
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/invocation/InvocationManager$a;->a:Lcom/instabug/library/invocation/InvocationManager;

    invoke-virtual {p1}, Lcom/instabug/library/invocation/InvocationManager;->listen()V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/InvocationManager$a;->a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V

    return-void
.end method
