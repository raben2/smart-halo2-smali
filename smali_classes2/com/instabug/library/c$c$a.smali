.class Lcom/instabug/library/c$c$a;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c$c;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

.field final synthetic b:Lcom/instabug/library/c$c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c$c;Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$c$a;->b:Lcom/instabug/library/c$c;

    iput-object p2, p0, Lcom/instabug/library/c$c$a;->a:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$c$a;->b:Lcom/instabug/library/c$c;

    iget-object v1, v0, Lcom/instabug/library/c$c;->b:Lcom/instabug/library/c;

    iget-object v2, p0, Lcom/instabug/library/c$c$a;->a:Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    iget-object v0, v0, Lcom/instabug/library/c$c;->a:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-static {v1, v2, v0}, Lcom/instabug/library/c;->a(Lcom/instabug/library/c;Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/c$c$a;->b:Lcom/instabug/library/c$c;

    iget-object v0, v0, Lcom/instabug/library/c$c;->b:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->f(Lcom/instabug/library/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
