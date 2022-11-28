.class Lcom/instabug/library/c$c;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->a(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

.field final synthetic b:Lcom/instabug/library/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$c;->b:Lcom/instabug/library/c;

    iput-object p2, p0, Lcom/instabug/library/c$c;->a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$c;->b:Lcom/instabug/library/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/instabug/library/c;->a(Lcom/instabug/library/c;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2
    iget-object v0, p0, Lcom/instabug/library/c$c;->b:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->f(Lcom/instabug/library/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/c$c$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/c$c$a;-><init>(Lcom/instabug/library/c$c;Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
    check-cast p1, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/library/c$c;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method
