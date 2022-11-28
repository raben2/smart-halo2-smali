.class Lcom/instabug/crash/CrashPlugin$a;
.super Ljava/lang/Object;
.source "CrashPlugin.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/crash/CrashPlugin;->getSDKEventSubscriber()Lio/reactivex/disposables/Disposable;
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
.field final synthetic a:Lcom/instabug/crash/CrashPlugin;


# direct methods
.method constructor <init>(Lcom/instabug/crash/CrashPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, -0x11531bc3

    if-eq v1, v4, :cond_2

    const v4, 0x36ebcb

    if-eq v1, v4, :cond_1

    const v4, 0x6de15a2e

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "features"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-virtual {p1}, Lcom/instabug/crash/CrashPlugin;->isAnrEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-static {p1}, Lcom/instabug/crash/CrashPlugin;->access$200(Lcom/instabug/crash/CrashPlugin;)La/a/a/b;

    move-result-object p1

    if-nez p1, :cond_a

    .line 22
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-virtual {p1}, Lcom/instabug/crash/CrashPlugin;->startAnrDetection()V

    goto :goto_2

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-static {p1}, Lcom/instabug/crash/CrashPlugin;->access$200(Lcom/instabug/crash/CrashPlugin;)La/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-static {p1}, Lcom/instabug/crash/CrashPlugin;->access$200(Lcom/instabug/crash/CrashPlugin;)La/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/b;->interrupt()V

    .line 27
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/crash/CrashPlugin;->access$202(Lcom/instabug/crash/CrashPlugin;La/a/a/b;)La/a/a/b;

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    invoke-static {}, Lcom/instabug/crash/f/a;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-static {p1}, Lcom/instabug/crash/CrashPlugin;->access$000(Lcom/instabug/crash/CrashPlugin;)V

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-virtual {p1}, Lcom/instabug/crash/CrashPlugin;->isAnrEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 33
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-static {p1}, Lcom/instabug/crash/CrashPlugin;->access$100(Lcom/instabug/crash/CrashPlugin;)V

    goto :goto_2

    .line 34
    :cond_9
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "logged_out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 35
    iget-object p1, p0, Lcom/instabug/crash/CrashPlugin$a;->a:Lcom/instabug/crash/CrashPlugin;

    invoke-virtual {p1}, Lcom/instabug/crash/CrashPlugin;->clearUserActivities()V

    :cond_a
    :goto_2
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

    invoke-virtual {p0, p1}, Lcom/instabug/crash/CrashPlugin$a;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method
