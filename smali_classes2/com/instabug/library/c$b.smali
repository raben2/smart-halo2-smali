.class Lcom/instabug/library/c$b;
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
    iput-object p1, p0, Lcom/instabug/library/c$b;->b:Lcom/instabug/library/c;

    iput-object p2, p0, Lcom/instabug/library/c$b;->a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "started"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/instabug/library/c$b;->b:Lcom/instabug/library/c;

    iget-object v0, p0, Lcom/instabug/library/c$b;->a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-static {p1, v0}, Lcom/instabug/library/c;->a(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/library/c$b;->b:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->e(Lcom/instabug/library/c;)V

    nop

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/instabug/library/c$b;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method
